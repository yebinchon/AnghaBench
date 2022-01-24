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
struct TYPE_2__ {int slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
struct lpte {int pte_hi; int pte_lo; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;

/* Variables and functions */
 int LPTE_AVPN_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  moea64_eviction_lock ; 
 int /*<<< orphan*/  FUNC2 (struct pvo_entry*,struct lpte*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct pvo_entry*,struct lpte volatile*) ; 
 struct lpte* moea64_pteg_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC6(mmu_t mmu, struct pvo_entry *pvo, int flags)
{
	volatile struct lpte *pt = moea64_pteg_table + pvo->pvo_pte.slot;
	struct lpte properpt;
	int64_t ptelo;

	if (flags == 0) {
		/* Just some software bits changing. */
		FUNC2(pvo, &properpt);

		FUNC4(&moea64_eviction_lock);
		if ((FUNC0(pt->pte_hi) & LPTE_AVPN_MASK) !=
		    (properpt.pte_hi & LPTE_AVPN_MASK)) {
			FUNC5(&moea64_eviction_lock);
			return (-1);
		}
		pt->pte_hi = FUNC1(properpt.pte_hi);
		ptelo = FUNC0(pt->pte_lo);
		FUNC5(&moea64_eviction_lock);
	} else {
		/* Otherwise, need reinsertion and deletion */
		ptelo = FUNC3(mmu, pvo, pt);
	}

	return (ptelo);
}