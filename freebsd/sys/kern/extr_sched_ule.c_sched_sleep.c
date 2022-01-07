
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_priority; int td_pri_class; int td_flags; int td_slptick; } ;


 int MA_OWNED ;
 scalar_t__ PRI_BASE (int ) ;
 scalar_t__ PRI_TIMESHARE ;
 int PSOCK ;
 int TDF_CANSWAP ;
 scalar_t__ TD_IS_SUSPENDED (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int sched_prio (struct thread*,int) ;
 int static_boost ;
 int ticks ;

void
sched_sleep(struct thread *td, int prio)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);

 td->td_slptick = ticks;
 if (TD_IS_SUSPENDED(td) || prio >= PSOCK)
  td->td_flags |= TDF_CANSWAP;
 if (PRI_BASE(td->td_pri_class) != PRI_TIMESHARE)
  return;
 if (static_boost == 1 && prio)
  sched_prio(td, prio);
 else if (static_boost && td->td_priority > static_boost)
  sched_prio(td, static_boost);
}
