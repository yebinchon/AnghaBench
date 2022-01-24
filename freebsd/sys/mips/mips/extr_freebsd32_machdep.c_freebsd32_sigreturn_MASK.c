#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * mc_gpr; int /*<<< orphan*/  mc_srr0; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; int /*<<< orphan*/  uc_sigmask; } ;
typedef  TYPE_1__ ucontext32_t ;
typedef  int /*<<< orphan*/  uc ;
struct thread {int dummy; } ;
struct freebsd32_sigreturn_args {int /*<<< orphan*/  sigcntxp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  KTR_SIG ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,TYPE_2__*) ; 

int
FUNC6(struct thread *td, struct freebsd32_sigreturn_args *uap)
{
	ucontext32_t uc;
	int error;

	FUNC1(KTR_SIG, "sigreturn: td=%p ucp=%p", td, uap->sigcntxp);

	if (FUNC3(uap->sigcntxp, &uc, sizeof(uc)) != 0) {
		FUNC0(KTR_SIG, "sigreturn: efault td=%p", td);
		return (EFAULT);
	}

	error = FUNC5(td, &uc.uc_mcontext);
	if (error != 0)
		return (error);

	FUNC4(td, SIG_SETMASK, &uc.uc_sigmask, NULL, 0);

#if 0
	CTR3(KTR_SIG, "sigreturn: return td=%p pc=%#x sp=%#x",
	     td, uc.uc_mcontext.mc_srr0, uc.uc_mcontext.mc_gpr[1]);
#endif

	return (EJUSTRETURN);
}