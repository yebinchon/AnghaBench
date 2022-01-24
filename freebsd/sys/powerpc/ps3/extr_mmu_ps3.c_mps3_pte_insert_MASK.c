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
typedef  unsigned long uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int /*<<< orphan*/  pte_lo; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LPTE_LOCKED ; 
 int LPTE_WIRED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PVO_HID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pvo_entry*,struct lpte*) ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int /*<<< orphan*/  moea64_pte_valid ; 
 int moea64_pteg_mask ; 
 int /*<<< orphan*/  mps3_table_lock ; 
 int /*<<< orphan*/  mps3_vas_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int
FUNC8(mmu_t mmu, struct pvo_entry *pvo)
{
	int result;
	struct lpte pte, evicted;
	uint64_t index;

	if (pvo->pvo_vaddr & PVO_HID) {
		/* Hypercall needs primary PTEG */
		pvo->pvo_vaddr &= ~PVO_HID;
		pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
	}

	pvo->pvo_pte.slot &= ~7UL;
	FUNC4(pvo, &pte);
	evicted.pte_hi = 0;
	FUNC1();
	FUNC5(&mps3_table_lock);
	result = FUNC3(mps3_vas_id, pvo->pvo_pte.slot,
	    pte.pte_hi, pte.pte_lo, LPTE_LOCKED | LPTE_WIRED, 0,
	    &index, &evicted.pte_hi, &evicted.pte_lo);
	FUNC6(&mps3_table_lock);

	if (result != 0) {
		/* No freeable slots in either PTEG? We're hosed. */
		FUNC7("mps3_pte_insert: overflow (%d)", result);
		return (-1);
	}

	/*
	 * See where we ended up.
	 */
	if ((index & ~7UL) != pvo->pvo_pte.slot)
		pvo->pvo_vaddr |= PVO_HID;
	pvo->pvo_pte.slot = index;

	FUNC2(moea64_pte_valid++);

	if (evicted.pte_hi) {
		FUNC0((evicted.pte_hi & (LPTE_WIRED | LPTE_LOCKED)) == 0,
		    ("Evicted a wired PTE"));
		FUNC2(moea64_pte_valid--);
		FUNC2(moea64_pte_overflow++);
	}

	return (0);
}