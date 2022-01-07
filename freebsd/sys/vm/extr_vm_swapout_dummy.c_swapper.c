
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXSLP ;
 int PVM ;
 int hz ;
 int proc0 ;
 int tsleep (int *,int ,char*,int) ;

void
swapper(void)
{

 for (;;)
  tsleep(&proc0, PVM, "swapin", MAXSLP * hz);
}
