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
typedef  scalar_t__ uid_t ;
struct uidinfo {int dummy; } ;
struct ucred {scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__ cr_uid; } ;
struct thread {struct proc* td_proc; } ;
struct setreuid_args {scalar_t__ euid; scalar_t__ ruid; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETREUID ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC7 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*) ; 
 struct ucred* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct ucred*) ; 
 int FUNC11 (struct ucred*,scalar_t__,scalar_t__) ; 
 int FUNC12 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC15 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC16 (struct proc*) ; 
 struct uidinfo* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct uidinfo*) ; 

int
FUNC19(struct thread *td, struct setreuid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	uid_t euid, ruid;
	struct uidinfo *euip, *ruip;
	int error;

	euid = uap->euid;
	ruid = uap->ruid;
	FUNC0(euid);
	FUNC1(ruid);
	newcred = FUNC9();
	euip = FUNC17(euid);
	ruip = FUNC17(ruid);
	FUNC2(p);
	oldcred = FUNC7(p, newcred);

#ifdef MAC
	error = mac_cred_check_setreuid(oldcred, ruid, euid);
	if (error)
		goto fail;
#endif

	if (((ruid != (uid_t)-1 && ruid != oldcred->cr_ruid &&
	      ruid != oldcred->cr_svuid) ||
	     (euid != (uid_t)-1 && euid != oldcred->cr_uid &&
	      euid != oldcred->cr_ruid && euid != oldcred->cr_svuid)) &&
	    (error = FUNC12(oldcred, PRIV_CRED_SETREUID)) != 0)
		goto fail;

	if (euid != (uid_t)-1 && oldcred->cr_uid != euid) {
		FUNC4(newcred, euip);
		FUNC16(p);
	}
	if (ruid != (uid_t)-1 && oldcred->cr_ruid != ruid) {
		FUNC5(newcred, ruip);
		FUNC16(p);
	}
	if ((ruid != (uid_t)-1 || newcred->cr_uid != newcred->cr_ruid) &&
	    newcred->cr_svuid != newcred->cr_uid) {
		FUNC6(newcred, newcred->cr_uid);
		FUNC16(p);
	}
	FUNC13(p, newcred);
#ifdef RACCT
	racct_proc_ucred_changed(p, oldcred, newcred);
	crhold(newcred);
#endif
	FUNC3(p);
#ifdef RCTL
	rctl_proc_ucred_changed(p, newcred);
	crfree(newcred);
#endif
	FUNC18(ruip);
	FUNC18(euip);
	FUNC8(oldcred);
	return (0);

fail:
	FUNC3(p);
	FUNC18(ruip);
	FUNC18(euip);
	FUNC8(newcred);
	return (error);
}