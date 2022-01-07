
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct thread {scalar_t__ td_user_pri; scalar_t__ td_priority; int td_base_user_pri; int td_lend_user_pri; } ;


 scalar_t__ min (int ,int ) ;
 int sched_lend_user_prio (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sched_lend_user_prio_cond(struct thread *td, u_char prio)
{

 if (td->td_lend_user_pri != prio)
  goto lend;
 if (td->td_user_pri != min(prio, td->td_base_user_pri))
  goto lend;
 if (td->td_priority >= td->td_user_pri)
  goto lend;
 return;

lend:
 thread_lock(td);
 sched_lend_user_prio(td, prio);
 thread_unlock(td);
}
