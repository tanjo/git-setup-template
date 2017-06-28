#!/bin/bash

if [ $# -ne 1 ]; then
  echo "引数は1個だけにしてください"
  exit 1
fi

if [ ! -d $1 ]; then
  echo "ディレクトリが存在しません" 1>&2
  exit 1
fi

if [ ! -f $1/.git/config ]; then
  echo ".git/config が存在しません" 1>&2
  exit 1
fi

# githubの設定をする
pushd $1 > /dev/null 2>&1
git config user.name "{{NAME}}"
git config user.email "{{EMAIL}}"
popd > /dev/null 2>&1
exit 0
