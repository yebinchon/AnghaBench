#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_3__* pmap_t ;
typedef  scalar_t__ pd_entry_t ;
struct TYPE_13__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_15__ {TYPE_1__ pm_stats; } ;
struct TYPE_14__ {scalar_t__ pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ NUPDE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
	pd_entry_t *pde;

	FUNC2(pmap, MA_OWNED);
	/*
	 * unmap the page table page
	 */
#ifdef __mips_n64
	if (m->pindex < NUPDE)
		pde = pmap_pde(pmap, va);
	else
		pde = pmap_segmap(pmap, va);
#else
	pde = FUNC3(pmap, va);
#endif
	*pde = 0;
	pmap->pm_stats.resident_count--;

#ifdef __mips_n64
	if (m->pindex < NUPDE) {
		pd_entry_t *pdp;
		vm_page_t pdpg;

		/*
		 * Recursively decrement next level pagetable refcount
		 */
		pdp = (pd_entry_t *)*pmap_segmap(pmap, va);
		pdpg = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS(pdp));
		pmap_unwire_ptp(pmap, va, pdpg);
	}
#endif

	/*
	 * If the page is finally unwired, simply free it.
	 */
	FUNC6(m);
	FUNC7(1);
}