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
struct thread {int /*<<< orphan*/  td_slpcallout; int /*<<< orphan*/ * td_cpuset; } ;
struct proc {int p_numthreads; scalar_t__ p_exitthreads; } ;

/* Variables and functions */
 struct thread* FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 

void
FUNC11(struct proc *p)
{
	struct thread *td;

	FUNC6(&Giant, MA_NOTOWNED);
	FUNC1(p->p_numthreads == 1, ("multiple threads in thread_wait()"));
	FUNC1(p->p_exitthreads == 0, ("p_exitthreads leaking"));
	td = FUNC0(p);
	/* Lock the last thread so we spin until it exits cpu_throw(). */
	FUNC8(td);
	FUNC10(td);
	FUNC5(td);
	FUNC4(td->td_cpuset);
	td->td_cpuset = NULL;
	FUNC3(td);
	FUNC7(td);
	FUNC2(&td->td_slpcallout);
	FUNC9();	/* check for zombie threads etc. */
}