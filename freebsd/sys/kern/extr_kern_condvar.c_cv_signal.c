
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cv {scalar_t__ cv_waiters; } ;


 scalar_t__ CV_WAITERS_BOUND ;
 int SLEEPQ_CONDVAR ;
 int kick_proc0 () ;
 int sleepq_lock (struct cv*) ;
 int * sleepq_lookup (struct cv*) ;
 int sleepq_release (struct cv*) ;
 int sleepq_signal (struct cv*,int ,int ,int ) ;

void
cv_signal(struct cv *cvp)
{
 int wakeup_swapper;

 if (cvp->cv_waiters == 0)
  return;
 wakeup_swapper = 0;
 sleepq_lock(cvp);
 if (cvp->cv_waiters > 0) {
  if (cvp->cv_waiters == CV_WAITERS_BOUND &&
      sleepq_lookup(cvp) == ((void*)0)) {
   cvp->cv_waiters = 0;
  } else {
   if (cvp->cv_waiters < CV_WAITERS_BOUND)
    cvp->cv_waiters--;
   wakeup_swapper = sleepq_signal(cvp, SLEEPQ_CONDVAR, 0,
       0);
  }
 }
 sleepq_release(cvp);
 if (wakeup_swapper)
  kick_proc0();
}
