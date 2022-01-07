
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;
struct td_sched {int ts_estcpu; scalar_t__ ts_slice; int ts_cpticks; } ;
struct pcpuidlestat {scalar_t__ idlecalls; scalar_t__ oldidlecalls; } ;


 struct pcpuidlestat* DPCPU_PTR (int ) ;
 int ESTCPULIM (int) ;
 int INVERSE_ESTCPU_WEIGHT ;
 int MA_OWNED ;
 int TDF_NEEDRESCHED ;
 int TDF_SLICEEND ;
 int TD_IS_IDLETHREAD (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int idlestat ;
 int resetpriority (struct thread*) ;
 int resetpriority_thread (struct thread*) ;
 scalar_t__ sched_slice ;
 struct td_sched* td_get_sched (struct thread*) ;

void
sched_clock(struct thread *td)
{
 struct pcpuidlestat *stat;
 struct td_sched *ts;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 ts = td_get_sched(td);

 ts->ts_cpticks++;
 ts->ts_estcpu = ESTCPULIM(ts->ts_estcpu + 1);
 if ((ts->ts_estcpu % INVERSE_ESTCPU_WEIGHT) == 0) {
  resetpriority(td);
  resetpriority_thread(td);
 }





 if (!TD_IS_IDLETHREAD(td) && --ts->ts_slice <= 0) {
  ts->ts_slice = sched_slice;
  td->td_flags |= TDF_NEEDRESCHED | TDF_SLICEEND;
 }

 stat = DPCPU_PTR(idlestat);
 stat->oldidlecalls = stat->idlecalls;
 stat->idlecalls = 0;
}
