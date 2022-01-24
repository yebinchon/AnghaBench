#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_6__ {int pte_hi; } ;
struct TYPE_4__ {TYPE_3__ pte; } ;
struct pvo_entry {int /*<<< orphan*/  pvo_vaddr; TYPE_1__ pvo_pte; } ;
struct pte {int pte_hi; } ;
struct TYPE_5__ {struct pte* pt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int PTE_HID ; 
 int PTE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct pvo_entry*) ; 
 int /*<<< orphan*/  moea_pte_overflow ; 
 int /*<<< orphan*/  FUNC1 (struct pte*,struct pte*) ; 
 struct pvo_entry* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct pte*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 size_t moea_pteg_mask ; 
 TYPE_2__* moea_pteg_table ; 
 int FUNC4 (struct pvo_entry*,size_t) ; 
 int /*<<< orphan*/  moea_table_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(u_int ptegidx, struct pte *pvo_pt)
{
	struct	pte *pt;
	struct	pvo_entry *victim_pvo;
	int	i;
	int	victim_idx;
	u_int	pteg_bkpidx = ptegidx;

	FUNC5(&moea_table_mutex, MA_OWNED);

	/*
	 * First try primary hash.
	 */
	for (pt = moea_pteg_table[ptegidx].pt, i = 0; i < 8; i++, pt++) {
		if ((pt->pte_hi & PTE_VALID) == 0) {
			pvo_pt->pte_hi &= ~PTE_HID;
			FUNC1(pt, pvo_pt);
			return (i);
		}
	}

	/*
	 * Now try secondary hash.
	 */
	ptegidx ^= moea_pteg_mask;

	for (pt = moea_pteg_table[ptegidx].pt, i = 0; i < 8; i++, pt++) {
		if ((pt->pte_hi & PTE_VALID) == 0) {
			pvo_pt->pte_hi |= PTE_HID;
			FUNC1(pt, pvo_pt);
			return (i);
		}
	}

	/* Try again, but this time try to force a PTE out. */
	ptegidx = pteg_bkpidx;

	victim_pvo = FUNC2(ptegidx);
	if (victim_pvo == NULL) {
		ptegidx ^= moea_pteg_mask;
		victim_pvo = FUNC2(ptegidx);
	}

	if (victim_pvo == NULL) {
		FUNC6("moea_pte_insert: overflow");
		return (-1);
	}

	victim_idx = FUNC4(victim_pvo, ptegidx);

	if (pteg_bkpidx == ptegidx)
		pvo_pt->pte_hi &= ~PTE_HID;
	else
		pvo_pt->pte_hi |= PTE_HID;

	/*
	 * Synchronize the sacrifice PTE with its PVO, then mark both
	 * invalid. The PVO will be reused when/if the VM system comes
	 * here after a fault.
	 */
	pt = &moea_pteg_table[victim_idx >> 3].pt[victim_idx & 7];

	if (pt->pte_hi != victim_pvo->pvo_pte.pte.pte_hi)
	    FUNC6("Victim PVO doesn't match PTE! PVO: %8x, PTE: %8x", victim_pvo->pvo_pte.pte.pte_hi, pt->pte_hi);

	/*
	 * Set the new PTE.
	 */
	FUNC3(pt, &victim_pvo->pvo_pte.pte, victim_pvo->pvo_vaddr);
	FUNC0(victim_pvo);
	moea_pte_overflow++;
	FUNC1(pt, pvo_pt);

	return (victim_idx & 7);
}