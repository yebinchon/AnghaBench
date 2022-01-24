#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmspace {int vm_refcnt; scalar_t__ vm_shm; } ;
struct TYPE_2__ {struct domainset* dr_policy; } ;
struct thread {TYPE_1__ td_domain; struct proc* td_proc; } ;
struct proc {struct vmspace* p_vmspace; } ;
struct domainset {int /*<<< orphan*/  ds_mask; } ;

/* Variables and functions */
 int RFMEM ; 
 int RFPROC ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,struct proc*,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct proc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct proc*) ; 

int
FUNC6(struct thread *td, struct proc *p2, struct thread *td2,
    struct vmspace *vm2, int flags)
{
	struct proc *p1 = td->td_proc;
	struct domainset *dset;
	int error;

	if ((flags & RFPROC) == 0) {
		/*
		 * Divorce the memory, if it is shared, essentially
		 * this changes shared memory amongst threads, into
		 * COW locally.
		 */
		if ((flags & RFMEM) == 0) {
			if (p1->p_vmspace->vm_refcnt > 1) {
				error = FUNC5(p1);
				if (error)
					return (error);
			}
		}
		FUNC1(td, p2, td2, flags);
		return (0);
	}

	if (flags & RFMEM) {
		p2->p_vmspace = p1->p_vmspace;
		FUNC0(&p1->p_vmspace->vm_refcnt, 1);
	}
	dset = td2->td_domain.dr_policy;
	while (FUNC3(&dset->ds_mask)) {
		FUNC4(&dset->ds_mask);
	}

	if ((flags & RFMEM) == 0) {
		p2->p_vmspace = vm2;
		if (p1->p_vmspace->vm_shm)
			FUNC2(p1, p2);
	}

	/*
	 * cpu_fork will copy and update the pcb, set up the kernel stack,
	 * and make the child ready to run.
	 */
	FUNC1(td, p2, td2, flags);
	return (0);
}