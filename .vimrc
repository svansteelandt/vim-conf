"  .vimrc
" -----------------------------------------------------------------------------
" *****************************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'ervandew/supertab'

"Plugin 'ericcurtin/CurtineIncSw.vim'

Plugin 'bling/vim-airline'

Plugin 'bling/vim-bufferline'

"Plugin 'easymotion/vim-easymotion'

"Plugin 'Yggdroot/indentLine'

Plugin 'triglav/vim-visual-increment'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

"Plugin 'severin-lemaignan/vim-minimap'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'octol/vim-cpp-enhanced-highlight'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Plugin 'ntpeters/vim-better-whitespace'

" The following are examples of different formats supported.

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set exrc
" Number settings
set number
" set relativenumber

" Colorscheme
set background=dark

" Better file searching
set wildmenu

syntax enable

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=8

" " when indenting with '>', use 4 spaces width
set shiftwidth=8

" " On pressing tab, insert 4 spaces
set expandtab

set smarttab

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
autocmd FileType make setlocal noexpandtab
autocmd FileType dts setlocal noexpandtab

" Highlight current line
"set cursorline

" Better searching
set hlsearch
set incsearch
set smartcase
"set ignorecase

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Enable buffer switching without saving
set hidden

" Show the current command-key-combination at the right side in the status bar
set showcmd

" For regular expressions set magic on
set magic

" Show matching brackets when text inidicator is over them
set showmatch

" Enable folding
set foldenable

set scrolloff=8
"if exists('+colorcolumn')
    "set colorcolumn=80,100,120
"endif

" Set foldmethod to indent
" set foldmethod=indent

" Absolute numbers on focusloss/relative numbers on focusgain
" au FocusLost * :set number
" au FocusGained * :set relativenumber
" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'

" Easymotion config
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f2)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

nnoremap <F6> :bp <CR>
nnoremap <F7> :bn <CR>
nnoremap <F9> :Explore <CR>

let g:airline_symbols = {}

" Remove trailing whitespace using <F5>
" nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Better whitespace
" let g:strip_whitespace_on_save = 1

imap jj <Esc>
map <F10> :%!astyle --style=kr --indent=spaces=8 --indent-switches  --indent-classes --pad-oper --pad-header --unpad-paren --convert-tabs <CR>

" set colorcolumn=120
set columns=120


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:ycm_show_diagnostics_ui = 0 

"map <F5> :call CurtineIncSw()<CR>
"nnoremap <F5> :!make<cr>\

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
""
"let g:UltiSnipsSnippetsDir='/home/mdekoninck/.vim/bundle/vim-snippets/UltiSnips'
"let g:UltiSnipsSnippetDirectories='/home/mdekoninck/.vim/bundle/vim-snippets/UltiSnips'
"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

set secure
