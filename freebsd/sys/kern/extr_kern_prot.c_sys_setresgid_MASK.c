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
struct setresgid_args {scalar_t__ egid; scalar_t__ rgid; scalar_t__ sgid; } ;
struct proc {int dummy; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETRESGID ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC8 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*) ; 
 struct ucred* FUNC10 () ; 
 int FUNC11 (struct ucred*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC12 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*) ; 

int
FUNC15(struct thread *td, struct setresgid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	gid_t egid, rgid, sgid;
	int error;

	egid = uap->egid;
	rgid = uap->rgid;
	sgid = uap->sgid;
	FUNC0(egid);
	FUNC1(rgid);
	FUNC2(sgid);
	newcred = FUNC10();
	FUNC3(p);
	oldcred = FUNC8(p, newcred);

#ifdef MAC
	error = mac_cred_check_setresgid(oldcred, rgid, egid, sgid);
	if (error)
		goto fail;
#endif

	if (((rgid != (gid_t)-1 && rgid != oldcred->cr_rgid &&
	      rgid != oldcred->cr_svgid &&
	      rgid != oldcred->cr_groups[0]) ||
	     (egid != (gid_t)-1 && egid != oldcred->cr_rgid &&
	      egid != oldcred->cr_svgid &&
	      egid != oldcred->cr_groups[0]) ||
	     (sgid != (gid_t)-1 && sgid != oldcred->cr_rgid &&
	      sgid != oldcred->cr_svgid &&
	      sgid != oldcred->cr_groups[0])) &&
	    (error = FUNC12(oldcred, PRIV_CRED_SETRESGID)) != 0)
		goto fail;

	if (egid != (gid_t)-1 && oldcred->cr_groups[0] != egid) {
		FUNC5(newcred, egid);
		FUNC14(p);
	}
	if (rgid != (gid_t)-1 && oldcred->cr_rgid != rgid) {
		FUNC6(newcred, rgid);
		FUNC14(p);
	}
	if (sgid != (gid_t)-1 && oldcred->cr_svgid != sgid) {
		FUNC7(newcred, sgid);
		FUNC14(p);
	}
	FUNC13(p, newcred);
	FUNC4(p);
	FUNC9(oldcred);
	return (0);

fail:
	FUNC4(p);
	FUNC9(newcred);
	return (error);
}