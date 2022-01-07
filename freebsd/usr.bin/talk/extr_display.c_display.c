
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kill; int cerase; int werase; int x_col; int x_win; int x_line; } ;
typedef TYPE_1__ xwin_t ;
typedef int wchar_t ;
struct TYPE_6__ {int x_col; int x_win; int x_line; } ;


 int STDOUT_FILENO ;
 int beep () ;
 int curscr ;
 int getyx (int ,int ,int) ;
 TYPE_3__ his_win ;
 scalar_t__ iswprint (int) ;
 int makecchar (int) ;
 int max (int,int ) ;
 TYPE_1__ my_win ;
 int readwin (int ,int ,int) ;
 int wadd_wch (int ,int ) ;
 int waddch (int ,char) ;
 int wclrtoeol (int ) ;
 int werase (int ) ;
 int wmove (int ,int ,int) ;
 int wrefresh (int ) ;
 int write (int ,int*,int) ;

void
display(xwin_t *win, wchar_t *wc)
{





 if (*wc == win->kill)
  goto kill;
 else if (*wc == win->cerase)
  goto cerase;
 else if (*wc == win->werase)
  goto werase;

 switch (*wc) {
 case L'\n':
 case L'\r':
  wadd_wch(win->x_win, makecchar(L'\n'));
  getyx(win->x_win, win->x_line, win->x_col);
  wrefresh(win->x_win);
  return;

 case 004:
  if (win == &my_win) {

   werase(my_win.x_win);
   getyx(my_win.x_win, my_win.x_line, my_win.x_col);
   wrefresh(my_win.x_win);
   werase(his_win.x_win);
   getyx(his_win.x_win, his_win.x_line, his_win.x_col);
   wrefresh(his_win.x_win);
  }
  return;


 case 010:
 case 0177:
cerase:
  wmove(win->x_win, win->x_line, max(--win->x_col, 0));
  getyx(win->x_win, win->x_line, win->x_col);
  waddch(win->x_win, ' ');
  wmove(win->x_win, win->x_line, win->x_col);
  getyx(win->x_win, win->x_line, win->x_col);
  wrefresh(win->x_win);
  return;

 case 027:
werase:
     {





  int endcol, xcol, c;

  endcol = win->x_col;
  xcol = endcol - 1;
  while (xcol >= 0) {
   c = readwin(win->x_win, win->x_line, xcol);
   if (c != ' ')
    break;
   xcol--;
  }
  while (xcol >= 0) {
   c = readwin(win->x_win, win->x_line, xcol);
   if (c == ' ')
    break;
   xcol--;
  }
  wmove(win->x_win, win->x_line, xcol + 1);
  for (int i = xcol + 1; i < endcol; i++)
   waddch(win->x_win, ' ');
  wmove(win->x_win, win->x_line, xcol + 1);
  getyx(win->x_win, win->x_line, win->x_col);
  wrefresh(win->x_win);
  return;
     }

 case 025:
kill:
  wmove(win->x_win, win->x_line, 0);
  wclrtoeol(win->x_win);
  getyx(win->x_win, win->x_line, win->x_col);
  wrefresh(win->x_win);
  return;

 case L'\f':
  if (win == &my_win)
   wrefresh(curscr);
  return;

 case L'\7':
  write(STDOUT_FILENO, wc, sizeof(*wc));
  return;
 }


 if (iswprint(*wc) || *wc == L'\t')
  wadd_wch(win->x_win, makecchar(*wc));
 else
  beep();

 getyx(win->x_win, win->x_line, win->x_col);
 wrefresh(win->x_win);
}
