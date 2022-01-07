
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_15__ {uintptr_t ss_size; scalar_t__ ss_sp; int ss_flags; } ;
struct TYPE_13__ {int md_flags; scalar_t__ md_tls; } ;
struct thread {int td_pflags; TYPE_8__* td_frame; TYPE_5__ td_sigstk; TYPE_3__ td_md; struct proc* td_proc; } ;
struct TYPE_17__ {int si_signo; int si_addr; void* si_code; } ;
struct TYPE_14__ {int mc_onstack; int mc_fpused; int * mc_fpregs; int * mc_regs; void* mc_tls; int mulhi; int mullo; int mc_pc; } ;
struct TYPE_12__ {uintptr_t ss_size; int ss_flags; void* ss_sp; } ;
struct TYPE_16__ {TYPE_4__ uc_mcontext; TYPE_2__ uc_stack; int uc_sigmask; } ;
struct sigframe32 {TYPE_7__ sf_si; TYPE_6__ sf_uc; } ;
struct sigacts {int ps_mtx; int ps_siginfo; int ps_sigonstack; } ;
struct reg32 {int * r_regs; } ;
struct proc {TYPE_1__* p_sysent; struct sigacts* p_sigacts; } ;
struct fpreg32 {int * r_regs; } ;
typedef int sigset_t ;
typedef scalar_t__ sig_t ;
typedef void* register_t ;
struct TYPE_19__ {int ksi_signo; void* ksi_code; } ;
typedef TYPE_9__ ksiginfo_t ;
typedef void* int32_t ;
typedef int __int64_t ;
struct TYPE_18__ {int sp; int a0; void* ra; void* t9; void* pc; int badvaddr; int a3; void* a1; void* a2; } ;
struct TYPE_11__ {void** sv_szsigcode; } ;


 scalar_t__ FREEBSD32_PS_STRINGS ;
 int MA_OWNED ;
 int MDTD_FPUSED ;
 size_t MULHI ;
 size_t MULLO ;
 int MipsSaveCurFPState (struct thread*) ;
 size_t PC ;
 struct thread* PCPU_GET (int ) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGILL ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int TDP_ALTSTACK ;
 int UCONTEXT_MAGIC ;
 int bzero (struct sigframe32*,int) ;
 scalar_t__ copyout (struct sigframe32*,struct sigframe32*,int) ;
 struct thread* curthread ;
 int fill_fpregs32 (struct thread*,struct fpreg32*) ;
 int fill_regs32 (struct thread*,struct reg32*) ;
 int fpcurthread ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sigexit (struct thread*,int ) ;
 int sigonstack (int) ;

__attribute__((used)) static void
freebsd32_sendsig(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
 struct proc *p;
 struct thread *td;
 struct fpreg32 fpregs;
 struct reg32 regs;
 struct sigacts *psp;
 struct sigframe32 sf, *sfp;
 int sig;
 int oonstack;
 unsigned i;

 td = curthread;
 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 sig = ksi->ksi_signo;
 psp = p->p_sigacts;
 mtx_assert(&psp->ps_mtx, MA_OWNED);

 fill_regs32(td, &regs);
 oonstack = sigonstack(td->td_frame->sp);


 bzero(&sf, sizeof sf);
 sf.sf_uc.uc_sigmask = *mask;
 sf.sf_uc.uc_stack.ss_sp = (int32_t)(intptr_t)td->td_sigstk.ss_sp;
 sf.sf_uc.uc_stack.ss_size = td->td_sigstk.ss_size;
 sf.sf_uc.uc_stack.ss_flags = td->td_sigstk.ss_flags;
 sf.sf_uc.uc_mcontext.mc_onstack = (oonstack) ? 1 : 0;
 sf.sf_uc.uc_mcontext.mc_pc = regs.r_regs[PC];
 sf.sf_uc.uc_mcontext.mullo = regs.r_regs[MULLO];
 sf.sf_uc.uc_mcontext.mulhi = regs.r_regs[MULHI];
 sf.sf_uc.uc_mcontext.mc_tls = (int32_t)(intptr_t)td->td_md.md_tls;
 sf.sf_uc.uc_mcontext.mc_regs[0] = UCONTEXT_MAGIC;
 for (i = 1; i < 32; i++)
  sf.sf_uc.uc_mcontext.mc_regs[i] = regs.r_regs[i];
 sf.sf_uc.uc_mcontext.mc_fpused = td->td_md.md_flags & MDTD_FPUSED;
 if (sf.sf_uc.uc_mcontext.mc_fpused) {

  if (td == PCPU_GET(fpcurthread))
   MipsSaveCurFPState(td);
  fill_fpregs32(td, &fpregs);
  for (i = 0; i < 33; i++)
   sf.sf_uc.uc_mcontext.mc_fpregs[i] = fpregs.r_regs[i];
 }


 if ((td->td_pflags & TDP_ALTSTACK) != 0 && !oonstack &&
     SIGISMEMBER(psp->ps_sigonstack, sig)) {
  sfp = (struct sigframe32 *)(((uintptr_t)td->td_sigstk.ss_sp +
      td->td_sigstk.ss_size - sizeof(struct sigframe32))
      & ~(sizeof(__int64_t) - 1));
 } else
  sfp = (struct sigframe32 *)((vm_offset_t)(td->td_frame->sp -
      sizeof(struct sigframe32)) & ~(sizeof(__int64_t) - 1));


 td->td_frame->a0 = sig;
 td->td_frame->a2 = (register_t)(intptr_t)&sfp->sf_uc;
 if (SIGISMEMBER(psp->ps_siginfo, sig)) {

  td->td_frame->a1 = (register_t)(intptr_t)&sfp->sf_si;



  sf.sf_si.si_signo = sig;
  sf.sf_si.si_code = ksi->ksi_code;
  sf.sf_si.si_addr = td->td_frame->badvaddr;
 } else {

  td->td_frame->a1 = ksi->ksi_code;
  td->td_frame->a3 = td->td_frame->badvaddr;

 }

 mtx_unlock(&psp->ps_mtx);
 PROC_UNLOCK(p);




 if (copyout(&sf, sfp, sizeof(struct sigframe32)) != 0) {




  PROC_LOCK(p);
  sigexit(td, SIGILL);
 }

 td->td_frame->pc = (register_t)(intptr_t)catcher;
 td->td_frame->t9 = (register_t)(intptr_t)catcher;
 td->td_frame->sp = (register_t)(intptr_t)sfp;



 td->td_frame->ra = (register_t)(intptr_t)FREEBSD32_PS_STRINGS - *(p->p_sysent->sv_szsigcode);
 PROC_LOCK(p);
 mtx_lock(&psp->ps_mtx);
}
