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
struct pvo_entry {int /*<<< orphan*/  pvo_pmap; TYPE_1__ pvo_pte; } ;
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
 int FUNC2 (int) ; 
 int /*<<< orphan*/  moea64_eviction_lock ; 
 int /*<<< orphan*/  FUNC3 (struct pvo_entry*,struct lpte*) ; 
 struct lpte* moea64_pteg_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC6(mmu_t mmu, struct pvo_entry *pvo)
{
	volatile struct lpte *pt = moea64_pteg_table + pvo->pvo_pte.slot;
	struct lpte properpt;
	uint64_t ptelo;

	FUNC0(pvo->pvo_pmap, MA_OWNED);

	FUNC3(pvo, &properpt);

	FUNC4(&moea64_eviction_lock);
	if ((FUNC2(pt->pte_hi) & LPTE_AVPN_MASK) !=
	    (properpt.pte_hi & LPTE_AVPN_MASK)) {
		/* Evicted */
		FUNC5(&moea64_eviction_lock);
		return (-1);
	}
		
	FUNC1();
	ptelo = FUNC2(pt->pte_lo);

	FUNC5(&moea64_eviction_lock);
	
	return (ptelo & (LPTE_REF | LPTE_CHG));
}