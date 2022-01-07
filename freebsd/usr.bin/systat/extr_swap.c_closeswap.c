
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int delwin (int *) ;
 int wclear (int *) ;
 int wrefresh (int *) ;

void
closeswap(WINDOW *w)
{
 if (w == ((void*)0))
  return;
 wclear(w);
 wrefresh(w);
 delwin(w);
}
