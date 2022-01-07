
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x_nlines; int x_win; } ;


 int current_line ;
 TYPE_1__ my_win ;
 int wmove (int ,int,int ) ;
 int wprintw (int ,char*,char const*) ;
 int wrefresh (int ) ;

void
message(const char *string)
{
 wmove(my_win.x_win, current_line, 0);
 wprintw(my_win.x_win, "[%s]\n", string);
 if (current_line < my_win.x_nlines - 1)
  current_line++;
 wrefresh(my_win.x_win);
}
