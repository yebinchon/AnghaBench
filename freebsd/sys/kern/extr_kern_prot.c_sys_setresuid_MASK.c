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
struct setresuid_args {scalar_t__ euid; scalar_t__ ruid; scalar_t__ suid; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETRESUID ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC8 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*) ; 
 struct ucred* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct ucred*) ; 
 int FUNC12 (struct ucred*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC13 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC15 (struct proc*,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC16 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC17 (struct proc*) ; 
 struct uidinfo* FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct uidinfo*) ; 

int
FUNC20(struct thread *td, struct setresuid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	uid_t euid, ruid, suid;
	struct uidinfo *euip, *ruip;
	int error;

	euid = uap->euid;
	ruid = uap->ruid;
	suid = uap->suid;
	FUNC0(euid);
	FUNC1(ruid);
	FUNC2(suid);
	newcred = FUNC10();
	euip = FUNC18(euid);
	ruip = FUNC18(ruid);
	FUNC3(p);
	oldcred = FUNC8(p, newcred);

#ifdef MAC
	error = mac_cred_check_setresuid(oldcred, ruid, euid, suid);
	if (error)
		goto fail;
#endif

	if (((ruid != (uid_t)-1 && ruid != oldcred->cr_ruid &&
	     ruid != oldcred->cr_svuid &&
	      ruid != oldcred->cr_uid) ||
	     (euid != (uid_t)-1 && euid != oldcred->cr_ruid &&
	    euid != oldcred->cr_svuid &&
	      euid != oldcred->cr_uid) ||
	     (suid != (uid_t)-1 && suid != oldcred->cr_ruid &&
	    suid != oldcred->cr_svuid &&
	      suid != oldcred->cr_uid)) &&
	    (error = FUNC13(oldcred, PRIV_CRED_SETRESUID)) != 0)
		goto fail;

	if (euid != (uid_t)-1 && oldcred->cr_uid != euid) {
		FUNC5(newcred, euip);
		FUNC17(p);
	}
	if (ruid != (uid_t)-1 && oldcred->cr_ruid != ruid) {
		FUNC6(newcred, ruip);
		FUNC17(p);
	}
	if (suid != (uid_t)-1 && oldcred->cr_svuid != suid) {
		FUNC7(newcred, suid);
		FUNC17(p);
	}
	FUNC14(p, newcred);
#ifdef RACCT
	racct_proc_ucred_changed(p, oldcred, newcred);
	crhold(newcred);
#endif
	FUNC4(p);
#ifdef RCTL
	rctl_proc_ucred_changed(p, newcred);
	crfree(newcred);
#endif
	FUNC19(ruip);
	FUNC19(euip);
	FUNC9(oldcred);
	return (0);

fail:
	FUNC4(p);
	FUNC19(ruip);
	FUNC19(euip);
	FUNC9(newcred);
	return (error);

}