
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct winsize {int ws_row; scalar_t__ ws_col; } ;
struct TYPE_4__ {int x_nlines; scalar_t__ x_ncols; int x_win; } ;
struct TYPE_3__ {int x_nlines; scalar_t__ x_ncols; int x_win; } ;


 scalar_t__ COLS ;
 int LINES ;
 int STDIN_FILENO ;
 int TIOCGWINSZ ;
 int TRUE ;
 int box (int ,char,char) ;
 int clearok (int ,int ) ;
 TYPE_2__ his_win ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;
 int line_win ;
 int mvwin (int ,int,int ) ;
 TYPE_1__ my_win ;
 int resizeterm (int,scalar_t__) ;
 int whline (int ,char,scalar_t__) ;
 int wmove (int ,int,int ) ;
 int wrefresh (int ) ;
 int wresize (int ,int,scalar_t__) ;

void
resize_display(void)
{
 struct winsize ws;

 if (ioctl(STDIN_FILENO, TIOCGWINSZ, &ws) < 0 ||
     (ws.ws_row == LINES && ws.ws_col == COLS))
  return;


 resizeterm(ws.ws_row, ws.ws_col);





 my_win.x_nlines = LINES / 2;
 my_win.x_ncols = COLS;
 wresize(my_win.x_win, my_win.x_nlines, my_win.x_ncols);
 mvwin(my_win.x_win, 0, 0);
 clearok(my_win.x_win, TRUE);

 his_win.x_nlines = LINES / 2 - 1;
 his_win.x_ncols = COLS;
 wresize(his_win.x_win, his_win.x_nlines, his_win.x_ncols);
 mvwin(his_win.x_win, my_win.x_nlines + 1, 0);
 clearok(his_win.x_win, TRUE);

 wresize(line_win, 1, COLS);
 mvwin(line_win, my_win.x_nlines, 0);



 wmove(line_win, my_win.x_nlines, 0);
 box(line_win, '-', '-');



 wrefresh(his_win.x_win);
 wrefresh(line_win);
 wrefresh(my_win.x_win);
}
