
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_sleeptimo; int td_flags; int td_slpcallout; } ;


 int EWOULDBLOCK ;
 int MA_OWNED ;
 int TDF_TIMEOUT ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int callout_stop (int *) ;
 struct thread* curthread ;
 scalar_t__ sbinuptime () ;

__attribute__((used)) static int
sleepq_check_timeout(void)
{
 struct thread *td;
 int res;

 td = curthread;
 THREAD_LOCK_ASSERT(td, MA_OWNED);





 res = 0;
 if (td->td_sleeptimo != 0) {
  if (td->td_sleeptimo <= sbinuptime())
   res = EWOULDBLOCK;
  td->td_sleeptimo = 0;
 }
 if (td->td_flags & TDF_TIMEOUT)
  td->td_flags &= ~TDF_TIMEOUT;
 else
  callout_stop(&td->td_slpcallout);
 return (res);
}
