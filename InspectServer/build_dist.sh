#!/usr/bin/env bash

dest=${1}
mkdir -p $dest

Tibet=/Users/scott/Desktop/shanggu/svn/Tibet
rm -rf ${dest}/*
cp -r ./etc ./src ${dest}

rsync -avl --exclude 'BlueEarth' --exclude 'iSmart' ${Tibet}/mantis ${dest}/src
