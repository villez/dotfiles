#!/usr/bin/sh
#
# a collection of misc OS X customizations; only run
# in full when setting up a new Mac, and even then may prefer
# to pick-and-choose and apply the settings individually to see
# that they work the way I want.

sudo -v


# General/Global
# --------------

# standby delay 24 hours (default 1 hour)
sudo pmset -a standbydelay 86400

# disable transparent menubar
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# scrollbars always on
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# expand save dialog
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# full keyboard access for all dialogs
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# disable press-and-hold keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


# Dock:
# -----

# Set the icon size of Dock items to 36 pixels
# defaults write com.apple.dock tilesize -int 36

# spring loading
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# indicator lights for open apps
defaults write com.apple.dock show-process-indicators -bool true

# 2D Dock
defaults write com.apple.dock no-glass -bool true


# Finder:
# -------

# disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full path as window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Disk Utility:
# -------------

# enable debug menu
# defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
# defaults write com.apple.DiskUtility advanced-image-options -bool true
