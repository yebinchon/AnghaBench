#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_sigmask; struct proc* td_proc; } ;
struct sigacts {scalar_t__* ps_sigact; int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigignore; int /*<<< orphan*/  ps_sigcatch; } ;
struct proc {int p_flag; int p_sig; TYPE_1__* p_sysent; struct sigacts* p_sigacts; } ;
struct TYPE_7__ {int ksi_signo; int ksi_code; } ;
typedef  TYPE_2__ ksiginfo_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* sv_sendsig ) (scalar_t__,TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_PSIG ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int P_TRACED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 size_t FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ kern_forcesigexit ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,struct thread*,struct sigacts*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*,struct thread*,int,TYPE_2__*) ; 

void
FUNC14(struct thread *td, ksiginfo_t *ksi)
{
	struct sigacts *ps;
	struct proc *p;
	int sig;
	int code;

	p = td->td_proc;
	sig = ksi->ksi_signo;
	code = ksi->ksi_code;
	FUNC0(FUNC7(sig), ("invalid signal"));

	FUNC2(p);
	ps = p->p_sigacts;
	FUNC9(&ps->ps_mtx);
	if ((p->p_flag & P_TRACED) == 0 && FUNC5(ps->ps_sigcatch, sig) &&
	    !FUNC5(td->td_sigmask, sig)) {
#ifdef KTRACE
		if (KTRPOINT(curthread, KTR_PSIG))
			ktrpsig(sig, ps->ps_sigact[_SIG_IDX(sig)],
			    &td->td_sigmask, code);
#endif
		(*p->p_sysent->sv_sendsig)(ps->ps_sigact[FUNC6(sig)],
				ksi, &td->td_sigmask);
		FUNC11(sig, td, ps);
		FUNC10(&ps->ps_mtx);
	} else {
		/*
		 * Avoid a possible infinite loop if the thread
		 * masking the signal or process is ignoring the
		 * signal.
		 */
		if (kern_forcesigexit &&
		    (FUNC5(td->td_sigmask, sig) ||
		     ps->ps_sigact[FUNC6(sig)] == SIG_IGN)) {
			FUNC4(td->td_sigmask, sig);
			FUNC4(ps->ps_sigcatch, sig);
			FUNC4(ps->ps_sigignore, sig);
			ps->ps_sigact[FUNC6(sig)] = SIG_DFL;
		}
		FUNC10(&ps->ps_mtx);
		p->p_sig = sig;		/* XXX to verify code */
		FUNC13(p, td, sig, ksi);
	}
	FUNC3(p);
}