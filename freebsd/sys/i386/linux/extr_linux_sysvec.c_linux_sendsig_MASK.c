#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int tf_esp; int tf_eflags; void* tf_ss; void* tf_fs; void* tf_es; void* tf_ds; int /*<<< orphan*/  tf_cs; int /*<<< orphan*/  tf_eip; int /*<<< orphan*/  tf_err; int /*<<< orphan*/  tf_eax; int /*<<< orphan*/  tf_ecx; int /*<<< orphan*/  tf_edx; int /*<<< orphan*/  tf_ebx; int /*<<< orphan*/  tf_ebp; int /*<<< orphan*/  tf_esi; int /*<<< orphan*/  tf_edi; } ;
struct TYPE_8__ {uintptr_t ss_size; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; TYPE_1__ td_sigstk; struct trapframe* td_frame; struct proc* td_proc; } ;
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigonstack; int /*<<< orphan*/  ps_siginfo; } ;
struct proc {struct sigacts* p_sigacts; } ;
struct TYPE_9__ {int sc_esp; int sc_eflags; int sc_esp_at_signal; int /*<<< orphan*/  sc_trapno; scalar_t__ sc_cr2; int /*<<< orphan*/  sc_err; void* sc_ss; int /*<<< orphan*/  sc_cs; int /*<<< orphan*/  sc_eip; int /*<<< orphan*/  sc_eax; int /*<<< orphan*/  sc_ecx; int /*<<< orphan*/  sc_edx; int /*<<< orphan*/  sc_ebx; int /*<<< orphan*/  sc_ebp; int /*<<< orphan*/  sc_esi; int /*<<< orphan*/  sc_edi; void* sc_ds; void* sc_es; void* sc_fs; int /*<<< orphan*/  sc_gs; int /*<<< orphan*/  sc_mask; } ;
struct l_sigframe {int sf_sig; int /*<<< orphan*/ * sf_extramask; TYPE_2__ sf_sc; int /*<<< orphan*/  sf_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  sig_t ;
typedef  scalar_t__ register_t ;
struct TYPE_10__ {int /*<<< orphan*/  __mask; } ;
typedef  TYPE_3__ l_sigset_t ;
struct TYPE_11__ {int ksi_signo; int ksi_code; int /*<<< orphan*/  ksi_trapno; scalar_t__ ksi_addr; } ;
typedef  TYPE_4__ ksiginfo_t ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int PSL_D ; 
 int PSL_T ; 
 int PSL_VM ; 
 int /*<<< orphan*/  SIGILL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int TDP_ALTSTACK ; 
 int /*<<< orphan*/  _ucodesel ; 
 void* _udatasel ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l_sigframe*,int) ; 
 scalar_t__ FUNC8 (struct l_sigframe*,struct l_sigframe*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  linux_sigcode ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
	struct thread *td = curthread;
	struct proc *p = td->td_proc;
	struct sigacts *psp;
	struct trapframe *regs;
	struct l_sigframe *fp, frame;
	l_sigset_t lmask;
	int sig, code;
	int oonstack;

	FUNC1(p, MA_OWNED);
	psp = p->p_sigacts;
	sig = ksi->ksi_signo;
	code = ksi->ksi_code;
	FUNC10(&psp->ps_mtx, MA_OWNED);
	if (FUNC3(psp->ps_siginfo, sig)) {
		/* Signal handler installed with SA_SIGINFO. */
		FUNC9(catcher, ksi, mask);
		return;
	}
	regs = td->td_frame;
	oonstack = FUNC15(regs->tf_esp);

	/* Allocate space for the signal handler context. */
	if ((td->td_pflags & TDP_ALTSTACK) && !oonstack &&
	    FUNC3(psp->ps_sigonstack, sig)) {
		fp = (struct l_sigframe *)((uintptr_t)td->td_sigstk.ss_sp +
		    td->td_sigstk.ss_size - sizeof(struct l_sigframe));
	} else
		fp = (struct l_sigframe *)regs->tf_esp - 1;
	FUNC12(&psp->ps_mtx);
	FUNC2(p);

	/* Build the argument list for the signal handler. */
	sig = FUNC4(sig);

	FUNC7(&frame, sizeof(frame));

	frame.sf_handler = catcher;
	frame.sf_sig = sig;

	FUNC5(mask, &lmask);

	/* Build the signal context to be used by sigreturn. */
	frame.sf_sc.sc_mask   = lmask.__mask;
	frame.sf_sc.sc_gs     = FUNC13();
	frame.sf_sc.sc_fs     = regs->tf_fs;
	frame.sf_sc.sc_es     = regs->tf_es;
	frame.sf_sc.sc_ds     = regs->tf_ds;
	frame.sf_sc.sc_edi    = regs->tf_edi;
	frame.sf_sc.sc_esi    = regs->tf_esi;
	frame.sf_sc.sc_ebp    = regs->tf_ebp;
	frame.sf_sc.sc_ebx    = regs->tf_ebx;
	frame.sf_sc.sc_esp    = regs->tf_esp;
	frame.sf_sc.sc_edx    = regs->tf_edx;
	frame.sf_sc.sc_ecx    = regs->tf_ecx;
	frame.sf_sc.sc_eax    = regs->tf_eax;
	frame.sf_sc.sc_eip    = regs->tf_eip;
	frame.sf_sc.sc_cs     = regs->tf_cs;
	frame.sf_sc.sc_eflags = regs->tf_eflags;
	frame.sf_sc.sc_esp_at_signal = regs->tf_esp;
	frame.sf_sc.sc_ss     = regs->tf_ss;
	frame.sf_sc.sc_err    = regs->tf_err;
	frame.sf_sc.sc_cr2    = (register_t)ksi->ksi_addr;
	frame.sf_sc.sc_trapno = FUNC6(ksi->ksi_trapno);

	frame.sf_extramask[0] = lmask.__mask;

	if (FUNC8(&frame, fp, sizeof(frame)) != 0) {
		/*
		 * Process has trashed its stack; give it an illegal
		 * instruction to halt it in its tracks.
		 */
		FUNC0(p);
		FUNC14(td, SIGILL);
	}

	/* Build context to run handler in. */
	regs->tf_esp = (int)fp;
	regs->tf_eip = linux_sigcode;
	regs->tf_eflags &= ~(PSL_T | PSL_VM | PSL_D);
	regs->tf_cs = _ucodesel;
	regs->tf_ds = _udatasel;
	regs->tf_es = _udatasel;
	regs->tf_fs = _udatasel;
	regs->tf_ss = _udatasel;
	FUNC0(p);
	FUNC11(&psp->ps_mtx);
}