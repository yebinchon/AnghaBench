
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct thread {scalar_t__ td_base_pri; scalar_t__ td_user_pri; int td_flags; } ;


 scalar_t__ PRI_MAX_TIMESHARE ;
 scalar_t__ PRI_MIN_TIMESHARE ;
 int TDF_BORROWING ;
 int sched_lend_prio (struct thread*,scalar_t__) ;
 int sched_prio (struct thread*,scalar_t__) ;

void
sched_unlend_prio(struct thread *td, u_char prio)
{
 u_char base_pri;

 if (td->td_base_pri >= PRI_MIN_TIMESHARE &&
     td->td_base_pri <= PRI_MAX_TIMESHARE)
  base_pri = td->td_user_pri;
 else
  base_pri = td->td_base_pri;
 if (prio >= base_pri) {
  td->td_flags &= ~TDF_BORROWING;
  sched_prio(td, base_pri);
 } else
  sched_lend_prio(td, prio);
}
