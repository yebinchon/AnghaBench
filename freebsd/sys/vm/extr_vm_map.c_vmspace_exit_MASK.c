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
struct vmspace {int vm_refcnt; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ racct_enable ; 
 struct vmspace vmspace0 ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmspace*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmspace*) ; 

void
FUNC9(struct thread *td)
{
	int refcnt;
	struct vmspace *vm;
	struct proc *p;

	/*
	 * Release user portion of address space.
	 * This releases references to vnodes,
	 * which could cause I/O if the file has been unlinked.
	 * Need to do this early enough that we can still sleep.
	 *
	 * The last exiting process to reach this point releases as
	 * much of the environment as it can. vmspace_dofree() is the
	 * slower fallback in case another process had a temporary
	 * reference to the vmspace.
	 */

	p = td->td_proc;
	vm = p->p_vmspace;
	FUNC2(&vmspace0.vm_refcnt, 1);
	refcnt = vm->vm_refcnt;
	do {
		if (refcnt > 1 && p->p_vmspace != &vmspace0) {
			/* Switch now since other proc might free vmspace */
			FUNC0(p);
			p->p_vmspace = &vmspace0;
			FUNC1(p);
			FUNC4(td);
		}
	} while (!FUNC3(&vm->vm_refcnt, &refcnt, refcnt - 1));
	if (refcnt == 1) {
		if (p->p_vmspace != vm) {
			/* vmspace not yet freed, switch back */
			FUNC0(p);
			p->p_vmspace = vm;
			FUNC1(p);
			FUNC4(td);
		}
		FUNC5(FUNC8(vm));
		/* Switch now since this proc will free vmspace */
		FUNC0(p);
		p->p_vmspace = &vmspace0;
		FUNC1(p);
		FUNC4(td);
		FUNC7(vm);
	}
#ifdef RACCT
	if (racct_enable)
		vmspace_container_reset(p);
#endif
}