
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;
struct proc {int dummy; } ;


 int EINTR ;
 int ERESTART ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK_ASSERT (struct proc*,int ) ;




 int TDF_ALLPROCSUSP ;
 int TDF_BOUNDARY ;
 int TDF_SBDRY ;
 int TDF_SINTR ;
 int TD_IS_SUSPENDED (struct thread*) ;
 int TD_ON_SLEEPQ (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int sleepq_abort (struct thread*,int ) ;
 int thread_suspend_one (struct thread*) ;
 int thread_unsuspend_one (struct thread*,struct proc*,int) ;

__attribute__((used)) static int
weed_inhib(int mode, struct thread *td2, struct proc *p)
{
 int wakeup_swapper;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 PROC_SLOCK_ASSERT(p, MA_OWNED);
 THREAD_LOCK_ASSERT(td2, MA_OWNED);

 wakeup_swapper = 0;
 switch (mode) {
 case 129:
  if (TD_IS_SUSPENDED(td2))
   wakeup_swapper |= thread_unsuspend_one(td2, p, 1);
  if (TD_ON_SLEEPQ(td2) && (td2->td_flags & TDF_SINTR) != 0)
   wakeup_swapper |= sleepq_abort(td2, EINTR);
  break;
 case 130:
 case 128:
  if (TD_IS_SUSPENDED(td2) && (td2->td_flags & TDF_BOUNDARY) == 0)
   wakeup_swapper |= thread_unsuspend_one(td2, p, 0);
  if (TD_ON_SLEEPQ(td2) && (td2->td_flags & TDF_SINTR) != 0)
   wakeup_swapper |= sleepq_abort(td2, ERESTART);
  break;
 case 131:
  if (TD_IS_SUSPENDED(td2) && (td2->td_flags & (TDF_BOUNDARY |
      TDF_ALLPROCSUSP)) == 0)
   wakeup_swapper |= thread_unsuspend_one(td2, p, 0);
  if (TD_ON_SLEEPQ(td2) && (td2->td_flags & TDF_SINTR) != 0) {
   if ((td2->td_flags & TDF_SBDRY) == 0) {
    thread_suspend_one(td2);
    td2->td_flags |= TDF_ALLPROCSUSP;
   } else {
    wakeup_swapper |= sleepq_abort(td2, ERESTART);
   }
  }
  break;
 }
 return (wakeup_swapper);
}
