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
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_3__ {int aflags; } ;

/* Variables and functions */
 int MINCORE_INCORE ; 
 int MINCORE_MODIFIED ; 
 int MINCORE_MODIFIED_OTHER ; 
 int MINCORE_REFERENCED ; 
 int MINCORE_REFERENCED_OTHER ; 
 int PGA_REFERENCED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_D ; 
 int /*<<< orphan*/  PTE_MANAGED ; 
 int /*<<< orphan*/  PTE_V ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
	pt_entry_t *ptep, pte;
	vm_paddr_t pa;
	vm_page_t m;
	int val;

	FUNC1(pmap);
	ptep = FUNC4(pmap, addr);
	pte = (ptep != NULL) ? *ptep : 0;
	if (!FUNC5(&pte, PTE_V)) {
		FUNC2(pmap);
		return (0);
	}
	val = MINCORE_INCORE;
	if (FUNC5(&pte, PTE_D))
		val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
	pa = FUNC3(pte);
	if (FUNC5(&pte, PTE_MANAGED)) {
		/*
		 * This may falsely report the given address as
		 * MINCORE_REFERENCED.  Unfortunately, due to the lack of
		 * per-PTE reference information, it is impossible to
		 * determine if the address is MINCORE_REFERENCED.
		 */
		m = FUNC0(pa);
		if ((m->aflags & PGA_REFERENCED) != 0)
			val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
	}
	if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
	    (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) &&
	    FUNC5(&pte, PTE_MANAGED)) {
		*pap = pa;
	}
	FUNC2(pmap);
	return (val);
}