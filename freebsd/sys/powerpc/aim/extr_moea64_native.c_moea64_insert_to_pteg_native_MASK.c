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
typedef  int uint64_t ;
struct lpte {void* pte_hi; void* pte_lo; } ;

/* Variables and functions */
 uintptr_t ADDR_API_SHFT64 ; 
 uintptr_t ADDR_PIDX ; 
 uintptr_t ADDR_PIDX_SHFT ; 
 int ADDR_SR_SHFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int LPTE_AVPN_MASK ; 
 int LPTE_HID ; 
 int LPTE_VALID ; 
 int LPTE_WIRED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct lpte volatile*,int,int*) ; 
 void* FUNC6 (void*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int /*<<< orphan*/  moea64_pte_valid ; 
 uintptr_t moea64_pteg_mask ; 
 struct lpte* moea64_pteg_table ; 

__attribute__((used)) static uintptr_t
FUNC8(struct lpte *pvo_pt, uintptr_t slotbase,
    uint64_t mask)
{
	volatile struct lpte *pt;
	uint64_t oldptehi, va;
	uintptr_t k;
	int i, j;

	/* Start at a random slot */
	i = FUNC7() % 8;
	for (j = 0; j < 8; j++) {
		k = slotbase + (i + j) % 8;
		pt = &moea64_pteg_table[k];
		/* Invalidate and seize lock only if no bits in mask set */
		if (FUNC5(pt, mask, &oldptehi)) /* Lock obtained */
			break;
	}

	if (j == 8)
		return (-1);

	if (oldptehi & LPTE_VALID) {
		FUNC1(!(oldptehi & LPTE_WIRED), ("Unmapped wired entry"));
		/*
		 * Need to invalidate old entry completely: see
		 * "Modifying a Page Table Entry". Need to reconstruct
		 * the virtual address for the outgoing entry to do that.
		 */
		va = oldptehi >> (ADDR_SR_SHFT - ADDR_API_SHFT64);
		if (oldptehi & LPTE_HID)
			va = (((k >> 3) ^ moea64_pteg_mask) ^ va) &
			    (ADDR_PIDX >> ADDR_PIDX_SHFT);
		else
			va = ((k >> 3) ^ va) & (ADDR_PIDX >> ADDR_PIDX_SHFT);
		va |= (oldptehi & LPTE_AVPN_MASK) <<
		    (ADDR_API_SHFT64 - ADDR_PIDX_SHFT);
		FUNC2();
		FUNC4(va);
		FUNC3(moea64_pte_valid--);
		FUNC3(moea64_pte_overflow++);
	}

	/*
	 * Update the PTE as per "Adding a Page Table Entry". Lock is released
	 * by setting the high doubleworld.
	 */
	pt->pte_lo = FUNC6(pvo_pt->pte_lo);
	FUNC0();
	pt->pte_hi = FUNC6(pvo_pt->pte_hi);
	FUNC2();

	/* Keep statistics */
	FUNC3(moea64_pte_valid++);

	return (k);
}