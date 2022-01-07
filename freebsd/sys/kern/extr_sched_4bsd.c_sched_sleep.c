
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_flags; int td_pri_class; int td_slptick; } ;
struct TYPE_2__ {scalar_t__ ts_slptime; } ;


 int MA_OWNED ;
 scalar_t__ PRI_BASE (int ) ;
 scalar_t__ PRI_TIMESHARE ;
 int PSOCK ;
 int TDF_CANSWAP ;
 scalar_t__ TD_IS_SUSPENDED (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int sched_prio (struct thread*,int) ;
 TYPE_1__* td_get_sched (struct thread*) ;
 int ticks ;

void
sched_sleep(struct thread *td, int pri)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 td->td_slptick = ticks;
 td_get_sched(td)->ts_slptime = 0;
 if (pri != 0 && PRI_BASE(td->td_pri_class) == PRI_TIMESHARE)
  sched_prio(td, pri);
 if (TD_IS_SUSPENDED(td) || pri >= PSOCK)
  td->td_flags |= TDF_CANSWAP;
}
