
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dr_policy; } ;
struct thread {int td_base_pri; int td_priority; TYPE_2__* td_cpuset; TYPE_1__ td_domain; int * td_lock; void* td_lastcpu; void* td_oncpu; } ;
struct td_sched {int ts_flags; int ts_slice; int ts_estcpu; } ;
struct TYPE_5__ {int cs_domain; } ;


 void* NOCPU ;
 int TSF_AFFINITY ;
 int bzero (struct td_sched*,int) ;
 TYPE_2__* cpuset_ref (TYPE_2__*) ;
 int sched_lock ;
 struct td_sched* td_get_sched (struct thread*) ;

void
sched_fork_thread(struct thread *td, struct thread *childtd)
{
 struct td_sched *ts, *tsc;

 childtd->td_oncpu = NOCPU;
 childtd->td_lastcpu = NOCPU;
 childtd->td_lock = &sched_lock;
 childtd->td_cpuset = cpuset_ref(td->td_cpuset);
 childtd->td_domain.dr_policy = td->td_cpuset->cs_domain;
 childtd->td_priority = childtd->td_base_pri;
 ts = td_get_sched(childtd);
 bzero(ts, sizeof(*ts));
 tsc = td_get_sched(td);
 ts->ts_estcpu = tsc->ts_estcpu;
 ts->ts_flags |= (tsc->ts_flags & TSF_AFFINITY);
 ts->ts_slice = 1;
}
