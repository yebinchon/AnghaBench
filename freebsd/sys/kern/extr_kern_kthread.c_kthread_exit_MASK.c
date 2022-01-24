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
struct proc {int p_numthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PMC_FN_THR_EXIT_LOG ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  td_hash ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  tidhash_lock ; 
 int /*<<< orphan*/  FUNC11 (struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*) ; 

void
FUNC13(void)
{
	struct proc *p;
	struct thread *td;

	td = curthread;
	p = td->td_proc;

#ifdef HWPMC_HOOKS
	if (PMC_SYSTEM_SAMPLING_ACTIVE())
		PMC_CALL_HOOK_UNLOCKED(td, PMC_FN_THR_EXIT_LOG, NULL);
#endif
	/* A module may be waiting for us to exit. */
	FUNC12(td);

	/*
	 * The last exiting thread in a kernel process must tear down
	 * the whole process.
	 */
	FUNC7(&tidhash_lock);
	FUNC3(p);
	if (p->p_numthreads == 1) {
		FUNC5(p);
		FUNC8(&tidhash_lock);
		FUNC6(0);
	}
	FUNC0(td, td_hash);
	FUNC8(&tidhash_lock);
	FUNC11(td);
	FUNC9(td);
	FUNC4(p);
	FUNC10();
}