#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct thread {TYPE_2__* td_ucred; TYPE_1__* td_proc; } ;
struct proc {int dummy; } ;
struct kill_args {int pid; scalar_t__ signum; } ;
struct TYPE_9__ {int ksi_pid; int /*<<< orphan*/  ksi_uid; int /*<<< orphan*/  ksi_code; scalar_t__ ksi_signo; } ;
typedef  TYPE_3__ ksiginfo_t ;
struct TYPE_8__ {int /*<<< orphan*/  cr_ruid; } ;
struct TYPE_7__ {int p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int ECAPMODE ; 
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  SI_USER ; 
 scalar_t__ _SIG_MAXSIG ; 
 int FUNC5 (struct thread*,scalar_t__,int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (struct thread*,struct proc*,scalar_t__) ; 
 struct proc* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*,scalar_t__,TYPE_3__*) ; 

int
FUNC10(struct thread *td, struct kill_args *uap)
{
	ksiginfo_t ksi;
	struct proc *p;
	int error;

	/*
	 * A process in capability mode can send signals only to himself.
	 * The main rationale behind this is that abort(3) is implemented as
	 * kill(getpid(), SIGABRT).
	 */
	if (FUNC3(td) && uap->pid != td->td_proc->p_pid)
		return (ECAPMODE);

	FUNC2(uap->signum);
	FUNC0(uap->pid);
	if ((u_int)uap->signum > _SIG_MAXSIG)
		return (EINVAL);

	FUNC6(&ksi);
	ksi.ksi_signo = uap->signum;
	ksi.ksi_code = SI_USER;
	ksi.ksi_pid = td->td_proc->p_pid;
	ksi.ksi_uid = td->td_ucred->cr_ruid;

	if (uap->pid > 0) {
		/* kill single process */
		if ((p = FUNC8(uap->pid)) == NULL)
			return (ESRCH);
		FUNC1(p);
		error = FUNC7(td, p, uap->signum);
		if (error == 0 && uap->signum)
			FUNC9(p, uap->signum, &ksi);
		FUNC4(p);
		return (error);
	}
	switch (uap->pid) {
	case -1:		/* broadcast signal */
		return (FUNC5(td, uap->signum, 0, 1, &ksi));
	case 0:			/* signal own process group */
		return (FUNC5(td, uap->signum, 0, 0, &ksi));
	default:		/* negative explicit process group */
		return (FUNC5(td, uap->signum, -uap->pid, 0, &ksi));
	}
	/* NOTREACHED */
}