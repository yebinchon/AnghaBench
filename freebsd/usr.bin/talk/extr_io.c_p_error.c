
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x_win; } ;


 scalar_t__ LINES ;
 int current_line ;
 int errno ;
 int move (scalar_t__,int ) ;
 TYPE_1__ my_win ;
 int quit () ;
 int refresh () ;
 int strerror (int ) ;
 int wmove (int ,int ,int ) ;
 int wprintw (int ,char*,char const*,int ,int ) ;
 int wrefresh (int ) ;

void
p_error(const char *string)
{
 wmove(my_win.x_win, current_line, 0);
 wprintw(my_win.x_win, "[%s : %s (%d)]\n",
     string, strerror(errno), errno);
 wrefresh(my_win.x_win);
 move(LINES-1, 0);
 refresh();
 quit();
}
