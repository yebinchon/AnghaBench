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
struct seteuid_args {scalar_t__ euid; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETEUID ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct uidinfo*) ; 
 struct ucred* FUNC4 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*) ; 
 struct ucred* FUNC6 () ; 
 int FUNC7 (struct ucred*,scalar_t__) ; 
 int FUNC8 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 
 struct uidinfo* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct uidinfo*) ; 

int
FUNC13(struct thread *td, struct seteuid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	uid_t euid;
	struct uidinfo *euip;
	int error;

	euid = uap->euid;
	FUNC0(euid);
	newcred = FUNC6();
	euip = FUNC11(euid);
	FUNC1(p);
	/*
	 * Copy credentials so other references do not see our changes.
	 */
	oldcred = FUNC4(p, newcred);

#ifdef MAC
	error = mac_cred_check_seteuid(oldcred, euid);
	if (error)
		goto fail;
#endif

	if (euid != oldcred->cr_ruid &&		/* allow seteuid(getuid()) */
	    euid != oldcred->cr_svuid &&	/* allow seteuid(saved uid) */
	    (error = FUNC8(oldcred, PRIV_CRED_SETEUID)) != 0)
		goto fail;

	/*
	 * Everything's okay, do it.
	 */
	if (oldcred->cr_uid != euid) {
		FUNC3(newcred, euip);
		FUNC10(p);
	}
	FUNC9(p, newcred);
	FUNC2(p);
	FUNC12(euip);
	FUNC5(oldcred);
	return (0);

fail:
	FUNC2(p);
	FUNC12(euip);
	FUNC5(newcred);
	return (error);
}