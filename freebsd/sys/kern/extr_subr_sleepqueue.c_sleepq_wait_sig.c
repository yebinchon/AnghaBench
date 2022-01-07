
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curthread ;
 int sleepq_catch_signals (void*,int) ;
 int sleepq_check_signals () ;
 int thread_unlock (int ) ;

int
sleepq_wait_sig(void *wchan, int pri)
{
 int rcatch;
 int rval;

 rcatch = sleepq_catch_signals(wchan, pri);
 rval = sleepq_check_signals();
 thread_unlock(curthread);
 if (rcatch)
  return (rcatch);
 return (rval);
}
