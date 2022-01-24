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
struct thread {struct proc* td_proc; } ;
struct setpgid_args {scalar_t__ pgid; scalar_t__ pid; } ;
struct proc {scalar_t__ p_pid; scalar_t__ p_session; int p_flag; struct pgrp* p_pgrp; } ;
struct pgrp {scalar_t__ pg_id; scalar_t__ pg_session; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_PGRP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int P_EXEC ; 
 scalar_t__ FUNC3 (struct proc*) ; 
 int FUNC4 (struct proc*,scalar_t__,struct pgrp*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct proc*,struct pgrp*) ; 
 int /*<<< orphan*/  FUNC6 (struct pgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 struct pgrp* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct thread*,struct proc*) ; 
 struct proc* FUNC10 (scalar_t__) ; 
 struct pgrp* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(struct thread *td, struct setpgid_args *uap)
{
	struct proc *curp = td->td_proc;
	struct proc *targp;	/* target process */
	struct pgrp *pgrp;	/* target pgrp */
	int error;
	struct pgrp *newpgrp;

	if (uap->pgid < 0)
		return (EINVAL);

	error = 0;

	newpgrp = FUNC8(sizeof(struct pgrp), M_PGRP, M_WAITOK | M_ZERO);

	FUNC12(&proctree_lock);
	if (uap->pid != 0 && uap->pid != curp->p_pid) {
		if ((targp = FUNC10(uap->pid)) == NULL) {
			error = ESRCH;
			goto done;
		}
		if (!FUNC7(targp)) {
			FUNC2(targp);
			error = ESRCH;
			goto done;
		}
		if ((error = FUNC9(td, targp))) {
			FUNC2(targp);
			goto done;
		}
		if (targp->p_pgrp == NULL ||
		    targp->p_session != curp->p_session) {
			FUNC2(targp);
			error = EPERM;
			goto done;
		}
		if (targp->p_flag & P_EXEC) {
			FUNC2(targp);
			error = EACCES;
			goto done;
		}
		FUNC2(targp);
	} else
		targp = curp;
	if (FUNC3(targp)) {
		error = EPERM;
		goto done;
	}
	if (uap->pgid == 0)
		uap->pgid = targp->p_pid;
	if ((pgrp = FUNC11(uap->pgid)) == NULL) {
		if (uap->pgid == targp->p_pid) {
			error = FUNC4(targp, uap->pgid, newpgrp,
			    NULL);
			if (error == 0)
				newpgrp = NULL;
		} else
			error = EPERM;
	} else {
		if (pgrp == targp->p_pgrp) {
			FUNC1(pgrp);
			goto done;
		}
		if (pgrp->pg_id != targp->p_pid &&
		    pgrp->pg_session != curp->p_session) {
			FUNC1(pgrp);
			error = EPERM;
			goto done;
		}
		FUNC1(pgrp);
		error = FUNC5(targp, pgrp);
	}
done:
	FUNC13(&proctree_lock);
	FUNC0((error == 0) || (newpgrp != NULL),
	    ("setpgid failed and newpgrp is NULL"));
	if (newpgrp != NULL)
		FUNC6(newpgrp, M_PGRP);
	return (error);
}