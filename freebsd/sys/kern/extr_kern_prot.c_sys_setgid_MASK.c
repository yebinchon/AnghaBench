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
struct setgid_args {scalar_t__ gid; } ;
struct proc {int dummy; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETGID ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC6 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucred*) ; 
 struct ucred* FUNC8 () ; 
 int FUNC9 (struct ucred*,scalar_t__) ; 
 int FUNC10 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*) ; 

int
FUNC13(struct thread *td, struct setgid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	gid_t gid;
	int error;

	gid = uap->gid;
	FUNC0(gid);
	newcred = FUNC8();
	FUNC1(p);
	oldcred = FUNC6(p, newcred);

#ifdef MAC
	error = mac_cred_check_setgid(oldcred, gid);
	if (error)
		goto fail;
#endif

	/*
	 * See if we have "permission" by POSIX 1003.1 rules.
	 *
	 * Note that setgid(getegid()) is a special case of
	 * "appropriate privileges" in appendix B.4.2.2.  We need
	 * to use this clause to be compatible with traditional BSD
	 * semantics.  Basically, it means that "setgid(xx)" sets all
	 * three id's (assuming you have privs).
	 *
	 * For notes on the logic here, see setuid() above.
	 */
	if (gid != oldcred->cr_rgid &&		/* allow setgid(getgid()) */
#ifdef _POSIX_SAVED_IDS
	    gid != oldcred->cr_svgid &&		/* allow setgid(saved gid) */
#endif
#ifdef POSIX_APPENDIX_B_4_2_2	/* Use BSD-compat clause from B.4.2.2 */
	    gid != oldcred->cr_groups[0] && /* allow setgid(getegid()) */
#endif
	    (error = FUNC10(oldcred, PRIV_CRED_SETGID)) != 0)
		goto fail;

#ifdef _POSIX_SAVED_IDS
	/*
	 * Do we have "appropriate privileges" (are we root or gid == egid)
	 * If so, we are changing the real uid and saved gid.
	 */
	if (
#ifdef POSIX_APPENDIX_B_4_2_2	/* use the clause from B.4.2.2 */
	    gid == oldcred->cr_groups[0] ||
#endif
	    /* We are using privs. */
	    priv_check_cred(oldcred, PRIV_CRED_SETGID) == 0)
#endif
	{
		/*
		 * Set real gid
		 */
		if (oldcred->cr_rgid != gid) {
			FUNC4(newcred, gid);
			FUNC12(p);
		}
		/*
		 * Set saved gid
		 *
		 * XXX always set saved gid even if not _POSIX_SAVED_IDS, as
		 * the security of setegid() depends on it.  B.4.2.2 says it
		 * is important that we should do this.
		 */
		if (oldcred->cr_svgid != gid) {
			FUNC5(newcred, gid);
			FUNC12(p);
		}
	}
	/*
	 * In all cases permitted cases, we are changing the egid.
	 * Copy credentials so other references do not see our changes.
	 */
	if (oldcred->cr_groups[0] != gid) {
		FUNC3(newcred, gid);
		FUNC12(p);
	}
	FUNC11(p, newcred);
	FUNC2(p);
	FUNC7(oldcred);
	return (0);

fail:
	FUNC2(p);
	FUNC7(newcred);
	return (error);
}