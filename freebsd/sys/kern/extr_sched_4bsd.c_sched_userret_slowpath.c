
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_user_pri; int td_base_pri; int td_priority; } ;


 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sched_userret_slowpath(struct thread *td)
{

 thread_lock(td);
 td->td_priority = td->td_user_pri;
 td->td_base_pri = td->td_user_pri;
 thread_unlock(td);
}
