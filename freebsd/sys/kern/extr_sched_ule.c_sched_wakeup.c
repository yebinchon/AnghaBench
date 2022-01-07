
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_slptick; int td_flags; } ;
struct td_sched {int ts_slptime; scalar_t__ ts_slice; } ;


 int MA_OWNED ;
 int SCHED_TICK_SHIFT ;
 int SRQ_BORING ;
 int TDF_CANSWAP ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int sched_add (struct thread*,int ) ;
 int sched_interact_update (struct thread*) ;
 int sched_pctcpu_update (struct td_sched*,int ) ;
 struct td_sched* td_get_sched (struct thread*) ;
 int ticks ;

void
sched_wakeup(struct thread *td)
{
 struct td_sched *ts;
 int slptick;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 ts = td_get_sched(td);
 td->td_flags &= ~TDF_CANSWAP;




 slptick = td->td_slptick;
 td->td_slptick = 0;
 if (slptick && slptick != ticks) {
  ts->ts_slptime += (ticks - slptick) << SCHED_TICK_SHIFT;
  sched_interact_update(td);
  sched_pctcpu_update(ts, 0);
 }



 ts->ts_slice = 0;
 sched_add(td, SRQ_BORING);
}
