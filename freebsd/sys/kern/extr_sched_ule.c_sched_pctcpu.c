
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct td_sched {scalar_t__ ts_ticks; } ;
typedef int fixpt_t ;


 int FSCALE ;
 int FSHIFT ;
 int MA_OWNED ;
 int SCHED_TICK_HZ (struct td_sched*) ;
 int SCHED_TICK_SECS ;
 int TD_IS_RUNNING (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int hz ;
 int min (int,int) ;
 int sched_pctcpu_update (struct td_sched*,int ) ;
 struct td_sched* td_get_sched (struct thread*) ;

fixpt_t
sched_pctcpu(struct thread *td)
{
 fixpt_t pctcpu;
 struct td_sched *ts;

 pctcpu = 0;
 ts = td_get_sched(td);

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 sched_pctcpu_update(ts, TD_IS_RUNNING(td));
 if (ts->ts_ticks) {
  int rtick;


  rtick = min(SCHED_TICK_HZ(ts) / SCHED_TICK_SECS, hz);
  pctcpu = (FSCALE * ((FSCALE * rtick)/hz)) >> FSHIFT;
 }

 return (pctcpu);
}
