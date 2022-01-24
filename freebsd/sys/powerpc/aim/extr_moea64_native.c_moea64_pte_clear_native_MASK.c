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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_2__ {int slot; } ;
struct pvo_entry {int /*<<< orphan*/  pvo_vpn; int /*<<< orphan*/  pvo_pmap; TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;

/* Variables and functions */
 int LPTE_AVPN_MASK ; 
 int LPTE_CHG ; 
 int LPTE_REF ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  moea64_eviction_lock ; 
 int /*<<< orphan*/  FUNC6 (struct pvo_entry*,struct lpte*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 struct lpte* moea64_pteg_table ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t 
FUNC11(mmu_t mmu, struct pvo_entry *pvo, uint64_t ptebit)
{
	volatile struct lpte *pt = moea64_pteg_table + pvo->pvo_pte.slot;
	struct lpte properpt;
	uint64_t ptelo;

	FUNC0(pvo->pvo_pmap, MA_OWNED);

	FUNC6(pvo, &properpt);

	FUNC9(&moea64_eviction_lock);
	if ((FUNC3(pt->pte_hi) & LPTE_AVPN_MASK) !=
	    (properpt.pte_hi & LPTE_AVPN_MASK)) {
		/* Evicted */
		FUNC10(&moea64_eviction_lock);
		return (-1);
	}

	if (ptebit == LPTE_REF) {
		/* See "Resetting the Reference Bit" in arch manual */
		FUNC1();
		/* 2-step here safe: precision is not guaranteed */
		ptelo = FUNC3(pt->pte_lo);

		/* One-byte store to avoid touching the C bit */
		((volatile uint8_t *)(&pt->pte_lo))[6] =
#if BYTE_ORDER == BIG_ENDIAN
		    ((uint8_t *)(&properpt.pte_lo))[6];
#else
		    ((uint8_t *)(&properpt.pte_lo))[1];
#endif
		FUNC10(&moea64_eviction_lock);

		FUNC4();
		FUNC2(pvo->pvo_vpn);
		FUNC5();
	} else {
		FUNC10(&moea64_eviction_lock);
		ptelo = FUNC8(mmu, pvo);
		FUNC7(mmu, pvo);
	}

	return (ptelo & (LPTE_REF | LPTE_CHG));
}