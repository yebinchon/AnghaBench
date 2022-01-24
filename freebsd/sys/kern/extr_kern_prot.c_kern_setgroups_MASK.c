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
typedef  scalar_t__ u_int ;
struct ucred {int cr_ngroups; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PRIV_CRED_SETGROUPS ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 struct ucred* FUNC4 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*) ; 
 struct ucred* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ucred*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ ngroups_max ; 
 int FUNC10 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*) ; 

int
FUNC13(struct thread *td, u_int ngrp, gid_t *groups)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	int error;

	FUNC1(ngrp <= ngroups_max + 1);
	FUNC0(groups, ngrp);
	newcred = FUNC7();
	FUNC5(newcred, ngrp);
	FUNC2(p);
	oldcred = FUNC4(p, newcred);

#ifdef MAC
	error = mac_cred_check_setgroups(oldcred, ngrp, groups);
	if (error)
		goto fail;
#endif

	error = FUNC10(oldcred, PRIV_CRED_SETGROUPS);
	if (error)
		goto fail;

	if (ngrp == 0) {
		/*
		 * setgroups(0, NULL) is a legitimate way of clearing the
		 * groups vector on non-BSD systems (which generally do not
		 * have the egid in the groups[0]).  We risk security holes
		 * when running non-BSD software if we do not do the same.
		 */
		newcred->cr_ngroups = 1;
	} else {
		FUNC8(newcred, ngrp, groups);
	}
	FUNC12(p);
	FUNC11(p, newcred);
	FUNC3(p);
	FUNC6(oldcred);
	return (0);

fail:
	FUNC3(p);
	FUNC6(newcred);
	return (error);
}