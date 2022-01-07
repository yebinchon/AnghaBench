
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ET_LOCK () ;
 int ET_UNLOCK () ;
 int configtimer (int) ;
 scalar_t__ periodic ;
 int profiling ;

void
cpu_startprofclock(void)
{

 ET_LOCK();
 if (profiling == 0) {
  if (periodic) {
   configtimer(0);
   profiling = 1;
   configtimer(1);
  } else
   profiling = 1;
 } else
  profiling++;
 ET_UNLOCK();
}
