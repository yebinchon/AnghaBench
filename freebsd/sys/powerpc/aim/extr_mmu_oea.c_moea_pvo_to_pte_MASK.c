#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_6__ {int pte_hi; int pte_lo; } ;
struct TYPE_7__ {TYPE_2__ pte; } ;
struct pvo_entry {TYPE_3__ pvo_pte; int /*<<< orphan*/  pvo_vaddr; TYPE_1__* pvo_pmap; } ;
struct pte {int pte_hi; int pte_lo; } ;
struct TYPE_8__ {struct pte* pt; } ;
struct TYPE_5__ {int /*<<< orphan*/  pm_sr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int PTE_CHG ; 
 int PTE_REF ; 
 int PTE_VALID ; 
 scalar_t__ FUNC0 (struct pvo_entry const*) ; 
 TYPE_4__* moea_pteg_table ; 
 int FUNC1 (struct pvo_entry const*,int) ; 
 int /*<<< orphan*/  moea_table_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct pvo_entry const*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pte *
FUNC8(const struct pvo_entry *pvo, int pteidx)
{
	struct	pte *pt;

	/*
	 * If we haven't been supplied the ptegidx, calculate it.
	 */
	if (pteidx == -1) {
		int	ptegidx;
		u_int	sr;

		sr = FUNC7(pvo->pvo_pmap->pm_sr, pvo->pvo_vaddr);
		ptegidx = FUNC6(sr, pvo->pvo_vaddr);
		pteidx = FUNC1(pvo, ptegidx);
	}

	pt = &moea_pteg_table[pteidx >> 3].pt[pteidx & 7];
	FUNC3(&moea_table_mutex);

	if ((pvo->pvo_pte.pte.pte_hi & PTE_VALID) && !FUNC0(pvo)) {
		FUNC5("moea_pvo_to_pte: pvo %p has valid pte in pvo but no "
		    "valid pte index", pvo);
	}

	if ((pvo->pvo_pte.pte.pte_hi & PTE_VALID) == 0 && FUNC0(pvo)) {
		FUNC5("moea_pvo_to_pte: pvo %p has valid pte index in pvo "
		    "pvo but no valid pte", pvo);
	}

	if ((pt->pte_hi ^ (pvo->pvo_pte.pte.pte_hi & ~PTE_VALID)) == PTE_VALID) {
		if ((pvo->pvo_pte.pte.pte_hi & PTE_VALID) == 0) {
			FUNC5("moea_pvo_to_pte: pvo %p has valid pte in "
			    "moea_pteg_table %p but invalid in pvo", pvo, pt);
		}

		if (((pt->pte_lo ^ pvo->pvo_pte.pte.pte_lo) & ~(PTE_CHG|PTE_REF))
		    != 0) {
			FUNC5("moea_pvo_to_pte: pvo %p pte does not match "
			    "pte %p in moea_pteg_table", pvo, pt);
		}

		FUNC2(&moea_table_mutex, MA_OWNED);
		return (pt);
	}

	if (pvo->pvo_pte.pte.pte_hi & PTE_VALID) {
		FUNC5("moea_pvo_to_pte: pvo %p has invalid pte %p in "
		    "moea_pteg_table but valid in pvo: %8x, %8x", pvo, pt, pvo->pvo_pte.pte.pte_hi, pt->pte_hi);
	}

	FUNC4(&moea_table_mutex);
	return (NULL);
}