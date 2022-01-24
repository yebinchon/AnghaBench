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
struct vmspace {int dummy; } ;
struct thread {int td_pflags; struct proc* td_proc; } ;
struct proc {int p_flag; struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int P_HADTHREADS ; 
 int /*<<< orphan*/  SINGLE_BOUNDARY ; 
 int /*<<< orphan*/  SINGLE_EXIT ; 
 int TDP_EXECVMSPC ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmspace*) ; 

void
FUNC6(struct thread *td, int error, struct vmspace *oldvmspace)
{
	struct proc *p;

	FUNC0(td == curthread, ("non-current thread %p", td));
	p = td->td_proc;
	if ((p->p_flag & P_HADTHREADS) != 0) {
		FUNC1(p);
		/*
		 * If success, we upgrade to SINGLE_EXIT state to
		 * force other threads to suicide.
		 */
		if (error == EJUSTRETURN)
			FUNC3(p, SINGLE_EXIT);
		else
			FUNC4(p, SINGLE_BOUNDARY);
		FUNC2(p);
	}
	if ((td->td_pflags & TDP_EXECVMSPC) != 0) {
		FUNC0(p->p_vmspace != oldvmspace,
		    ("oldvmspace still used"));
		FUNC5(oldvmspace);
		td->td_pflags &= ~TDP_EXECVMSPC;
	}
}