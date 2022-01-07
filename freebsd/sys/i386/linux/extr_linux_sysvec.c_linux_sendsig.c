
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct trapframe {int tf_esp; int tf_eflags; void* tf_ss; void* tf_fs; void* tf_es; void* tf_ds; int tf_cs; int tf_eip; int tf_err; int tf_eax; int tf_ecx; int tf_edx; int tf_ebx; int tf_ebp; int tf_esi; int tf_edi; } ;
struct TYPE_8__ {uintptr_t ss_size; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; TYPE_1__ td_sigstk; struct trapframe* td_frame; struct proc* td_proc; } ;
struct sigacts {int ps_mtx; int ps_sigonstack; int ps_siginfo; } ;
struct proc {struct sigacts* p_sigacts; } ;
struct TYPE_9__ {int sc_esp; int sc_eflags; int sc_esp_at_signal; int sc_trapno; scalar_t__ sc_cr2; int sc_err; void* sc_ss; int sc_cs; int sc_eip; int sc_eax; int sc_ecx; int sc_edx; int sc_ebx; int sc_ebp; int sc_esi; int sc_edi; void* sc_ds; void* sc_es; void* sc_fs; int sc_gs; int sc_mask; } ;
struct l_sigframe {int sf_sig; int * sf_extramask; TYPE_2__ sf_sc; int sf_handler; } ;
typedef int sigset_t ;
typedef int sig_t ;
typedef scalar_t__ register_t ;
struct TYPE_10__ {int __mask; } ;
typedef TYPE_3__ l_sigset_t ;
struct TYPE_11__ {int ksi_signo; int ksi_code; int ksi_trapno; scalar_t__ ksi_addr; } ;
typedef TYPE_4__ ksiginfo_t ;
typedef int frame ;


 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int PSL_D ;
 int PSL_T ;
 int PSL_VM ;
 int SIGILL ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int TDP_ALTSTACK ;
 int _ucodesel ;
 void* _udatasel ;
 int bsd_to_linux_signal (int) ;
 int bsd_to_linux_sigset (int *,TYPE_3__*) ;
 int bsd_to_linux_trapcode (int ) ;
 int bzero (struct l_sigframe*,int) ;
 scalar_t__ copyout (struct l_sigframe*,struct l_sigframe*,int) ;
 struct thread* curthread ;
 int linux_rt_sendsig (int ,TYPE_4__*,int *) ;
 int linux_sigcode ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rgs () ;
 int sigexit (struct thread*,int ) ;
 int sigonstack (int) ;

__attribute__((used)) static void
linux_sendsig(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
 struct thread *td = curthread;
 struct proc *p = td->td_proc;
 struct sigacts *psp;
 struct trapframe *regs;
 struct l_sigframe *fp, frame;
 l_sigset_t lmask;
 int sig, code;
 int oonstack;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 psp = p->p_sigacts;
 sig = ksi->ksi_signo;
 code = ksi->ksi_code;
 mtx_assert(&psp->ps_mtx, MA_OWNED);
 if (SIGISMEMBER(psp->ps_siginfo, sig)) {

  linux_rt_sendsig(catcher, ksi, mask);
  return;
 }
 regs = td->td_frame;
 oonstack = sigonstack(regs->tf_esp);


 if ((td->td_pflags & TDP_ALTSTACK) && !oonstack &&
     SIGISMEMBER(psp->ps_sigonstack, sig)) {
  fp = (struct l_sigframe *)((uintptr_t)td->td_sigstk.ss_sp +
      td->td_sigstk.ss_size - sizeof(struct l_sigframe));
 } else
  fp = (struct l_sigframe *)regs->tf_esp - 1;
 mtx_unlock(&psp->ps_mtx);
 PROC_UNLOCK(p);


 sig = bsd_to_linux_signal(sig);

 bzero(&frame, sizeof(frame));

 frame.sf_handler = catcher;
 frame.sf_sig = sig;

 bsd_to_linux_sigset(mask, &lmask);


 frame.sf_sc.sc_mask = lmask.__mask;
 frame.sf_sc.sc_gs = rgs();
 frame.sf_sc.sc_fs = regs->tf_fs;
 frame.sf_sc.sc_es = regs->tf_es;
 frame.sf_sc.sc_ds = regs->tf_ds;
 frame.sf_sc.sc_edi = regs->tf_edi;
 frame.sf_sc.sc_esi = regs->tf_esi;
 frame.sf_sc.sc_ebp = regs->tf_ebp;
 frame.sf_sc.sc_ebx = regs->tf_ebx;
 frame.sf_sc.sc_esp = regs->tf_esp;
 frame.sf_sc.sc_edx = regs->tf_edx;
 frame.sf_sc.sc_ecx = regs->tf_ecx;
 frame.sf_sc.sc_eax = regs->tf_eax;
 frame.sf_sc.sc_eip = regs->tf_eip;
 frame.sf_sc.sc_cs = regs->tf_cs;
 frame.sf_sc.sc_eflags = regs->tf_eflags;
 frame.sf_sc.sc_esp_at_signal = regs->tf_esp;
 frame.sf_sc.sc_ss = regs->tf_ss;
 frame.sf_sc.sc_err = regs->tf_err;
 frame.sf_sc.sc_cr2 = (register_t)ksi->ksi_addr;
 frame.sf_sc.sc_trapno = bsd_to_linux_trapcode(ksi->ksi_trapno);

 frame.sf_extramask[0] = lmask.__mask;

 if (copyout(&frame, fp, sizeof(frame)) != 0) {




  PROC_LOCK(p);
  sigexit(td, SIGILL);
 }


 regs->tf_esp = (int)fp;
 regs->tf_eip = linux_sigcode;
 regs->tf_eflags &= ~(PSL_T | PSL_VM | PSL_D);
 regs->tf_cs = _ucodesel;
 regs->tf_ds = _udatasel;
 regs->tf_es = _udatasel;
 regs->tf_fs = _udatasel;
 regs->tf_ss = _udatasel;
 PROC_LOCK(p);
 mtx_lock(&psp->ps_mtx);
}
