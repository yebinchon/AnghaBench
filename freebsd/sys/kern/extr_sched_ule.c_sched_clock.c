
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_pri_class; int td_flags; } ;
struct TYPE_2__ {int * rq_queues; } ;
struct tdq {int tdq_idx; int tdq_ridx; TYPE_1__ tdq_timeshare; int tdq_load; int tdq_switchcnt; int tdq_oldswitchcnt; } ;
struct td_sched {scalar_t__ ts_slice; int ts_runtime; } ;


 int MA_OWNED ;
 scalar_t__ PRI_BASE (int) ;
 int PRI_FIFO_BIT ;
 scalar_t__ PRI_TIMESHARE ;
 int RQ_NQS ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TDF_NEEDRESCHED ;
 int TDF_SLICEEND ;
 struct tdq* TDQ_SELF () ;
 int TD_IS_IDLETHREAD (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct tdq* balance_tdq ;
 scalar_t__ balance_ticks ;
 scalar_t__ rebalance ;
 int sched_balance () ;
 int sched_interact_update (struct thread*) ;
 int sched_pctcpu_update (struct td_sched*,int) ;
 int sched_priority (struct thread*) ;
 scalar_t__ smp_started ;
 struct td_sched* td_get_sched (struct thread*) ;
 scalar_t__ tdq_slice (struct tdq*) ;
 scalar_t__ tickincr ;

void
sched_clock(struct thread *td)
{
 struct tdq *tdq;
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 tdq = TDQ_SELF();
 tdq->tdq_oldswitchcnt = tdq->tdq_switchcnt;
 tdq->tdq_switchcnt = tdq->tdq_load;




 if (tdq->tdq_idx == tdq->tdq_ridx) {
  tdq->tdq_idx = (tdq->tdq_idx + 1) % RQ_NQS;
  if (TAILQ_EMPTY(&tdq->tdq_timeshare.rq_queues[tdq->tdq_ridx]))
   tdq->tdq_ridx = tdq->tdq_idx;
 }
 ts = td_get_sched(td);
 sched_pctcpu_update(ts, 1);
 if (td->td_pri_class & PRI_FIFO_BIT)
  return;
 if (PRI_BASE(td->td_pri_class) == PRI_TIMESHARE) {




  td_get_sched(td)->ts_runtime += tickincr;
  sched_interact_update(td);
  sched_priority(td);
 }





 if (!TD_IS_IDLETHREAD(td) && ++ts->ts_slice >= tdq_slice(tdq)) {
  ts->ts_slice = 0;
  td->td_flags |= TDF_NEEDRESCHED | TDF_SLICEEND;
 }
}
