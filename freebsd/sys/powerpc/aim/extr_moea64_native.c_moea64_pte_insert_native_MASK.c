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
struct TYPE_2__ {unsigned long long slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int /*<<< orphan*/  pvo_vaddr; } ;
struct lpte {int /*<<< orphan*/  pte_hi; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  LPTE_HID ; 
 int LPTE_LOCKED ; 
 int LPTE_VALID ; 
 int LPTE_WIRED ; 
 int /*<<< orphan*/  PVO_HID ; 
 int /*<<< orphan*/  moea64_eviction_lock ; 
 uintptr_t FUNC0 (struct lpte*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvo_entry*,struct lpte*) ; 
 int moea64_pteg_mask ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(mmu_t mmu, struct pvo_entry *pvo)
{
	struct lpte insertpt;
	uintptr_t slot;

	/* Initialize PTE */
	FUNC1(pvo, &insertpt);

	/* Make sure further insertion is locked out during evictions */
	FUNC3(&moea64_eviction_lock);

	/*
	 * First try primary hash.
	 */
	pvo->pvo_pte.slot &= ~7ULL; /* Base slot address */
	slot = FUNC0(&insertpt, pvo->pvo_pte.slot,
	    LPTE_VALID | LPTE_WIRED | LPTE_LOCKED);
	if (slot != -1) {
		FUNC4(&moea64_eviction_lock);
		pvo->pvo_pte.slot = slot;
		return (0);
	}

	/*
	 * Now try secondary hash.
	 */
	pvo->pvo_vaddr ^= PVO_HID;
	insertpt.pte_hi ^= LPTE_HID;
	pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
	slot = FUNC0(&insertpt, pvo->pvo_pte.slot,
	    LPTE_VALID | LPTE_WIRED | LPTE_LOCKED);
	if (slot != -1) {
		FUNC4(&moea64_eviction_lock);
		pvo->pvo_pte.slot = slot;
		return (0);
	}

	/*
	 * Out of luck. Find a PTE to sacrifice.
	 */

	/* Lock out all insertions for a bit */
	if (!FUNC5(&moea64_eviction_lock)) {
		FUNC4(&moea64_eviction_lock);
		FUNC6(&moea64_eviction_lock);
	}

	slot = FUNC0(&insertpt, pvo->pvo_pte.slot,
	    LPTE_WIRED | LPTE_LOCKED);
	if (slot != -1) {
		FUNC7(&moea64_eviction_lock);
		pvo->pvo_pte.slot = slot;
		return (0);
	}

	/* Try other hash table. Now we're getting desperate... */
	pvo->pvo_vaddr ^= PVO_HID;
	insertpt.pte_hi ^= LPTE_HID;
	pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
	slot = FUNC0(&insertpt, pvo->pvo_pte.slot,
	    LPTE_WIRED | LPTE_LOCKED);
	if (slot != -1) {
		FUNC7(&moea64_eviction_lock);
		pvo->pvo_pte.slot = slot;
		return (0);
	}

	/* No freeable slots in either PTEG? We're hosed. */
	FUNC7(&moea64_eviction_lock);
	FUNC2("moea64_pte_insert: overflow");
	return (-1);
}