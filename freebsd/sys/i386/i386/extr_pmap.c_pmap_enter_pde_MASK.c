#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int u_int ;
struct spglist {int dummy; } ;
typedef  TYPE_2__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_14__ {size_t wired_count; size_t resident_count; } ;
struct TYPE_15__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KERN_FAILURE ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t NBPDR ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FRAME ; 
 int PG_G ; 
 int PG_M ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_RW ; 
 int PG_V ; 
 int PG_W ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int PMAP_ENTER_NOREPLACE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC4 (struct spglist*) ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__,int) ; 
 int* FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  pmap_pde_mappings ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int*,scalar_t__,struct spglist*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,scalar_t__,scalar_t__,struct spglist*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct spglist*,int) ; 

__attribute__((used)) static int
FUNC17(pmap_t pmap, vm_offset_t va, pd_entry_t newpde, u_int flags,
    vm_page_t m)
{
	struct spglist free;
	pd_entry_t oldpde, *pde;
	vm_page_t mt;

	FUNC14(&pvh_global_lock, RA_WLOCKED);
	FUNC1((newpde & (PG_M | PG_RW)) != PG_RW,
	    ("pmap_enter_pde: newpde is missing PG_M"));
	FUNC1(pmap == kernel_pmap || (newpde & PG_W) == 0,
	    ("pmap_enter_pde: cannot create wired user mapping"));
	FUNC3(pmap, MA_OWNED);
	pde = FUNC10(pmap, va);
	oldpde = *pde;
	if ((oldpde & PG_V) != 0) {
		if ((flags & PMAP_ENTER_NOREPLACE) != 0) {
			FUNC0(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
			    " in pmap %p", va, pmap);
			return (KERN_FAILURE);
		}
		/* Break the existing mapping(s). */
		FUNC4(&free);
		if ((oldpde & PG_PS) != 0) {
			/*
			 * If the PDE resulted from a promotion, then a
			 * reserved PT page could be freed.
			 */
			(void)FUNC12(pmap, pde, va, &free);
			if ((oldpde & PG_G) == 0)
				FUNC9(pmap, va, oldpde);
		} else {
			if (FUNC13(pmap, va, va + NBPDR, &free))
		               FUNC8(pmap);
		}
		FUNC16(&free, true);
		if (pmap == kernel_pmap) {
			/*
			 * Both pmap_remove_pde() and pmap_remove_ptes() will
			 * leave the kernel page table page zero filled.
			 */
			mt = FUNC2(*pde & PG_FRAME);
			if (FUNC7(pmap, mt, false))
				FUNC5("pmap_enter_pde: trie insert failed");
		} else
			FUNC1(*pde == 0, ("pmap_enter_pde: non-zero pde %p",
			    pde));
	}
	if ((newpde & PG_MANAGED) != 0) {
		/*
		 * Abort this mapping if its PV entry could not be created.
		 */
		if (!FUNC11(pmap, va, newpde, flags)) {
			FUNC0(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
			    " in pmap %p", va, pmap);
			return (KERN_RESOURCE_SHORTAGE);
		}
		if ((newpde & PG_RW) != 0) {
			for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
				FUNC15(mt, PGA_WRITEABLE);
		}
	}

	/*
	 * Increment counters.
	 */
	if ((newpde & PG_W) != 0)
		pmap->pm_stats.wired_count += NBPDR / PAGE_SIZE;
	pmap->pm_stats.resident_count += NBPDR / PAGE_SIZE;

	/*
	 * Map the superpage.  (This is not a promoted mapping; there will not
	 * be any lingering 4KB page mappings in the TLB.)
	 */
	FUNC6(pde, newpde);

	pmap_pde_mappings++;
	FUNC0(KTR_PMAP, "pmap_enter_pde: success for va %#lx"
	    " in pmap %p", va, pmap);
	return (KERN_SUCCESS);
}