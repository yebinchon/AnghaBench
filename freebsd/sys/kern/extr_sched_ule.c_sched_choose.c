
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_priority; } ;
struct tdq {int tdq_lowpri; } ;


 int MA_OWNED ;
 struct thread* PCPU_GET (int ) ;
 int PRI_MAX_IDLE ;
 int TDQ_LOCK_ASSERT (struct tdq*,int ) ;
 struct tdq* TDQ_SELF () ;
 int idlethread ;
 struct thread* tdq_choose (struct tdq*) ;
 int tdq_runq_rem (struct tdq*,struct thread*) ;

struct thread *
sched_choose(void)
{
 struct thread *td;
 struct tdq *tdq;

 tdq = TDQ_SELF();
 TDQ_LOCK_ASSERT(tdq, MA_OWNED);
 td = tdq_choose(tdq);
 if (td) {
  tdq_runq_rem(tdq, td);
  tdq->tdq_lowpri = td->td_priority;
  return (td);
 }
 tdq->tdq_lowpri = PRI_MAX_IDLE;
 return (PCPU_GET(idlethread));
}
