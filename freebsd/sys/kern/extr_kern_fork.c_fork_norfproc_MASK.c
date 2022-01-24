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
struct proc {int p_flag; struct filedesc* p_fd; } ;
struct filedesc {int dummy; } ;

/* Variables and functions */
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int P_HADTHREADS ; 
 int P_SYSTEM ; 
 int RFCFDG ; 
 int RFFDG ; 
 int RFPROC ; 
 int /*<<< orphan*/  SINGLE_BOUNDARY ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 struct filedesc* FUNC4 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 scalar_t__ FUNC6 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(struct thread *td, int flags)
{
	int error;
	struct proc *p1;

	FUNC0((flags & RFPROC) == 0,
	    ("fork_norfproc called with RFPROC set"));
	p1 = td->td_proc;

	if (((p1->p_flag & (P_HADTHREADS|P_SYSTEM)) == P_HADTHREADS) &&
	    (flags & (RFCFDG | RFFDG))) {
		FUNC1(p1);
		if (FUNC6(p1, SINGLE_BOUNDARY)) {
			FUNC2(p1);
			return (ERESTART);
		}
		FUNC2(p1);
	}

	error = FUNC8(td, NULL, NULL, NULL, flags);
	if (error)
		goto fail;

	/*
	 * Close all file descriptors.
	 */
	if (flags & RFCFDG) {
		struct filedesc *fdtmp;
		fdtmp = FUNC4(td->td_proc->p_fd, false);
		FUNC3(td);
		p1->p_fd = fdtmp;
	}

	/*
	 * Unshare file descriptors (from parent).
	 */
	if (flags & RFFDG)
		FUNC5(td);

fail:
	if (((p1->p_flag & (P_HADTHREADS|P_SYSTEM)) == P_HADTHREADS) &&
	    (flags & (RFCFDG | RFFDG))) {
		FUNC1(p1);
		FUNC7(p1, SINGLE_BOUNDARY);
		FUNC2(p1);
	}
	return (error);
}