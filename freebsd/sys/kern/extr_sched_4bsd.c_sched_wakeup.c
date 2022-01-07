
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_slptick; int td_flags; } ;
struct td_sched {int ts_slptime; int ts_slice; } ;


 int MA_OWNED ;
 int SRQ_BORING ;
 int TDF_CANSWAP ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int resetpriority (struct thread*) ;
 int sched_add (struct thread*,int ) ;
 int sched_slice ;
 struct td_sched* td_get_sched (struct thread*) ;
 int updatepri (struct thread*) ;

void
sched_wakeup(struct thread *td)
{
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 ts = td_get_sched(td);
 td->td_flags &= ~TDF_CANSWAP;
 if (ts->ts_slptime > 1) {
  updatepri(td);
  resetpriority(td);
 }
 td->td_slptick = 0;
 ts->ts_slptime = 0;
 ts->ts_slice = sched_slice;
 sched_add(td, SRQ_BORING);
}
