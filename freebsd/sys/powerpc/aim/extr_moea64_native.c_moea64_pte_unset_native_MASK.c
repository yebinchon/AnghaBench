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
typedef  int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int /*<<< orphan*/  pvo_vpn; TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int LPTE_AVPN_MASK ; 
 int LPTE_CHG ; 
 int LPTE_LOCKED ; 
 int LPTE_REF ; 
 int LPTE_VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  moea64_eviction_lock ; 
 int /*<<< orphan*/  FUNC7 (struct pvo_entry*,struct lpte*) ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int /*<<< orphan*/  moea64_pte_valid ; 
 struct lpte* moea64_pteg_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC10(mmu_t mmu, struct pvo_entry *pvo)
{
	volatile struct lpte *pt = moea64_pteg_table + pvo->pvo_pte.slot;
	struct lpte properpt;
	uint64_t ptelo;

	FUNC7(pvo, &properpt);

	FUNC8(&moea64_eviction_lock);
	if ((FUNC3(pt->pte_hi & LPTE_AVPN_MASK)) !=
	    (properpt.pte_hi & LPTE_AVPN_MASK)) {
		/* Evicted */
		FUNC1(moea64_pte_overflow--);
		FUNC9(&moea64_eviction_lock);
		return (-1);
	}

	/*
	 * Invalidate the pte, briefly locking it to collect RC bits. No
	 * atomics needed since this is protected against eviction by the lock.
	 */
	FUNC6();
	FUNC4();
	pt->pte_hi = FUNC3((pt->pte_hi & ~LPTE_VALID) | LPTE_LOCKED);
	FUNC0();
	FUNC2(pvo->pvo_vpn);
	ptelo = FUNC3(pt->pte_lo);
	*((volatile int32_t *)(&pt->pte_hi) + 1) = 0; /* Release lock */
	FUNC5();
	FUNC9(&moea64_eviction_lock);

	/* Keep statistics */
	FUNC1(moea64_pte_valid--);

	return (ptelo & (LPTE_CHG | LPTE_REF));
}