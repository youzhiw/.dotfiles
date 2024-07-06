# Check if we're in an interactive shell and not already inside tmux
if status is-interactive
    and not set -q TMUX
    and not set -q SSH_TTY
    # Always start a new tmux session
    tmux new-session
end
set -x EDITOR nvim

set fish_greeting

fastfetch 
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/youzhi/anaconda3/bin/conda
    eval /home/youzhi/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/youzhi/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/youzhi/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/youzhi/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

