
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct thread {int td_flags; scalar_t__ td_priority; scalar_t__ td_base_pri; } ;


 int TDF_BORROWING ;
 scalar_t__ TD_ON_LOCK (struct thread*) ;
 int sched_thread_priority (struct thread*,scalar_t__) ;
 int turnstile_adjust (struct thread*,scalar_t__) ;

void
sched_prio(struct thread *td, u_char prio)
{
 u_char oldprio;


 td->td_base_pri = prio;





 if (td->td_flags & TDF_BORROWING && td->td_priority < prio)
  return;


 oldprio = td->td_priority;
 sched_thread_priority(td, prio);





 if (TD_ON_LOCK(td) && oldprio != prio)
  turnstile_adjust(td, oldprio);
}
