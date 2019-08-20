#! /bin/bash

echo -e "Creating backup & creating symlinks to new dotfiles..."

cd ~/.dotfiles/config
for file in *; do
  echo "~/.$file"
  if [ -s ~/.$file ]; then mv ~/.$file ~/.$file.bkp; fi
  ln -s ~/.dotfiles/config/$file ~/.$file
done

mv ~/.profile ~/.profile.bkp
ln -s ~/.dotfiles/profile/profile ~/.profile

echo -ne "Done! :-)\n\n"
