#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct TYPE_15__ {uintptr_t ss_size; scalar_t__ ss_sp; int /*<<< orphan*/  ss_flags; } ;
struct TYPE_13__ {int md_flags; scalar_t__ md_tls; } ;
struct thread {int td_pflags; TYPE_8__* td_frame; TYPE_5__ td_sigstk; TYPE_3__ td_md; struct proc* td_proc; } ;
struct TYPE_17__ {int si_signo; int /*<<< orphan*/  si_addr; void* si_code; } ;
struct TYPE_14__ {int mc_onstack; int mc_fpused; int /*<<< orphan*/ * mc_fpregs; int /*<<< orphan*/ * mc_regs; void* mc_tls; int /*<<< orphan*/  mulhi; int /*<<< orphan*/  mullo; int /*<<< orphan*/  mc_pc; } ;
struct TYPE_12__ {uintptr_t ss_size; int /*<<< orphan*/  ss_flags; void* ss_sp; } ;
struct TYPE_16__ {TYPE_4__ uc_mcontext; TYPE_2__ uc_stack; int /*<<< orphan*/  uc_sigmask; } ;
struct sigframe32 {TYPE_7__ sf_si; TYPE_6__ sf_uc; } ;
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_siginfo; int /*<<< orphan*/  ps_sigonstack; } ;
struct reg32 {int /*<<< orphan*/ * r_regs; } ;
struct proc {TYPE_1__* p_sysent; struct sigacts* p_sigacts; } ;
struct fpreg32 {int /*<<< orphan*/ * r_regs; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ sig_t ;
typedef  void* register_t ;
struct TYPE_19__ {int ksi_signo; void* ksi_code; } ;
typedef  TYPE_9__ ksiginfo_t ;
typedef  void* int32_t ;
typedef  int /*<<< orphan*/  __int64_t ;
struct TYPE_18__ {int sp; int a0; void* ra; void* t9; void* pc; int /*<<< orphan*/  badvaddr; int /*<<< orphan*/  a3; void* a1; void* a2; } ;
struct TYPE_11__ {void** sv_szsigcode; } ;

/* Variables and functions */
 scalar_t__ FREEBSD32_PS_STRINGS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MDTD_FPUSED ; 
 size_t MULHI ; 
 size_t MULLO ; 
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 size_t PC ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  SIGILL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int TDP_ALTSTACK ; 
 int /*<<< orphan*/  UCONTEXT_MAGIC ; 
 int /*<<< orphan*/  FUNC6 (struct sigframe32*,int) ; 
 scalar_t__ FUNC7 (struct sigframe32*,struct sigframe32*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,struct fpreg32*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*,struct reg32*) ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
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
	FUNC3(p, MA_OWNED);
	sig = ksi->ksi_signo;
	psp = p->p_sigacts;
	FUNC10(&psp->ps_mtx, MA_OWNED);

	FUNC9(td, &regs);
	oonstack = FUNC14(td->td_frame->sp);

	/* save user context */
	FUNC6(&sf, sizeof sf);
	sf.sf_uc.uc_sigmask = *mask;
	sf.sf_uc.uc_stack.ss_sp = (int32_t)(intptr_t)td->td_sigstk.ss_sp;
	sf.sf_uc.uc_stack.ss_size = td->td_sigstk.ss_size;
	sf.sf_uc.uc_stack.ss_flags = td->td_sigstk.ss_flags;
	sf.sf_uc.uc_mcontext.mc_onstack = (oonstack) ? 1 : 0;
	sf.sf_uc.uc_mcontext.mc_pc = regs.r_regs[PC];
	sf.sf_uc.uc_mcontext.mullo = regs.r_regs[MULLO];
	sf.sf_uc.uc_mcontext.mulhi = regs.r_regs[MULHI];
	sf.sf_uc.uc_mcontext.mc_tls = (int32_t)(intptr_t)td->td_md.md_tls;
	sf.sf_uc.uc_mcontext.mc_regs[0] = UCONTEXT_MAGIC;  /* magic number */
	for (i = 1; i < 32; i++)
		sf.sf_uc.uc_mcontext.mc_regs[i] = regs.r_regs[i];
	sf.sf_uc.uc_mcontext.mc_fpused = td->td_md.md_flags & MDTD_FPUSED;
	if (sf.sf_uc.uc_mcontext.mc_fpused) {
		/* if FPU has current state, save it first */
		if (td == FUNC1(fpcurthread))
			FUNC0(td);
		FUNC8(td, &fpregs);
		for (i = 0; i < 33; i++)
			sf.sf_uc.uc_mcontext.mc_fpregs[i] = fpregs.r_regs[i];
	}

	/* Allocate and validate space for the signal handler context. */
	if ((td->td_pflags & TDP_ALTSTACK) != 0 && !oonstack &&
	    FUNC5(psp->ps_sigonstack, sig)) {
		sfp = (struct sigframe32 *)(((uintptr_t)td->td_sigstk.ss_sp +
		    td->td_sigstk.ss_size - sizeof(struct sigframe32))
		    & ~(sizeof(__int64_t) - 1));
	} else
		sfp = (struct sigframe32 *)((vm_offset_t)(td->td_frame->sp - 
		    sizeof(struct sigframe32)) & ~(sizeof(__int64_t) - 1));

	/* Build the argument list for the signal handler. */
	td->td_frame->a0 = sig;
	td->td_frame->a2 = (register_t)(intptr_t)&sfp->sf_uc;
	if (FUNC5(psp->ps_siginfo, sig)) {
		/* Signal handler installed with SA_SIGINFO. */
		td->td_frame->a1 = (register_t)(intptr_t)&sfp->sf_si;
		/* sf.sf_ahu.sf_action = (__siginfohandler_t *)catcher; */

		/* fill siginfo structure */
		sf.sf_si.si_signo = sig;
		sf.sf_si.si_code = ksi->ksi_code;
		sf.sf_si.si_addr = td->td_frame->badvaddr;
	} else {
		/* Old FreeBSD-style arguments. */
		td->td_frame->a1 = ksi->ksi_code;
		td->td_frame->a3 = td->td_frame->badvaddr;
		/* sf.sf_ahu.sf_handler = catcher; */
	}

	FUNC12(&psp->ps_mtx);
	FUNC4(p);

	/*
	 * Copy the sigframe out to the user's stack.
	 */
	if (FUNC7(&sf, sfp, sizeof(struct sigframe32)) != 0) {
		/*
		 * Something is wrong with the stack pointer.
		 * ...Kill the process.
		 */
		FUNC2(p);
		FUNC13(td, SIGILL);
	}

	td->td_frame->pc = (register_t)(intptr_t)catcher;
	td->td_frame->t9 = (register_t)(intptr_t)catcher;
	td->td_frame->sp = (register_t)(intptr_t)sfp;
	/*
	 * Signal trampoline code is at base of user stack.
	 */
	td->td_frame->ra = (register_t)(intptr_t)FREEBSD32_PS_STRINGS - *(p->p_sysent->sv_szsigcode);
	FUNC2(p);
	FUNC11(&psp->ps_mtx);
}