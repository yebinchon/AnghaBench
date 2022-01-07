
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_3__ {int ts_runtime; } ;


 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int sched_fork_thread (struct thread*,struct thread*) ;
 int sched_interact_fork (struct thread*) ;
 int sched_interact_update (struct thread*) ;
 int sched_pctcpu_update (TYPE_1__*,int) ;
 int sched_priority (struct thread*) ;
 TYPE_1__* td_get_sched (struct thread*) ;
 scalar_t__ tickincr ;

void
sched_fork(struct thread *td, struct thread *child)
{
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 sched_pctcpu_update(td_get_sched(td), 1);
 sched_fork_thread(td, child);



 sched_interact_fork(child);
 sched_priority(child);
 td_get_sched(td)->ts_runtime += tickincr;
 sched_interact_update(td);
 sched_priority(td);
}
