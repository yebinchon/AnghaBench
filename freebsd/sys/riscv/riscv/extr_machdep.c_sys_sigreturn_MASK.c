#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {int gp_sstatus; } ;
struct TYPE_8__ {TYPE_1__ mc_gpregs; } ;
struct TYPE_7__ {int /*<<< orphan*/  uc_sigmask; TYPE_3__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
typedef  int /*<<< orphan*/  uc ;
struct thread {int dummy; } ;
struct sigreturn_args {int /*<<< orphan*/  sigcntxp; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int SSTATUS_SPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,TYPE_3__*) ; 
 int FUNC3 (struct thread*,TYPE_3__*) ; 

int
FUNC4(struct thread *td, struct sigreturn_args *uap)
{
	uint64_t sstatus;
	ucontext_t uc;
	int error;

	if (uap == NULL)
		return (EFAULT);
	if (FUNC0(uap->sigcntxp, &uc, sizeof(uc)))
		return (EFAULT);

	/*
	 * Make sure the processor mode has not been tampered with and
	 * interrupts have not been disabled.
	 * Supervisor interrupts in user mode are always enabled.
	 */
	sstatus = uc.uc_mcontext.mc_gpregs.gp_sstatus;
	if ((sstatus & SSTATUS_SPP) != 0)
		return (EINVAL);

	error = FUNC3(td, &uc.uc_mcontext);
	if (error != 0)
		return (error);

	FUNC2(td, &uc.uc_mcontext);

	/* Restore signal mask. */
	FUNC1(td, SIG_SETMASK, &uc.uc_sigmask, NULL, 0);

	return (EJUSTRETURN);
}