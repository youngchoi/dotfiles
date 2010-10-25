hi Normal guibg=black guifg=lightgray
set ruler
syntax on
set hlsearch
set incsearch
set background=dark
filetype on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set ruler
set viminfo='20,\"50
set history=50
set nocompatible
set bs=2
set mouse=a
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
