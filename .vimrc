if has("gui_macvim")
    " MacVim美化
    set go=aAce
    colorscheme slate
    " set showtabline=2
    " set guifont=Monaco:h12  " 设置默认字体为monaco
    set guifont=Droid\ Sans\ Mono:h12  " 设置默认字体为monaco
endif
if has("gui_running")
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set showtabline=0 " 隐藏Tab栏
    set lines=46 columns=140 " 设置启动大小
endif

set list
nnoremap <silent><F8> :set list!<CR>
" set listchars=tab:>-,eol:$
set listchars=tab:\|\ ,nbsp:%,trail:-

" 解决中文乱码的问题
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set hlsearch
nnoremap <silent><F7> :set hlsearch!<CR>

" tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab

nnoremap <silent><F9> :set nu!<CR>

" C-c和C-v的粘贴复制
vnoremap <C-c> "+y
inoremap <C-v> <ESC>"+pa


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle for plugin manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/javacomplete'
Bundle 'wleicore/CsLoader'
Bundle 'mileszs/ack.vim'

filetype plugin indent on     " required!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><F3> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><F2> :TagbarToggle<CR>
let g:tagbar_sort=0
" tag for golang
source ~/.vim/gotag.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-c><C-f> :cs find f 
nnoremap <C-c><C-s> :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-g> :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-c> :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-t> :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-e> :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-g> :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-i> :cs find i ^<C-R>=expand("<cword>")<CR><CR>
nnoremap <C-c><C-d> :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <C-W><C-U> :CtrlPMRU<CR>
noremap <C-B> :CtrlPBuffer<CR>

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$\|cscope.*\|tags'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" javacomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CsLoader
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:csloader_auto_load_when_start=1
