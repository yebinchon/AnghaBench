
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dr_policy; } ;
struct thread {int td_base_pri; int td_priority; TYPE_2__* td_cpuset; TYPE_1__ td_domain; int td_lock; void* td_lastcpu; void* td_oncpu; } ;
struct tdq {int dummy; } ;
struct td_sched {int ts_name; scalar_t__ ts_slice; int ts_runtime; int ts_slptime; int ts_ftick; int ts_ltick; int ts_ticks; scalar_t__ ts_flags; int ts_cpu; } ;
struct TYPE_5__ {int cs_domain; } ;


 int MA_OWNED ;
 void* NOCPU ;
 int TDQ_LOCKPTR (struct tdq*) ;
 struct tdq* TDQ_SELF () ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int bzero (int ,int) ;
 TYPE_2__* cpuset_ref (TYPE_2__*) ;
 scalar_t__ sched_slice_min ;
 struct td_sched* td_get_sched (struct thread*) ;
 scalar_t__ tdq_slice (struct tdq*) ;

void
sched_fork_thread(struct thread *td, struct thread *child)
{
 struct td_sched *ts;
 struct td_sched *ts2;
 struct tdq *tdq;

 tdq = TDQ_SELF();
 THREAD_LOCK_ASSERT(td, MA_OWNED);



 ts = td_get_sched(td);
 ts2 = td_get_sched(child);
 child->td_oncpu = NOCPU;
 child->td_lastcpu = NOCPU;
 child->td_lock = TDQ_LOCKPTR(tdq);
 child->td_cpuset = cpuset_ref(td->td_cpuset);
 child->td_domain.dr_policy = td->td_cpuset->cs_domain;
 ts2->ts_cpu = ts->ts_cpu;
 ts2->ts_flags = 0;



 ts2->ts_ticks = ts->ts_ticks;
 ts2->ts_ltick = ts->ts_ltick;
 ts2->ts_ftick = ts->ts_ftick;



 child->td_priority = child->td_base_pri;



 ts2->ts_slptime = ts->ts_slptime;
 ts2->ts_runtime = ts->ts_runtime;

 ts2->ts_slice = tdq_slice(tdq) - sched_slice_min;



}
