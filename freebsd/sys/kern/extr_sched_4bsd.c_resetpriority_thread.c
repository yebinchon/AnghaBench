
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_priority; int td_user_pri; } ;


 scalar_t__ PRI_MAX_TIMESHARE ;
 scalar_t__ PRI_MIN_TIMESHARE ;
 int maybe_resched (struct thread*) ;
 int sched_prio (struct thread*,int ) ;

__attribute__((used)) static void
resetpriority_thread(struct thread *td)
{


 if (td->td_priority < PRI_MIN_TIMESHARE ||
     td->td_priority > PRI_MAX_TIMESHARE)
  return;


 maybe_resched(td);

 sched_prio(td, td->td_user_pri);
}
