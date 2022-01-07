
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cv {scalar_t__ cv_waiters; } ;


 int SLEEPQ_CONDVAR ;
 int kick_proc0 () ;
 int sleepq_broadcast (struct cv*,int ,int,int ) ;
 int sleepq_lock (struct cv*) ;
 int sleepq_release (struct cv*) ;

void
cv_broadcastpri(struct cv *cvp, int pri)
{
 int wakeup_swapper;

 if (cvp->cv_waiters == 0)
  return;




 wakeup_swapper = 0;
 if (pri == -1)
  pri = 0;
 sleepq_lock(cvp);
 if (cvp->cv_waiters > 0) {
  cvp->cv_waiters = 0;
  wakeup_swapper = sleepq_broadcast(cvp, SLEEPQ_CONDVAR, pri, 0);
 }
 sleepq_release(cvp);
 if (wakeup_swapper)
  kick_proc0();
}
