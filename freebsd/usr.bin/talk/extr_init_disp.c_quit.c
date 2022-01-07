
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x_win; scalar_t__ x_nlines; } ;


 scalar_t__ curses_initialized ;
 int endwin () ;
 int exit (int ) ;
 TYPE_1__ his_win ;
 scalar_t__ invitation_waiting ;
 int send_delete () ;
 int wclrtoeol (int ) ;
 int wmove (int ,scalar_t__,int ) ;
 int wrefresh (int ) ;

void
quit(void)
{

 if (curses_initialized) {
  wmove(his_win.x_win, his_win.x_nlines-1, 0);
  wclrtoeol(his_win.x_win);
  wrefresh(his_win.x_win);
  endwin();
 }
 if (invitation_waiting)
  send_delete();
 exit(0);
}
