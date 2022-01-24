#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ucred {struct loginclass* cr_loginclass; } ;
struct thread {struct proc* td_proc; } ;
struct setloginclass_args {int /*<<< orphan*/  namebuf; } ;
struct proc {int dummy; } ;
struct loginclass {int dummy; } ;
typedef  int /*<<< orphan*/  lcname ;

/* Variables and functions */
 int EINVAL ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  PRIV_PROC_SETLOGINCLASS ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 struct ucred* FUNC3 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*) ; 
 struct ucred* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*) ; 
 struct loginclass* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct loginclass*) ; 
 int FUNC9 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,struct ucred*) ; 

int
FUNC13(struct thread *td, struct setloginclass_args *uap)
{
	struct proc *p = td->td_proc;
	int error;
	char lcname[MAXLOGNAME];
	struct loginclass *newlc;
	struct ucred *newcred, *oldcred;

	error = FUNC9(td, PRIV_PROC_SETLOGINCLASS);
	if (error != 0)
		return (error);
	error = FUNC2(uap->namebuf, lcname, sizeof(lcname), NULL);
	if (error != 0)
		return (error);

	newlc = FUNC7(lcname);
	if (newlc == NULL)
		return (EINVAL);
	newcred = FUNC5();

	FUNC0(p);
	oldcred = FUNC3(p, newcred);
	newcred->cr_loginclass = newlc;
	FUNC10(p, newcred);
#ifdef RACCT
	racct_proc_ucred_changed(p, oldcred, newcred);
	crhold(newcred);
#endif
	FUNC1(p);
#ifdef RCTL
	rctl_proc_ucred_changed(p, newcred);
	crfree(newcred);
#endif
	FUNC8(oldcred->cr_loginclass);
	FUNC4(oldcred);

	return (0);
}