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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int L2_OFFSET ; 
 int L3_OFFSET ; 
 int MINCORE_INCORE ; 
 int MINCORE_MODIFIED ; 
 int MINCORE_MODIFIED_OTHER ; 
 int MINCORE_REFERENCED ; 
 int MINCORE_REFERENCED_OTHER ; 
 int MINCORE_SUPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PTE_A ; 
 int PTE_D ; 
 int PTE_RWX ; 
 int PTE_SW_MANAGED ; 
 int FUNC2 (int) ; 
 int PTE_V ; 
 int* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int* FUNC4 (int*,int) ; 
 int FUNC5 (int*) ; 

int
FUNC6(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
	pt_entry_t *l2, *l3, tpte;
	vm_paddr_t pa;
	int val;
	bool managed;

	FUNC0(pmap);
	l2 = FUNC3(pmap, addr);
	if (l2 != NULL && ((tpte = FUNC5(l2)) & PTE_V) != 0) {
		if ((tpte & PTE_RWX) != 0) {
			pa = FUNC2(tpte) | (addr & L2_OFFSET);
			val = MINCORE_INCORE | MINCORE_SUPER;
		} else {
			l3 = FUNC4(l2, addr);
			tpte = FUNC5(l3);
			if ((tpte & PTE_V) == 0) {
				FUNC1(pmap);
				return (0);
			}
			pa = FUNC2(tpte) | (addr & L3_OFFSET);
			val = MINCORE_INCORE;
		}

		if ((tpte & PTE_D) != 0)
			val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
		if ((tpte & PTE_A) != 0)
			val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
		managed = (tpte & PTE_SW_MANAGED) == PTE_SW_MANAGED;
	} else {
		managed = false;
		val = 0;
	}
	if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
	    (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) && managed) {
		*pap = pa;
	}
	FUNC1(pmap);
	return (val);
}