set noswapfile
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
"Bundle 'Valloric/YouCompleteMe'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" for pathogen
call pathogen#infect()
syntax on
filetype plugin indent on
" for pathogen

" for synatics
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1 
" for synatics

" for theme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade = 1
set t_Co=256" required
"colorscheme desert 
if has('gui_running')
    set guifont=monaco\ 11
    set background=light
    colorscheme gruvbox
else
    set background=dark
    colorscheme solarized
   " let g:molokai_original=1
   " let g:rehash256 = 1
   " colorscheme molokai 
    colorscheme gruvbox
   " colorscheme lucius

endif

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab " Use spaces instead of tabs
set wrap " Wrap lines
" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" the mouse pointer is hidden when characters are typed
set mousehide
" Always show current position
set ruler

" Always show status line
set laststatus=2
set statusline=%<%f\ " filename
set statusline+=%w%h%m%r " option
set statusline+=\ [%{&ff}]/%y " fileformat/filetype
set statusline+=\ [%{getcwd()}] " current dir
set statusline+=\ [%{&encoding}] " encoding
set statusline+=%=%-14.(%l/%L,%c%V%)\ %p%% " Right aligned file nav info

:set nu
set cursorline
"set cursorcolumn
set hlsearch
highlight Cursorline cterm=NONE ctermbg=black
"highlight CursorColumn cterm=NONE ctermbg=black

highlight TabLine term=underline cterm=bold ctermfg=9 ctermbg=4
highlight TabLineSel term=bold cterm=bold ctermbg=Red ctermfg=yellow
highlight LineNr ctermbg=NONE
highlight LineNr ctermfg=gray

nmap <C-n> :NERDTreeToggle<CR>

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"powerline
"set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
"let g:Powerline_symbols = 'fancy'

" Ctags
"map <C-m> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>


"设置ctags路径
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
""启动vim后自动打开taglist窗口
let Tlist_Auto_Open = 1
"不同时显示多个文件的tag，仅显示一个
"let Tlist_Show_One_File = 1
""taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1
"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window =1
""设置taglist窗口大小
"let Tlist_WinHeight = 100
"let Tlist_WinWidth = 40
""设置taglist打开关闭的快捷键F8
noremap <C-l> :TlistToggle<CR>
"更新ctags标签文件快捷键设置
"noremap <F6> :!ctags -R<CR>


" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
