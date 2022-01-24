#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {struct prison* cr_prison; } ;
struct thread {TYPE_1__* td_ucred; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct prison {int /*<<< orphan*/  pr_root; int /*<<< orphan*/  pr_cpuset; int /*<<< orphan*/  pr_mtx; int /*<<< orphan*/  pr_uref; int /*<<< orphan*/  pr_ref; } ;
struct TYPE_2__ {struct prison* cr_prison; } ;

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PD_DEREF ; 
 int PD_DEUREF ; 
 int PD_LIST_SLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  PR_METHOD_ATTACH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allprison_lock ; 
 int FUNC3 (int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 
 struct ucred* FUNC5 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*) ; 
 struct ucred* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct prison*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct prison*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*,struct ucred*) ; 
 int FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct proc*,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC16 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC17 (struct proc*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC20(struct thread *td, struct prison *pr)
{
	struct proc *p;
	struct ucred *newcred, *oldcred;
	int error;

	/*
	 * XXX: Note that there is a slight race here if two threads
	 * in the same privileged process attempt to attach to two
	 * different jails at the same time.  It is important for
	 * user processes not to do this, or they might end up with
	 * a process root from one prison, but attached to the jail
	 * of another.
	 */
	pr->pr_ref++;
	pr->pr_uref++;
	FUNC10(&pr->pr_mtx);

	/* Let modules do whatever they need to prepare for attaching. */
	error = FUNC11(pr, PR_METHOD_ATTACH, td);
	if (error) {
		FUNC12(pr, PD_DEREF | PD_DEUREF | PD_LIST_SLOCKED);
		return (error);
	}
	FUNC18(&allprison_lock);

	/*
	 * Reparent the newly attached process to this jail.
	 */
	p = td->td_proc;
	error = FUNC4(p, pr->pr_cpuset);
	if (error)
		goto e_revert_osd;

	FUNC19(pr->pr_root, LK_EXCLUSIVE | LK_RETRY);
	if ((error = FUNC3(pr->pr_root, td)) != 0)
		goto e_unlock;
#ifdef MAC
	if ((error = mac_vnode_check_chroot(td->td_ucred, pr->pr_root)))
		goto e_unlock;
#endif
	FUNC2(pr->pr_root, 0);
	if ((error = FUNC14(td, pr->pr_root)))
		goto e_revert_osd;

	newcred = FUNC7();
	FUNC0(p);
	oldcred = FUNC5(p, newcred);
	newcred->cr_prison = pr;
	FUNC13(p, newcred);
	FUNC17(p);
#ifdef RACCT
	racct_proc_ucred_changed(p, oldcred, newcred);
	crhold(newcred);
#endif
	FUNC1(p);
#ifdef RCTL
	rctl_proc_ucred_changed(p, newcred);
	crfree(newcred);
#endif
	FUNC12(oldcred->cr_prison, PD_DEREF | PD_DEUREF);
	FUNC6(oldcred);
	return (0);

 e_unlock:
	FUNC2(pr->pr_root, 0);
 e_revert_osd:
	/* Tell modules this thread is still in its old jail after all. */
	(void)FUNC11(td->td_ucred->cr_prison, PR_METHOD_ATTACH, td);
	FUNC12(pr, PD_DEREF | PD_DEUREF);
	return (error);
}