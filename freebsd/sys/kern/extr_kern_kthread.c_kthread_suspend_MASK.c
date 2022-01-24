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
struct thread {int td_pflags; int /*<<< orphan*/  td_flags; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_mtx; } ;

/* Variables and functions */
 int EINVAL ; 
 int PDROP ; 
 int PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  TDF_KTH_SUSP ; 
 int TDP_KTHREAD ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

int
FUNC4(struct thread *td, int timo)
{
	struct proc *p;

	p = td->td_proc;

	/*
	 * td_pflags should not be read by any thread other than
	 * curthread, but as long as this flag is invariant during the
	 * thread's lifetime, it is OK to check its state.
	 */
	if ((td->td_pflags & TDP_KTHREAD) == 0)
		return (EINVAL);

	/*
	 * The caller of the primitive should have already checked that the
	 * thread is up and running, thus not being blocked by other
	 * conditions.
	 */
	FUNC0(p);
	FUNC2(td);
	td->td_flags |= TDF_KTH_SUSP;
	FUNC3(td);
	return (FUNC1(&td->td_flags, &p->p_mtx, PPAUSE | PDROP, "suspkt",
	    timo));
}