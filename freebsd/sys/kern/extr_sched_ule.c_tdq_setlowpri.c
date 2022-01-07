
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {scalar_t__ td_priority; } ;
struct tdq {scalar_t__ tdq_lowpri; } ;
struct TYPE_2__ {struct thread* pc_curthread; } ;


 int MA_OWNED ;
 int TDQ_ID (struct tdq*) ;
 int TDQ_LOCK_ASSERT (struct tdq*,int ) ;
 TYPE_1__* pcpu_find (int ) ;
 struct thread* tdq_choose (struct tdq*) ;

__attribute__((used)) static void
tdq_setlowpri(struct tdq *tdq, struct thread *ctd)
{
 struct thread *td;

 TDQ_LOCK_ASSERT(tdq, MA_OWNED);
 if (ctd == ((void*)0))
  ctd = pcpu_find(TDQ_ID(tdq))->pc_curthread;
 td = tdq_choose(tdq);
 if (td == ((void*)0) || td->td_priority > ctd->td_priority)
  tdq->tdq_lowpri = ctd->td_priority;
 else
  tdq->tdq_lowpri = td->td_priority;
}
