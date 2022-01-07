
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_priority; int td_owepreempt; int td_flags; } ;


 int MA_OWNED ;
 int TDF_NEEDRESCHED ;
 scalar_t__ TD_IS_INHIBITED (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 scalar_t__ cold ;
 struct thread* curthread ;
 int * panicstr ;
 int sched_shouldpreempt (int,int,int ) ;

__attribute__((used)) static inline void
sched_setpreempt(struct thread *td)
{
 struct thread *ctd;
 int cpri;
 int pri;

 THREAD_LOCK_ASSERT(curthread, MA_OWNED);

 ctd = curthread;
 pri = td->td_priority;
 cpri = ctd->td_priority;
 if (pri < cpri)
  ctd->td_flags |= TDF_NEEDRESCHED;
 if (panicstr != ((void*)0) || pri >= cpri || cold || TD_IS_INHIBITED(ctd))
  return;
 if (!sched_shouldpreempt(pri, cpri, 0))
  return;
 ctd->td_owepreempt = 1;
}
