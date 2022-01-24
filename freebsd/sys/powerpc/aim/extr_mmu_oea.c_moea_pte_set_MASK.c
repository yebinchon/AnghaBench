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
struct pte {int /*<<< orphan*/  pte_hi; int /*<<< orphan*/  pte_lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PTE_VALID ; 
 int /*<<< orphan*/  moea_pte_valid ; 
 int /*<<< orphan*/  moea_table_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static __inline void
FUNC2(struct pte *pt, struct pte *pvo_pt)
{

	FUNC0(&moea_table_mutex, MA_OWNED);
	pvo_pt->pte_hi |= PTE_VALID;

	/*
	 * Update the PTE as defined in section 7.6.3.1.
	 * Note that the REF/CHG bits are from pvo_pt and thus should have
	 * been saved so this routine can restore them (if desired).
	 */
	pt->pte_lo = pvo_pt->pte_lo;
	FUNC1();
	pt->pte_hi = pvo_pt->pte_hi;
	FUNC1();
	moea_pte_valid++;
}