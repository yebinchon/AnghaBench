#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  _mc_tstate; int /*<<< orphan*/  _mc_sp; int /*<<< orphan*/  _mc_tpc; } ;
struct TYPE_5__ {int /*<<< orphan*/  uc_sigmask; TYPE_2__ uc_mcontext; } ;
typedef  TYPE_1__ ucontext_t ;
typedef  int /*<<< orphan*/  uc ;
struct thread {struct proc* td_proc; } ;
struct sigreturn_args {int /*<<< orphan*/  sigcntxp; } ;
struct proc {int dummy; } ;
typedef  TYPE_2__ mcontext_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  KTR_SIG ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct thread*) ; 
 int FUNC7 (struct thread*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC9(struct thread *td, struct sigreturn_args *uap)
{
	struct proc *p;
	mcontext_t *mc;
	ucontext_t uc;
	int error;

	p = td->td_proc;
	if (FUNC6(td)) {
		FUNC3(p);
		FUNC8(td, SIGILL);
	}

	FUNC1(KTR_SIG, "sigreturn: td=%p ucp=%p", td, uap->sigcntxp);
	if (FUNC4(uap->sigcntxp, &uc, sizeof(uc)) != 0) {
		FUNC0(KTR_SIG, "sigreturn: efault td=%p", td);
		return (EFAULT);
	}

	mc = &uc.uc_mcontext;
	error = FUNC7(td, mc);
	if (error != 0)
		return (error);

	FUNC5(td, SIG_SETMASK, &uc.uc_sigmask, NULL, 0);

	FUNC2(KTR_SIG, "sigreturn: return td=%p pc=%#lx sp=%#lx tstate=%#lx",
	    td, mc->_mc_tpc, mc->_mc_sp, mc->_mc_tstate);
	return (EJUSTRETURN);
}