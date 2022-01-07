
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int LINES ;
 int MAINWIN_ROW ;
 int sethostent (int) ;
 int setnetent (int) ;
 int stdscr ;
 int * subwin (int ,int,int ,int ,int ) ;

WINDOW *
opennetstat(void)
{
 sethostent(1);
 setnetent(1);
 return (subwin(stdscr, LINES-3-1, 0, MAINWIN_ROW, 0));
}
