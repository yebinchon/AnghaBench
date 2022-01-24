#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int vm_offset_t ;
struct spglist {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  TYPE_4__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_19__ {int wired_count; scalar_t__ resident_count; } ;
struct TYPE_21__ {TYPE_2__ pm_stats; } ;
struct TYPE_18__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_20__ {scalar_t__ valid; scalar_t__ ref_count; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int NBPDR ; 
 scalar_t__ NPTEPG ; 
 int PAGE_SIZE ; 
 int PDRMASK ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_A ; 
 int PG_G ; 
 int PG_M ; 
 int PG_MANAGED ; 
 int PG_PS_FRAME ; 
 int PG_RW ; 
 int PG_W ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 TYPE_4__* kernel_pmap ; 
 struct md_page* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct spglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct md_page*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int*,int) ; 
 TYPE_3__* FUNC9 (TYPE_4__*,int) ; 
 int FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC14(pmap_t pmap, pd_entry_t *pdq, vm_offset_t sva,
    struct spglist *free)
{
	struct md_page *pvh;
	pd_entry_t oldpde;
	vm_offset_t eva, va;
	vm_page_t m, mpte;

	FUNC2(pmap, MA_OWNED);
	FUNC0((sva & PDRMASK) == 0,
	    ("pmap_remove_pde: sva is not 4mpage aligned"));
	oldpde = FUNC10(pdq);
	if (oldpde & PG_W)
		pmap->pm_stats.wired_count -= NBPDR / PAGE_SIZE;

	/*
	 * Machines that don't support invlpg, also don't support
	 * PG_G.
	 */
	if ((oldpde & PG_G) != 0)
		FUNC6(kernel_pmap, sva, oldpde);

	pmap->pm_stats.resident_count -= NBPDR / PAGE_SIZE;
	if (oldpde & PG_MANAGED) {
		pvh = FUNC4(oldpde & PG_PS_FRAME);
		FUNC7(pvh, pmap, sva);
		eva = sva + NBPDR;
		for (va = sva, m = FUNC1(oldpde & PG_PS_FRAME);
		    va < eva; va += PAGE_SIZE, m++) {
			if ((oldpde & (PG_M | PG_RW)) == (PG_M | PG_RW))
				FUNC13(m);
			if (oldpde & PG_A)
				FUNC12(m, PGA_REFERENCED);
			if (FUNC3(&m->md.pv_list) &&
			    FUNC3(&pvh->pv_list))
				FUNC11(m, PGA_WRITEABLE);
		}
	}
	if (pmap == kernel_pmap) {
		FUNC8(pmap, pdq, sva);
	} else {
		mpte = FUNC9(pmap, sva);
		if (mpte != NULL) {
			FUNC0(mpte->valid == VM_PAGE_BITS_ALL,
			    ("pmap_remove_pde: pte page not promoted"));
			pmap->pm_stats.resident_count--;
			FUNC0(mpte->ref_count == NPTEPG,
			    ("pmap_remove_pde: pte page ref count error"));
			mpte->ref_count = 0;
			FUNC5(mpte, free, FALSE);
		}
	}
}