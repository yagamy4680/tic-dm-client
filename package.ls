#!/usr/bin/env lsc -cj
#

# Known issue:
#   when executing the `package.ls` directly, there is always error
#   "/usr/bin/env: lsc -cj: No such file or directory", that is because `env`
#   doesn't allow space.
#
#   More details are discussed on StackOverflow:
#     http://stackoverflow.com/questions/3306518/cannot-pass-an-argument-to-python-with-usr-bin-env-python
#
#   The alternative solution is to add `envns` script to /usr/bin directory
#   to solve the _no space_ issue.
#
#   Or, you can simply type `lsc -cj package.ls` to generate `package.json`
#   quickly.
#

# package.json
#
name: \tic-dm-client

author:
  name: \yagamy
  email: \yagamy@t2t.io

description: 'Nodejs client library for Device Management Server in Tic (TicTacToe3)'

version: \0.0.1

repository:
  type: \git
  url: ''

engines:
  node: \4.4.x

main: \lib/client.js

scripts:
  build: """
    mkdir -p ./lib && \\
    cat src/client-nodejs.ls | node_modules/livescript/bin/lsc -cp > lib/client.js
  """

dependencies:
  colors: \*
  async: \*
  lodash: \*
  moment: \*
  yapps: \yagamy4680/yapps
  \socket.io-client : \*

devDependencies:
  livescript: \1.5.0

keywords: <[tic dm registry client library]>

license: \MIT
