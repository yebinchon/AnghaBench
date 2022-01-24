#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/ * pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int PMAP_ENTER_NOSLEEP ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_page_t
FUNC5(pmap_t pmap, vm_offset_t va, u_int flags)
{
	unsigned ptepindex;
	pd_entry_t *pde;
	vm_page_t m;

	/*
	 * Calculate pagetable page index
	 */
	ptepindex = FUNC4(va);
retry:
	/*
	 * Get the page directory entry
	 */
	pde = FUNC3(pmap, va);

	/*
	 * If the page table page is mapped, we just increment the hold
	 * count, and activate it.
	 */
	if (pde != NULL && *pde != NULL) {
		m = FUNC1(FUNC0(*pde));
		m->ref_count++;
	} else {
		/*
		 * Here if the pte page isn't mapped, or if it has been
		 * deallocated.
		 */
		m = FUNC2(pmap, ptepindex, flags);
		if (m == NULL && (flags & PMAP_ENTER_NOSLEEP) == 0)
			goto retry;
	}
	return (m);
}