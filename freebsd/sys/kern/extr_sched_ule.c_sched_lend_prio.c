
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct thread {int td_flags; } ;


 int TDF_BORROWING ;
 int sched_thread_priority (struct thread*,int ) ;

void
sched_lend_prio(struct thread *td, u_char prio)
{

 td->td_flags |= TDF_BORROWING;
 sched_thread_priority(td, prio);
}
