
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int * td_retval; struct proc* td_proc; } ;
struct proc {void* p_xsig; int p_pid; int p_ksi; int p_flag; } ;
struct TYPE_3__ {int si_code; void* si_status; } ;
typedef TYPE_1__ siginfo_t ;


 int CLD_CONTINUED ;
 int CLD_STOPPED ;
 int CLD_TRAPPED ;
 int MA_OWNED ;
 int MPASS (int) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTINUED ;
 int P_WAITED ;
 int SA_XLOCKED ;
 void* SIGCONT ;
 int WNOWAIT ;
 void* W_STOPCODE (void*) ;
 int proctree_lock ;
 int sigqueue_take (int ) ;
 int sx_assert (int *,int ) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
report_alive_proc(struct thread *td, struct proc *p, siginfo_t *siginfo,
    int *status, int options, int si_code)
{
 bool cont;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 sx_assert(&proctree_lock, SA_XLOCKED);
 MPASS(si_code == CLD_TRAPPED || si_code == CLD_STOPPED ||
     si_code == CLD_CONTINUED);

 cont = si_code == CLD_CONTINUED;
 if ((options & WNOWAIT) == 0) {
  if (cont)
   p->p_flag &= ~P_CONTINUED;
  else
   p->p_flag |= P_WAITED;
  PROC_LOCK(td->td_proc);
  sigqueue_take(p->p_ksi);
  PROC_UNLOCK(td->td_proc);
 }
 sx_xunlock(&proctree_lock);
 if (siginfo != ((void*)0)) {
  siginfo->si_code = si_code;
  siginfo->si_status = cont ? SIGCONT : p->p_xsig;
 }
 if (status != ((void*)0))
  *status = cont ? SIGCONT : W_STOPCODE(p->p_xsig);
 PROC_UNLOCK(p);
 td->td_retval[0] = p->p_pid;
}
