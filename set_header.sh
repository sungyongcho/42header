#!/bin/bash
# ./set_header.sh

# Set variables

if [ ! -z "$USER_42" ]
then
    echo "USER_42=sucho" >> ~/.zshrc
    echo "export USER_42" >> ~/.zshrc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> ~/.zshrc
    echo "export GROUP" >> ~/.zshrc
fi

if [ ! -z "$MAIL_42" ]
then
    echo "MAIL_42="$USER_42@student.42seoul.kr"" >> ~/.zshrc
    echo "export MAIL_42" >> ~/.zshrc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp vim/stdheader.vim ~/.vim/plugin/

source ~/.zshrc
