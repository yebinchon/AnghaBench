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
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initproc ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 

void
FUNC7(int ecode)
{
	struct thread *td;
	struct proc *p;

	td = curthread;
	p = td->td_proc;

	/*
	 * Reparent curthread from proc0 to init so that the zombie
	 * is harvested.
	 */
	FUNC4(&proctree_lock);
	FUNC0(p);
	FUNC3(p, initproc, true);
	FUNC1(p);
	FUNC5(&proctree_lock);

	/*
	 * Wakeup anyone waiting for us to exit.
	 */
	FUNC6(p);

	/* Buh-bye! */
	FUNC2(td, ecode, 0);
}