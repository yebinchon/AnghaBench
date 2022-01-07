
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ACCT_EXITREQ ;
 int ACCT_RUNNING ;
 int PRI_MAX_KERN ;
 int acct_state ;
 int acct_sx ;
 int acctchkfreq ;
 int acctwatch () ;
 int curthread ;
 int hz ;
 int kproc_exit (int ) ;
 int sched_prio (int ,int ) ;
 int sx_sleep (int*,int *,int ,char*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
acct_thread(void *dummy)
{
 u_char pri;


 pri = PRI_MAX_KERN;
 thread_lock(curthread);
 sched_prio(curthread, pri);
 thread_unlock(curthread);


 sx_xlock(&acct_sx);
 if (acct_state & ACCT_RUNNING) {
  sx_xunlock(&acct_sx);
  kproc_exit(0);
 }
 acct_state |= ACCT_RUNNING;


 while (!(acct_state & ACCT_EXITREQ)) {


  acctwatch();






  if (!(acct_state & ACCT_EXITREQ)) {
   sx_sleep(&acct_state, &acct_sx, 0, "-",
       acctchkfreq * hz);
  }
 }





 acct_state = 0;
 sx_xunlock(&acct_sx);
 kproc_exit(0);
}
