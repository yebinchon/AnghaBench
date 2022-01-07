
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_color_t ;
typedef int term_char_t ;


 int TCHAR_BGCOLOR (int ) ;
 int TCHAR_FGCOLOR (int ) ;
 int TCHAR_FORMAT (int ) ;
 int TCOLOR_LIGHT (int ) ;
 int TF_BLINK ;
 int TF_BOLD ;
 int TF_REVERSE ;

void
vt_determine_colors(term_char_t c, int cursor,
    term_color_t *fg, term_color_t *bg)
{
 term_color_t tmp;
 int invert;

 invert = 0;

 *fg = TCHAR_FGCOLOR(c);
 if (TCHAR_FORMAT(c) & TF_BOLD)
  *fg = TCOLOR_LIGHT(*fg);
 *bg = TCHAR_BGCOLOR(c);
 if (TCHAR_FORMAT(c) & TF_BLINK)
  *bg = TCOLOR_LIGHT(*bg);

 if (TCHAR_FORMAT(c) & TF_REVERSE)
  invert ^= 1;
 if (cursor)
  invert ^= 1;

 if (invert) {
  tmp = *fg;
  *fg = *bg;
  *bg = tmp;
 }
}
