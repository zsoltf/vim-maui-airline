
" Airline: {{{
"
let g:airline#themes#maui#palette = {}

function! airline#themes#maui#refresh()
  let g:airline#themes#maui#palette.accents = {
        \ 'red': airline#themes#get_highlight('ErrorMsg'),
        \ }

  let s:N1 = [ '#5f8700', '#262626', 64, 235]
  let s:N2 = [ '#87af00', '#1c1c1c', 106, 234 ]
  let s:N3 = airline#themes#get_highlight('NonText')

  let g:airline#themes#maui#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let s:Nmod = airline#themes#get_highlight('Comment')
  let g:airline#themes#maui#palette.normal_modified = {
        \ 'airline_c': s:Nmod
        \ }

  let s:I1 = airline#themes#get_highlight2(['DbgCurrent', 'bg'], ['Statement', 'fg'], 'bold')
  let s:I2 = [ '#df5f00', '#262626', 166, 235 ]
  let s:I3 = s:N3
  let g:airline#themes#maui#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#maui#palette.normal_modified = {
        \ 'airline_c': [ '#121212' , '#df5f00' , 235, 166 ]
        \ }
  let g:airline#themes#maui#palette.insert_modified = g:airline#themes#maui#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['DbgCurrent', 'bg'], ['Operator', 'fg'], 'bold')
  let s:R2 = airline#themes#get_highlight2(['Operator', 'fg'], ['DbgCurrent', 'bg'])
  let s:R3 = s:N3
  let g:airline#themes#maui#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#maui#palette.replace_modified = g:airline#themes#maui#palette.normal_modified

  let s:V1 = [ '#262626', '#5f87af', 235, 67 ]
  let s:V2 = [ '#5f87af', '#262626', 67, 235 ]
  let s:V3 = [ '#262626', '#5f87af', 235, 67 ]
  let g:airline#themes#maui#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

  let g:airline#themes#maui#palette.visual_modified = g:airline#themes#maui#palette.normal_modified

  let s:IA1 = [ '#666666', '#303030', 242, 236 ]
  let s:IA2 = [ '#666666', '#262626', 242, 235 ]
  let s:IA3 = [ '#666666', '#1c1c1c', 242, 234 ]
  let g:airline#themes#maui#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#maui#palette.inactive_modified = {
        \ 'airline_c': s:Nmod
        \ }
  let g:airline_mode_map = {
        \ 'n'  : 'ν',
        \ 'i'  : 'λ',
        \ 'R'  : 'Φ',
        \ 'v'  : 'δ',
        \ 'V'  : 'Σ',
        \ '' : '∆',
        \ }

  let g:airline_section_x = airline#section#create(['ffenc'])
  let g:airline_section_y = airline#section#create(['tagbar'])
  let g:airline_section_z = airline#section#create(['%t'])
endfunction

call airline#themes#maui#refresh()
" }}}
