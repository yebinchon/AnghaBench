
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; int td_intrval; } ;


 int MA_OWNED ;
 int TDF_SINTR ;
 int TDF_SLEEPABORT ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct thread* curthread ;

__attribute__((used)) static int
sleepq_check_signals(void)
{
 struct thread *td;

 td = curthread;
 THREAD_LOCK_ASSERT(td, MA_OWNED);


 if (td->td_flags & TDF_SINTR)
  td->td_flags &= ~TDF_SINTR;

 if (td->td_flags & TDF_SLEEPABORT) {
  td->td_flags &= ~TDF_SLEEPABORT;
  return (td->td_intrval);
 }

 return (0);
}
