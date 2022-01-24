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
typedef  long uint64_t ;
struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {unsigned long slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int /*<<< orphan*/  pvo_vaddr; int /*<<< orphan*/  pvo_pmap; } ;
struct lpte {int pte_hi; long pte_lo; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  H_AVPN ; 
 int /*<<< orphan*/  H_ENTER ; 
 int /*<<< orphan*/  H_EXACT ; 
 scalar_t__ H_NOT_FOUND ; 
 scalar_t__ H_PTEG_FULL ; 
 int /*<<< orphan*/  H_REMOVE ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LPTE_AVPN_MASK ; 
 int LPTE_HID ; 
 int LPTE_VALID ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVO_HID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvo_entry*,struct lpte*) ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int /*<<< orphan*/  moea64_pteg_count ; 
 int moea64_pteg_mask ; 
 int /*<<< orphan*/  mphyp_eviction_lock ; 
 long FUNC4 (long,struct lpte*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int,long,long*,long*,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(mmu_t mmu, struct pvo_entry *pvo)
{
	struct rm_priotracker track;
	int64_t result;
	struct lpte evicted, pte;
	uint64_t index, junk, lastptelo;

	FUNC1(pvo->pvo_pmap, MA_OWNED);

	/* Initialize PTE */
	FUNC3(pvo, &pte);
	evicted.pte_hi = 0;

	/* Make sure further insertion is locked out during evictions */
	FUNC7(&mphyp_eviction_lock, &track);

	/*
	 * First try primary hash.
	 */
	pvo->pvo_pte.slot &= ~7UL; /* Base slot address */
	result = FUNC6(H_ENTER, 0, pvo->pvo_pte.slot, pte.pte_hi,
	    pte.pte_lo, &index, &evicted.pte_lo, &junk);
	if (result == H_SUCCESS) {
		FUNC8(&mphyp_eviction_lock, &track);
		pvo->pvo_pte.slot = index;
		return (0);
	}
	FUNC0(result == H_PTEG_FULL, ("Page insertion error: %ld "
	    "(ptegidx: %#zx/%#lx, PTE %#lx/%#lx", result, pvo->pvo_pte.slot,
	    moea64_pteg_count, pte.pte_hi, pte.pte_lo));

	/*
	 * Next try secondary hash.
	 */
	pvo->pvo_vaddr ^= PVO_HID;
	pte.pte_hi ^= LPTE_HID;
	pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);

	result = FUNC6(H_ENTER, 0, pvo->pvo_pte.slot,
	    pte.pte_hi, pte.pte_lo, &index, &evicted.pte_lo, &junk);
	if (result == H_SUCCESS) {
		FUNC8(&mphyp_eviction_lock, &track);
		pvo->pvo_pte.slot = index;
		return (0);
	}
	FUNC0(result == H_PTEG_FULL, ("Secondary page insertion error: %ld",
	    result));

	/*
	 * Out of luck. Find a PTE to sacrifice.
	 */

	/* Lock out all insertions for a bit */
	FUNC8(&mphyp_eviction_lock, &track);
	FUNC9(&mphyp_eviction_lock);

	index = FUNC4(pvo->pvo_pte.slot, &evicted);
	if (index == -1L) {
		/* Try other hash table? */
		pvo->pvo_vaddr ^= PVO_HID;
		pte.pte_hi ^= LPTE_HID;
		pvo->pvo_pte.slot ^= (moea64_pteg_mask << 3);
		index = FUNC4(pvo->pvo_pte.slot, &evicted);
	}

	if (index == -1L) {
		/* No freeable slots in either PTEG? We're hosed. */
		FUNC10(&mphyp_eviction_lock);
		FUNC5("mphyp_pte_insert: overflow");
		return (-1);
	}

	/* Victim acquired: update page before waving goodbye */
	if (evicted.pte_hi & LPTE_VALID) {
		result = FUNC6(H_REMOVE, H_AVPN, index,
		    evicted.pte_hi & LPTE_AVPN_MASK, 0, &junk, &lastptelo,
		    &junk);
		FUNC2(moea64_pte_overflow++);
		FUNC0(result == H_SUCCESS || result == H_NOT_FOUND,
		    ("Error evicting page: %d", (int)result));
	}

	/*
	 * Set the new PTE.
	 */
	result = FUNC6(H_ENTER, H_EXACT, index, pte.pte_hi,
	    pte.pte_lo, &index, &evicted.pte_lo, &junk);
	FUNC10(&mphyp_eviction_lock); /* All clear */

	pvo->pvo_pte.slot = index;
	if (result == H_SUCCESS)
		return (0);

	FUNC5("Page replacement error: %ld", result);
	return (result);
}