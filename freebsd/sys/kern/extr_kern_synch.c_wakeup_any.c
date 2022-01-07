
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLEEPQ_SLEEP ;
 int SLEEPQ_UNFAIR ;
 int kick_proc0 () ;
 int sleepq_lock (void*) ;
 int sleepq_release (void*) ;
 int sleepq_signal (void*,int,int ,int ) ;

void
wakeup_any(void *ident)
{
 int wakeup_swapper;

 sleepq_lock(ident);
 wakeup_swapper = sleepq_signal(ident, SLEEPQ_SLEEP | SLEEPQ_UNFAIR,
     0, 0);
 sleepq_release(ident);
 if (wakeup_swapper)
  kick_proc0();
}
