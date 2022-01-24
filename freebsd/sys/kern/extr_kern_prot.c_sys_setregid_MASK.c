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
struct ucred {scalar_t__ cr_rgid; scalar_t__ cr_svgid; scalar_t__* cr_groups; } ;
struct thread {struct proc* td_proc; } ;
struct setregid_args {scalar_t__ egid; scalar_t__ rgid; } ;
struct proc {int dummy; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETREGID ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC7 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*) ; 
 struct ucred* FUNC9 () ; 
 int FUNC10 (struct ucred*,scalar_t__,scalar_t__) ; 
 int FUNC11 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*) ; 

int
FUNC14(struct thread *td, struct setregid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	gid_t egid, rgid;
	int error;

	egid = uap->egid;
	rgid = uap->rgid;
	FUNC0(egid);
	FUNC1(rgid);
	newcred = FUNC9();
	FUNC2(p);
	oldcred = FUNC7(p, newcred);

#ifdef MAC
	error = mac_cred_check_setregid(oldcred, rgid, egid);
	if (error)
		goto fail;
#endif

	if (((rgid != (gid_t)-1 && rgid != oldcred->cr_rgid &&
	    rgid != oldcred->cr_svgid) ||
	     (egid != (gid_t)-1 && egid != oldcred->cr_groups[0] &&
	     egid != oldcred->cr_rgid && egid != oldcred->cr_svgid)) &&
	    (error = FUNC11(oldcred, PRIV_CRED_SETREGID)) != 0)
		goto fail;

	if (egid != (gid_t)-1 && oldcred->cr_groups[0] != egid) {
		FUNC4(newcred, egid);
		FUNC13(p);
	}
	if (rgid != (gid_t)-1 && oldcred->cr_rgid != rgid) {
		FUNC5(newcred, rgid);
		FUNC13(p);
	}
	if ((rgid != (gid_t)-1 || newcred->cr_groups[0] != newcred->cr_rgid) &&
	    newcred->cr_svgid != newcred->cr_groups[0]) {
		FUNC6(newcred, newcred->cr_groups[0]);
		FUNC13(p);
	}
	FUNC12(p, newcred);
	FUNC3(p);
	FUNC8(oldcred);
	return (0);

fail:
	FUNC3(p);
	FUNC8(newcred);
	return (error);
}