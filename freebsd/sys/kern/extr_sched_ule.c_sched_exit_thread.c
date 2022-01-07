
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_priority; } ;
struct TYPE_2__ {scalar_t__ ts_runtime; } ;


 int KTR_SCHED ;
 int KTR_STATE1 (int ,char*,int ,char*,char*,int ) ;
 int sched_interact_update (struct thread*) ;
 int sched_priority (struct thread*) ;
 int sched_tdname (struct thread*) ;
 TYPE_1__* td_get_sched (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sched_exit_thread(struct thread *td, struct thread *child)
{

 KTR_STATE1(KTR_SCHED, "thread", sched_tdname(child), "thread exit",
     "prio:%d", child->td_priority);





 thread_lock(td);
 td_get_sched(td)->ts_runtime += td_get_sched(child)->ts_runtime;
 sched_interact_update(td);
 sched_priority(td);
 thread_unlock(td);
}
