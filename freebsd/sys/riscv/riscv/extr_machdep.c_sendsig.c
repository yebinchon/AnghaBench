
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int* tf_a; void* tf_sp; void* tf_sepc; void* tf_ra; } ;
struct TYPE_5__ {int ss_flags; scalar_t__ ss_size; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; struct proc* td_proc; TYPE_1__ td_sigstk; struct trapframe* td_frame; } ;
struct sysentvec {scalar_t__ sv_sigcode_base; scalar_t__* sv_szsigcode; scalar_t__ sv_psstrings; } ;
struct TYPE_6__ {TYPE_1__ uc_stack; int uc_sigmask; int uc_mcontext; } ;
struct sigframe {TYPE_2__ sf_uc; int sf_si; } ;
struct sigacts {int ps_mtx; int ps_sigonstack; } ;
struct proc {struct sysentvec* p_sysent; int p_comm; struct sigacts* p_sigacts; } ;
typedef int sigset_t ;
typedef scalar_t__ sig_t ;
typedef void* register_t ;
struct TYPE_7__ {int ksi_signo; int ksi_info; } ;
typedef TYPE_3__ ksiginfo_t ;
typedef int frame ;


 int CTR2 (int ,char*,struct thread*,struct sigframe*) ;
 int CTR3 (int ,char*,struct thread*,void*,void*) ;
 int CTR4 (int ,char*,struct thread*,int ,scalar_t__,int) ;
 int KTR_SIG ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGILL ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SS_DISABLE ;
 int SS_ONSTACK ;
 scalar_t__ STACKALIGN (struct sigframe*) ;
 int TDP_ALTSTACK ;
 int bzero (struct sigframe*,int) ;
 scalar_t__ copyout (struct sigframe*,struct sigframe*,int) ;
 struct thread* curthread ;
 int get_fpcontext (struct thread*,int *) ;
 int get_mcontext (struct thread*,int *,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sigexit (struct thread*,int ) ;
 int sigonstack (void*) ;

void
sendsig(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
 struct sigframe *fp, frame;
 struct sysentvec *sysent;
 struct trapframe *tf;
 struct sigacts *psp;
 struct thread *td;
 struct proc *p;
 int onstack;
 int sig;

 td = curthread;
 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);

 sig = ksi->ksi_signo;
 psp = p->p_sigacts;
 mtx_assert(&psp->ps_mtx, MA_OWNED);

 tf = td->td_frame;
 onstack = sigonstack(tf->tf_sp);

 CTR4(KTR_SIG, "sendsig: td=%p (%s) catcher=%p sig=%d", td, p->p_comm,
     catcher, sig);


 if ((td->td_pflags & TDP_ALTSTACK) != 0 && !onstack &&
     SIGISMEMBER(psp->ps_sigonstack, sig)) {
  fp = (struct sigframe *)((uintptr_t)td->td_sigstk.ss_sp +
      td->td_sigstk.ss_size);
 } else {
  fp = (struct sigframe *)td->td_frame->tf_sp;
 }


 fp--;
 fp = (struct sigframe *)STACKALIGN(fp);


 bzero(&frame, sizeof(frame));
 get_mcontext(td, &frame.sf_uc.uc_mcontext, 0);
 get_fpcontext(td, &frame.sf_uc.uc_mcontext);
 frame.sf_si = ksi->ksi_info;
 frame.sf_uc.uc_sigmask = *mask;
 frame.sf_uc.uc_stack = td->td_sigstk;
 frame.sf_uc.uc_stack.ss_flags = (td->td_pflags & TDP_ALTSTACK) != 0 ?
     (onstack ? SS_ONSTACK : 0) : SS_DISABLE;
 mtx_unlock(&psp->ps_mtx);
 PROC_UNLOCK(td->td_proc);


 if (copyout(&frame, fp, sizeof(*fp)) != 0) {

  CTR2(KTR_SIG, "sendsig: sigexit td=%p fp=%p", td, fp);
  PROC_LOCK(p);
  sigexit(td, SIGILL);
 }

 tf->tf_a[0] = sig;
 tf->tf_a[1] = (register_t)&fp->sf_si;
 tf->tf_a[2] = (register_t)&fp->sf_uc;

 tf->tf_sepc = (register_t)catcher;
 tf->tf_sp = (register_t)fp;

 sysent = p->p_sysent;
 if (sysent->sv_sigcode_base != 0)
  tf->tf_ra = (register_t)sysent->sv_sigcode_base;
 else
  tf->tf_ra = (register_t)(sysent->sv_psstrings -
      *(sysent->sv_szsigcode));

 CTR3(KTR_SIG, "sendsig: return td=%p pc=%#x sp=%#x", td, tf->tf_sepc,
     tf->tf_sp);

 PROC_LOCK(p);
 mtx_lock(&psp->ps_mtx);
}
