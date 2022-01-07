
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_sigmask; struct proc* td_proc; } ;
struct proc {int p_numthreads; TYPE_1__* p_sigacts; } ;
typedef int sigset_t ;
struct TYPE_2__ {int ps_mtx; } ;


 int EINVAL ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGPROCMASK_OLD ;
 int SIGPROCMASK_PROC_LOCKED ;
 int SIGPROCMASK_PS_LOCKED ;
 int SIGSETLO (int ,int ) ;
 int SIGSETNAND (int ,int ) ;
 int SIGSETOR (int ,int ) ;

 int SIG_CANTMASK (int ) ;


 int mtx_assert (int *,int ) ;
 int reschedule_signals (struct proc*,int ,int) ;
 int signotify (struct thread*) ;

int
kern_sigprocmask(struct thread *td, int how, sigset_t *set, sigset_t *oset,
    int flags)
{
 sigset_t new_block, oset1;
 struct proc *p;
 int error;

 p = td->td_proc;
 if ((flags & SIGPROCMASK_PROC_LOCKED) != 0)
  PROC_LOCK_ASSERT(p, MA_OWNED);
 else
  PROC_LOCK(p);
 mtx_assert(&p->p_sigacts->ps_mtx, (flags & SIGPROCMASK_PS_LOCKED) != 0
     ? MA_OWNED : MA_NOTOWNED);
 if (oset != ((void*)0))
  *oset = td->td_sigmask;

 error = 0;
 if (set != ((void*)0)) {
  switch (how) {
  case 130:
   SIG_CANTMASK(*set);
   oset1 = td->td_sigmask;
   SIGSETOR(td->td_sigmask, *set);
   new_block = td->td_sigmask;
   SIGSETNAND(new_block, oset1);
   break;
  case 128:
   SIGSETNAND(td->td_sigmask, *set);
   signotify(td);
   goto out;
  case 129:
   SIG_CANTMASK(*set);
   oset1 = td->td_sigmask;
   if (flags & SIGPROCMASK_OLD)
    SIGSETLO(td->td_sigmask, *set);
   else
    td->td_sigmask = *set;
   new_block = td->td_sigmask;
   SIGSETNAND(new_block, oset1);
   signotify(td);
   break;
  default:
   error = EINVAL;
   goto out;
  }
  if (p->p_numthreads != 1)
   reschedule_signals(p, new_block, flags);
 }

out:
 if (!(flags & SIGPROCMASK_PROC_LOCKED))
  PROC_UNLOCK(p);
 return (error);
}
