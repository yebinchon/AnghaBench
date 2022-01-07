
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td_sched {int ts_cpu; scalar_t__ ts_slice; void* ts_ftick; void* ts_ltick; } ;


 int curcpu ;
 struct td_sched* td_get_sched (int *) ;
 int thread0 ;
 void* ticks ;

void
schedinit(void)
{
 struct td_sched *ts0;




 ts0 = td_get_sched(&thread0);
 ts0->ts_ltick = ticks;
 ts0->ts_ftick = ticks;
 ts0->ts_slice = 0;
 ts0->ts_cpu = curcpu;
}
