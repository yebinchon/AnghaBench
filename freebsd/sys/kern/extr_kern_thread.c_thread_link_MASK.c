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
struct thread {int /*<<< orphan*/  td_slpcallout; int /*<<< orphan*/  td_sigqueue; int /*<<< orphan*/  td_epochs; int /*<<< orphan*/ * td_lprof; int /*<<< orphan*/  td_contested; int /*<<< orphan*/  td_flags; struct proc* td_proc; int /*<<< orphan*/  td_state; } ;
struct proc {int /*<<< orphan*/  p_numthreads; int /*<<< orphan*/  p_threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDF_INMEM ; 
 int /*<<< orphan*/  TDS_INACTIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct proc*) ; 
 int /*<<< orphan*/  td_plist ; 

void
FUNC5(struct thread *td, struct proc *p)
{

	/*
	 * XXX This can't be enabled because it's called for proc0 before
	 * its lock has been created.
	 * PROC_LOCK_ASSERT(p, MA_OWNED);
	 */
	td->td_state    = TDS_INACTIVE;
	td->td_proc     = p;
	td->td_flags    = TDF_INMEM;

	FUNC0(&td->td_contested);
	FUNC0(&td->td_lprof[0]);
	FUNC0(&td->td_lprof[1]);
#ifdef EPOCH_TRACE
	SLIST_INIT(&td->td_epochs);
#endif
	FUNC4(&td->td_sigqueue, p);
	FUNC3(&td->td_slpcallout, 1);
	FUNC2(&p->p_threads, td, td_plist);
	p->p_numthreads++;
}