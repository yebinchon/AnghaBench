
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int PCPU_GET (int ) ;
 int TSENTER () ;
 int TSEXIT () ;
 int clock ;
 int cpu_spinwait () ;
 int rd (int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 int tick ;

void
DELAY(int usec)
{
 u_long end;

 if (usec < 0)
  return;
 TSENTER();





 sched_pin();

 end = rd(tick) + (u_long)usec * PCPU_GET(clock) / 1000000;
 while (rd(tick) < end)
  cpu_spinwait();

 sched_unpin();
 TSEXIT();
}
