
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_3__* td_ucred; struct proc* td_proc; } ;
struct proc {int p_sig; TYPE_2__* p_ucred; int p_comm; int p_pid; int p_acflag; } ;
struct TYPE_6__ {int cr_uid; } ;
struct TYPE_5__ {TYPE_1__* cr_prison; } ;
struct TYPE_4__ {int pr_id; } ;


 int AXSIG ;
 int LOG_INFO ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGPROP_CORE ;
 int SINGLE_NO_EXIT ;
 int WCOREFLAG ;
 scalar_t__ coredump (struct thread*) ;
 int exit1 (struct thread*,int ,int) ;
 scalar_t__ kern_logsigexit ;
 int log (int ,char*,int ,int ,int ,int ,int,char*) ;
 int sigprop (int) ;
 scalar_t__ thread_single (struct proc*,int ) ;

void
sigexit(struct thread *td, int sig)
{
 struct proc *p = td->td_proc;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 p->p_acflag |= AXSIG;
 if ((sigprop(sig) & SIGPROP_CORE) &&
     thread_single(p, SINGLE_NO_EXIT) == 0) {
  p->p_sig = sig;







  if (coredump(td) == 0)
   sig |= WCOREFLAG;
  if (kern_logsigexit)
   log(LOG_INFO,
       "pid %d (%s), jid %d, uid %d: exited on "
       "signal %d%s\n", p->p_pid, p->p_comm,
       p->p_ucred->cr_prison->pr_id,
       td->td_ucred->cr_uid,
       sig &~ WCOREFLAG,
       sig & WCOREFLAG ? " (core dumped)" : "");
 } else
  PROC_UNLOCK(p);
 exit1(td, 0, sig);

}
