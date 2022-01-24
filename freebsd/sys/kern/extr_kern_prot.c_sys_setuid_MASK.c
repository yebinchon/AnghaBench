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
struct setuid_args {scalar_t__ uid; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETUID ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC6 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucred*) ; 
 struct ucred* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*) ; 
 int FUNC10 (struct ucred*,scalar_t__) ; 
 int FUNC11 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC13 (struct proc*,struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC15 (struct proc*) ; 
 struct uidinfo* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct uidinfo*) ; 

int
FUNC18(struct thread *td, struct setuid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	uid_t uid;
	struct uidinfo *uip;
	int error;

	uid = uap->uid;
	FUNC0(uid);
	newcred = FUNC8();
	uip = FUNC16(uid);
	FUNC1(p);
	/*
	 * Copy credentials so other references do not see our changes.
	 */
	oldcred = FUNC6(p, newcred);

#ifdef MAC
	error = mac_cred_check_setuid(oldcred, uid);
	if (error)
		goto fail;
#endif

	/*
	 * See if we have "permission" by POSIX 1003.1 rules.
	 *
	 * Note that setuid(geteuid()) is a special case of
	 * "appropriate privileges" in appendix B.4.2.2.  We need
	 * to use this clause to be compatible with traditional BSD
	 * semantics.  Basically, it means that "setuid(xx)" sets all
	 * three id's (assuming you have privs).
	 *
	 * Notes on the logic.  We do things in three steps.
	 * 1: We determine if the euid is going to change, and do EPERM
	 *    right away.  We unconditionally change the euid later if this
	 *    test is satisfied, simplifying that part of the logic.
	 * 2: We determine if the real and/or saved uids are going to
	 *    change.  Determined by compile options.
	 * 3: Change euid last. (after tests in #2 for "appropriate privs")
	 */
	if (uid != oldcred->cr_ruid &&		/* allow setuid(getuid()) */
#ifdef _POSIX_SAVED_IDS
	    uid != oldcred->cr_svuid &&		/* allow setuid(saved gid) */
#endif
#ifdef POSIX_APPENDIX_B_4_2_2	/* Use BSD-compat clause from B.4.2.2 */
	    uid != oldcred->cr_uid &&		/* allow setuid(geteuid()) */
#endif
	    (error = FUNC11(oldcred, PRIV_CRED_SETUID)) != 0)
		goto fail;

#ifdef _POSIX_SAVED_IDS
	/*
	 * Do we have "appropriate privileges" (are we root or uid == euid)
	 * If so, we are changing the real uid and/or saved uid.
	 */
	if (
#ifdef POSIX_APPENDIX_B_4_2_2	/* Use the clause from B.4.2.2 */
	    uid == oldcred->cr_uid ||
#endif
	    /* We are using privs. */
	    priv_check_cred(oldcred, PRIV_CRED_SETUID) == 0)
#endif
	{
		/*
		 * Set the real uid and transfer proc count to new user.
		 */
		if (uid != oldcred->cr_ruid) {
			FUNC4(newcred, uip);
			FUNC15(p);
		}
		/*
		 * Set saved uid
		 *
		 * XXX always set saved uid even if not _POSIX_SAVED_IDS, as
		 * the security of seteuid() depends on it.  B.4.2.2 says it
		 * is important that we should do this.
		 */
		if (uid != oldcred->cr_svuid) {
			FUNC5(newcred, uid);
			FUNC15(p);
		}
	}

	/*
	 * In all permitted cases, we are changing the euid.
	 */
	if (uid != oldcred->cr_uid) {
		FUNC3(newcred, uip);
		FUNC15(p);
	}
	FUNC12(p, newcred);
#ifdef RACCT
	racct_proc_ucred_changed(p, oldcred, newcred);
	crhold(newcred);
#endif
	FUNC2(p);
#ifdef RCTL
	rctl_proc_ucred_changed(p, newcred);
	crfree(newcred);
#endif
	FUNC17(uip);
	FUNC7(oldcred);
	return (0);

fail:
	FUNC2(p);
	FUNC17(uip);
	FUNC7(newcred);
	return (error);
}