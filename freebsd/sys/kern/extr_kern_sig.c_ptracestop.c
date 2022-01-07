
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int td_xsig; int td_dbgflags; int td_sigqueue; int * td_wchan; int td_tid; struct proc* td_proc; } ;
struct TYPE_7__ {int lock_object; } ;
struct proc {int p_flag; int p_flag2; int p_xsig; struct thread* p_xthread; scalar_t__ p_ptevents; int p_pid; TYPE_1__ p_mtx; } ;
struct TYPE_8__ {int ksi_flags; int ksi_signo; } ;
typedef TYPE_2__ ksiginfo_t ;


 int CTR4 (int ,char*,int ,int ,int,int) ;
 int KASSERT (int,char*) ;
 int KSI_HEAD ;
 int KSI_PTRACE ;
 int KTR_PTRACE ;
 int MA_OWNED ;
 int P2_PTRACE_FSTP ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_SUNLOCK (struct proc*) ;
 scalar_t__ P_KILLED (struct proc*) ;
 int P_SINGLE_EXIT ;
 int P_STOPPED_SIG ;
 int P_STOPPED_TRACE ;
 int P_TRACED ;
 int P_WEXIT ;
 int SIGKILL ;
 int TDB_EXIT ;
 int TDB_FSTP ;
 int TDB_STOPATFORK ;
 int TDB_SUSPEND ;
 int TDB_XSIG ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int ksiginfo_init (TYPE_2__*) ;
 int sig_suspend_threads (struct thread*,struct proc*,int ) ;
 int sigprop (int) ;
 scalar_t__ sigqueue_add (int *,int,TYPE_2__*) ;
 struct thread* sigtd (struct proc*,int,int) ;
 int tdsendsignal (struct proc*,struct thread*,int,TYPE_2__*) ;
 int thread_suspend_switch (struct thread*,struct proc*) ;

int
ptracestop(struct thread *td, int sig, ksiginfo_t *si)
{
 struct proc *p = td->td_proc;
 struct thread *td2;
 ksiginfo_t ksi;
 int prop;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 KASSERT(!(p->p_flag & P_WEXIT), ("Stopping exiting process"));
 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK,
     &p->p_mtx.lock_object, "Stopping for traced signal");

 td->td_xsig = sig;

 if (si == ((void*)0) || (si->ksi_flags & KSI_PTRACE) == 0) {
  td->td_dbgflags |= TDB_XSIG;
  CTR4(KTR_PTRACE, "ptracestop: tid %d (pid %d) flags %#x sig %d",
      td->td_tid, p->p_pid, td->td_dbgflags, sig);
  PROC_SLOCK(p);
  while ((p->p_flag & P_TRACED) && (td->td_dbgflags & TDB_XSIG)) {
   if (P_KILLED(p)) {







    td->td_dbgflags &= ~TDB_XSIG;
    td->td_xsig = SIGKILL;
    p->p_ptevents = 0;
    break;
   }
   if (p->p_flag & P_SINGLE_EXIT &&
       !(td->td_dbgflags & TDB_EXIT)) {




    td->td_dbgflags &= ~TDB_XSIG;
    PROC_SUNLOCK(p);
    return (0);
   }
   if ((td->td_dbgflags & TDB_FSTP) != 0 ||
       ((p->p_flag2 & P2_PTRACE_FSTP) == 0 &&
       p->p_xthread == ((void*)0))) {
    p->p_xsig = sig;
    p->p_xthread = td;






    if (td->td_wchan == ((void*)0))
     td->td_dbgflags &= ~TDB_FSTP;

    p->p_flag2 &= ~P2_PTRACE_FSTP;
    p->p_flag |= P_STOPPED_SIG | P_STOPPED_TRACE;
    sig_suspend_threads(td, p, 0);
   }
   if ((td->td_dbgflags & TDB_STOPATFORK) != 0) {
    td->td_dbgflags &= ~TDB_STOPATFORK;
   }
stopme:
   thread_suspend_switch(td, p);
   if (p->p_xthread == td)
    p->p_xthread = ((void*)0);
   if (!(p->p_flag & P_TRACED))
    break;
   if (td->td_dbgflags & TDB_SUSPEND) {
    if (p->p_flag & P_SINGLE_EXIT)
     break;
    goto stopme;
   }
  }
  PROC_SUNLOCK(p);
 }

 if (si != ((void*)0) && sig == td->td_xsig) {

  si->ksi_flags |= KSI_HEAD;
  if (sigqueue_add(&td->td_sigqueue, sig, si) != 0)
   si->ksi_signo = 0;
 } else if (td->td_xsig != 0) {




  ksiginfo_init(&ksi);
  ksi.ksi_signo = td->td_xsig;
  ksi.ksi_flags |= KSI_PTRACE;
  prop = sigprop(td->td_xsig);
  td2 = sigtd(p, td->td_xsig, prop);
  tdsendsignal(p, td2, td->td_xsig, &ksi);
  if (td != td2)
   return (0);
 }

 return (td->td_xsig);
}
