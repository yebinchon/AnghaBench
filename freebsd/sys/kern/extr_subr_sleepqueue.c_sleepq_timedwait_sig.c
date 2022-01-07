
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curthread ;
 int sleepq_catch_signals (void*,int) ;
 int sleepq_check_signals () ;
 int sleepq_check_timeout () ;
 int thread_unlock (int ) ;

int
sleepq_timedwait_sig(void *wchan, int pri)
{
 int rcatch, rvalt, rvals;

 rcatch = sleepq_catch_signals(wchan, pri);
 rvalt = sleepq_check_timeout();
 rvals = sleepq_check_signals();
 thread_unlock(curthread);
 if (rcatch)
  return (rcatch);
 if (rvals)
  return (rvals);
 return (rvalt);
}
