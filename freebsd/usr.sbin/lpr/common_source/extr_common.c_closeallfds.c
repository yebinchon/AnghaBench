
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ USE_CLOSEFROM ;
 int close (int) ;
 int closefrom (int) ;
 int getdtablesize () ;

void
closeallfds(int start)
{
 int stop;

 if (USE_CLOSEFROM)
  closefrom(start);
 else {




  stop = getdtablesize();
  for (; start < stop; start++)
   close(start);
 }
}
