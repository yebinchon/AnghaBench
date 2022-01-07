
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int td_pflags; int td_sigmask; int td_oldsigmask; int td_sigqueue; struct proc* td_proc; } ;
struct sigacts {scalar_t__* ps_sigact; int ps_mtx; } ;
struct proc {int p_stops; int p_sig; TYPE_1__* p_sysent; int p_sigqueue; struct sigacts* p_sigacts; } ;
typedef int sigset_t ;
typedef scalar_t__ sig_t ;
struct TYPE_8__ {int ksi_signo; scalar_t__ ksi_code; int ksi_info; int ksi_timerid; } ;
typedef TYPE_2__ ksiginfo_t ;
struct TYPE_7__ {int (* sv_sendsig ) (scalar_t__,TYPE_2__*,int *) ;} ;


 int KASSERT (int,char*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_PSIG ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SIGISMEMBER (int ,int) ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 scalar_t__ SI_TIMER ;
 int S_SIG ;
 int TDP_OLDMASK ;
 size_t _SIG_IDX (int) ;
 struct thread* curthread ;
 int itimer_accept (struct proc*,int ,TYPE_2__*) ;
 int ksiginfo_init (TYPE_2__*) ;
 int ktrpsig (int,scalar_t__,int *,scalar_t__) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int postsig_done (int,struct thread*,struct sigacts*) ;
 int proc_td_siginfo_capture (struct thread*,int *) ;
 int sigexit (struct thread*,int) ;
 scalar_t__ sigqueue_get (int *,int,TYPE_2__*) ;
 int stopevent (struct proc*,int,int) ;
 int stub1 (scalar_t__,TYPE_2__*,int *) ;

int
postsig(int sig)
{
 struct thread *td;
 struct proc *p;
 struct sigacts *ps;
 sig_t action;
 ksiginfo_t ksi;
 sigset_t returnmask;

 KASSERT(sig != 0, ("postsig"));

 td = curthread;
 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 ps = p->p_sigacts;
 mtx_assert(&ps->ps_mtx, MA_OWNED);
 ksiginfo_init(&ksi);
 if (sigqueue_get(&td->td_sigqueue, sig, &ksi) == 0 &&
     sigqueue_get(&p->p_sigqueue, sig, &ksi) == 0)
  return (0);
 ksi.ksi_signo = sig;
 if (ksi.ksi_code == SI_TIMER)
  itimer_accept(p, ksi.ksi_timerid, &ksi);
 action = ps->ps_sigact[_SIG_IDX(sig)];





 if ((p->p_stops & S_SIG) != 0) {
  mtx_unlock(&ps->ps_mtx);
  stopevent(p, S_SIG, sig);
  mtx_lock(&ps->ps_mtx);
 }

 if (action == SIG_DFL) {




  mtx_unlock(&ps->ps_mtx);
  proc_td_siginfo_capture(td, &ksi.ksi_info);
  sigexit(td, sig);

 } else {



  KASSERT(action != SIG_IGN, ("postsig action %p", action));
  KASSERT(!SIGISMEMBER(td->td_sigmask, sig),
      ("postsig action: blocked sig %d", sig));
  if (td->td_pflags & TDP_OLDMASK) {
   returnmask = td->td_oldsigmask;
   td->td_pflags &= ~TDP_OLDMASK;
  } else
   returnmask = td->td_sigmask;

  if (p->p_sig == sig) {
   p->p_sig = 0;
  }
  (*p->p_sysent->sv_sendsig)(action, &ksi, &returnmask);
  postsig_done(sig, td, ps);
 }
 return (1);
}
