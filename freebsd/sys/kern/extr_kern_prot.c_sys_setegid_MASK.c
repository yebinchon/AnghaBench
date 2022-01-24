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
struct setegid_args {scalar_t__ egid; } ;
struct proc {int dummy; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PRIV_CRED_SETEGID ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC4 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*) ; 
 struct ucred* FUNC6 () ; 
 int FUNC7 (struct ucred*,scalar_t__) ; 
 int FUNC8 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 

int
FUNC11(struct thread *td, struct setegid_args *uap)
{
	struct proc *p = td->td_proc;
	struct ucred *newcred, *oldcred;
	gid_t egid;
	int error;

	egid = uap->egid;
	FUNC0(egid);
	newcred = FUNC6();
	FUNC1(p);
	oldcred = FUNC4(p, newcred);

#ifdef MAC
	error = mac_cred_check_setegid(oldcred, egid);
	if (error)
		goto fail;
#endif

	if (egid != oldcred->cr_rgid &&		/* allow setegid(getgid()) */
	    egid != oldcred->cr_svgid &&	/* allow setegid(saved gid) */
	    (error = FUNC8(oldcred, PRIV_CRED_SETEGID)) != 0)
		goto fail;

	if (oldcred->cr_groups[0] != egid) {
		FUNC3(newcred, egid);
		FUNC10(p);
	}
	FUNC9(p, newcred);
	FUNC2(p);
	FUNC5(oldcred);
	return (0);

fail:
	FUNC2(p);
	FUNC5(newcred);
	return (error);
}