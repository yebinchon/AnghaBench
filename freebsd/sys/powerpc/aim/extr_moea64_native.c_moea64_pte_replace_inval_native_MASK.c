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
struct pvo_entry {int /*<<< orphan*/  pvo_vpn; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int LPTE_AVPN_MASK ; 
 int LPTE_CHG ; 
 int LPTE_LOCKED ; 
 int LPTE_REF ; 
 int LPTE_VALID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  moea64_eviction_lock ; 
 int /*<<< orphan*/  FUNC9 (struct pvo_entry*,struct lpte*) ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC12(mmu_t mmu, struct pvo_entry *pvo,
    volatile struct lpte *pt)
{
	struct lpte properpt;
	uint64_t ptelo;

	FUNC9(pvo, &properpt);

	FUNC10(&moea64_eviction_lock);
	if ((FUNC4(pt->pte_hi & LPTE_AVPN_MASK)) !=
	    (properpt.pte_hi & LPTE_AVPN_MASK)) {
		/* Evicted */
		FUNC2(moea64_pte_overflow--);
		FUNC11(&moea64_eviction_lock);
		return (-1);
	}

	/*
	 * Replace the pte, briefly locking it to collect RC bits. No
	 * atomics needed since this is protected against eviction by the lock.
	 */
	FUNC8();
	FUNC5();
	pt->pte_hi = FUNC4((pt->pte_hi & ~LPTE_VALID) | LPTE_LOCKED);
	FUNC1();
	FUNC3(pvo->pvo_vpn);
	ptelo = FUNC4(pt->pte_lo);
	FUNC0();
	pt->pte_lo = FUNC7(properpt.pte_lo);
	FUNC0();
	pt->pte_hi = FUNC7(properpt.pte_hi); /* Release lock */
	FUNC1();
	FUNC6();
	FUNC11(&moea64_eviction_lock);

	return (ptelo & (LPTE_CHG | LPTE_REF));
}