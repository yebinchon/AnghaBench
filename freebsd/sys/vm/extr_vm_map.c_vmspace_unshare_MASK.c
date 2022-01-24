#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_ooffset_t ;
struct vmspace {int vm_refcnt; } ;
struct proc {struct vmspace* p_vmspace; int /*<<< orphan*/  p_ucred; } ;
struct TYPE_3__ {struct proc* td_proc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct vmspace* FUNC4 (struct vmspace*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmspace*) ; 

int
FUNC6(struct proc *p)
{
	struct vmspace *oldvmspace = p->p_vmspace;
	struct vmspace *newvmspace;
	vm_ooffset_t fork_charge;

	if (oldvmspace->vm_refcnt == 1)
		return (0);
	fork_charge = 0;
	newvmspace = FUNC4(oldvmspace, &fork_charge);
	if (newvmspace == NULL)
		return (ENOMEM);
	if (!FUNC3(fork_charge, p->p_ucred)) {
		FUNC5(newvmspace);
		return (ENOMEM);
	}
	FUNC0(p);
	p->p_vmspace = newvmspace;
	FUNC1(p);
	if (p == curthread->td_proc)
		FUNC2(curthread);
	FUNC5(oldvmspace);
	return (0);
}