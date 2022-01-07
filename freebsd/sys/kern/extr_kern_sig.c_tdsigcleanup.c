
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_sigmask; int td_sigqueue; struct proc* td_proc; } ;
struct proc {int p_numthreads; } ;
typedef int sigset_t ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SIGFILLSET (int ) ;
 int SIGSETNAND (int ,int ) ;
 int reschedule_signals (struct proc*,int ,int ) ;
 int sigqueue_flush (int *) ;

void
tdsigcleanup(struct thread *td)
{
 struct proc *p;
 sigset_t unblocked;

 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);

 sigqueue_flush(&td->td_sigqueue);
 if (p->p_numthreads == 1)
  return;
 SIGFILLSET(unblocked);
 SIGSETNAND(unblocked, td->td_sigmask);
 SIGFILLSET(td->td_sigmask);
 reschedule_signals(p, unblocked, 0);

}
