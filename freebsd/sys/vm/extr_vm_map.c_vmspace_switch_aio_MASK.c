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
struct vmspace {scalar_t__ vm_refcnt; } ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 TYPE_1__* curproc ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmspace*) ; 

void
FUNC4(struct vmspace *newvm)
{
	struct vmspace *oldvm;

	/* XXX: Need some way to assert that this is an aio daemon. */

	FUNC0(newvm->vm_refcnt > 0,
	    ("vmspace_switch_aio: newvm unreferenced"));

	oldvm = curproc->p_vmspace;
	if (oldvm == newvm)
		return;

	/*
	 * Point to the new address space and refer to it.
	 */
	curproc->p_vmspace = newvm;
	FUNC1(&newvm->vm_refcnt, 1);

	/* Activate the new mapping. */
	FUNC2(curthread);

	FUNC3(oldvm);
}