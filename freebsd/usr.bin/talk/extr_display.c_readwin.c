
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int getyx (int *,int,int) ;
 int winch (int *) ;
 int wmove (int *,int,int) ;

int
readwin(WINDOW *win, int line, int col)
{
 int oldline, oldcol;
 int c;

 getyx(win, oldline, oldcol);
 wmove(win, line, col);
 c = winch(win);
 wmove(win, oldline, oldcol);
 return (c);
}
