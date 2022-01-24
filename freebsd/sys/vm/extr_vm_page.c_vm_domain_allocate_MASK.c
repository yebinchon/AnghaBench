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
typedef  scalar_t__ u_int ;
struct vm_domain {scalar_t__ vmd_interrupt_free_min; scalar_t__ vmd_free_reserved; scalar_t__ vmd_free_count; scalar_t__ vmd_free_min; scalar_t__ vmd_free_severe; int /*<<< orphan*/  vmd_domain; } ;

/* Variables and functions */
 int VM_ALLOC_CLASS_MASK ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_SYSTEM ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ curproc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ pageproc ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domain*) ; 
 scalar_t__ FUNC3 (struct vm_domain*,scalar_t__) ; 

int
FUNC4(struct vm_domain *vmd, int req, int npages)
{
	u_int limit, old, new;

	req = req & VM_ALLOC_CLASS_MASK;

	/*
	 * The page daemon is allowed to dig deeper into the free page list.
	 */
	if (curproc == pageproc && req != VM_ALLOC_INTERRUPT)
		req = VM_ALLOC_SYSTEM;
	if (req == VM_ALLOC_INTERRUPT)
		limit = 0;
	else if (req == VM_ALLOC_SYSTEM)
		limit = vmd->vmd_interrupt_free_min;
	else
		limit = vmd->vmd_free_reserved;

	/*
	 * Attempt to reserve the pages.  Fail if we're below the limit.
	 */
	limit += npages;
	old = vmd->vmd_free_count;
	do {
		if (old < limit)
			return (0);
		new = old - npages;
	} while (FUNC0(&vmd->vmd_free_count, &old, new) == 0);

	/* Wake the page daemon if we've crossed the threshold. */
	if (FUNC3(vmd, new) && !FUNC3(vmd, old))
		FUNC1(vmd->vmd_domain);

	/* Only update bitsets on transitions. */
	if ((old >= vmd->vmd_free_min && new < vmd->vmd_free_min) ||
	    (old >= vmd->vmd_free_severe && new < vmd->vmd_free_severe))
		FUNC2(vmd);

	return (1);
}