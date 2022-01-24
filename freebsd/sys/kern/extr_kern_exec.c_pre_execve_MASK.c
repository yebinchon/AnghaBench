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
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int P_HADTHREADS ; 
 int /*<<< orphan*/  SINGLE_BOUNDARY ; 
 int TDP_EXECVMSPC ; 
 struct thread* curthread ; 
 scalar_t__ FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct vmspace **oldvmspace)
{
	struct proc *p;
	int error;

	FUNC0(td == curthread, ("non-current thread %p", td));
	error = 0;
	p = td->td_proc;
	if ((p->p_flag & P_HADTHREADS) != 0) {
		FUNC1(p);
		if (FUNC3(p, SINGLE_BOUNDARY) != 0)
			error = ERESTART;
		FUNC2(p);
	}
	FUNC0(error != 0 || (td->td_pflags & TDP_EXECVMSPC) == 0,
	    ("nested execve"));
	*oldvmspace = p->p_vmspace;
	return (error);
}