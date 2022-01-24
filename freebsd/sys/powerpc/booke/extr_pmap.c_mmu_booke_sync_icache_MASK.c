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
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  PTBL_UNHOLD ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int PTE_SR ; 
 int PTE_VALID ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  curpmap ; 
 scalar_t__ kernel_pmap ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_size_t sz)
{
	pte_t *pte;
	vm_paddr_t pa = 0;
	int sync_sz, valid;
#ifndef __powerpc64__
	pmap_t pmap;
	vm_page_t m;
	vm_offset_t addr;
	int active;
#endif
 
#ifndef __powerpc64__
	FUNC12(&pvh_global_lock);
	pmap = FUNC0(curpmap);
	active = (pm == kernel_pmap || pm == pmap) ? 1 : 0;
#endif
	while (sz > 0) {
		FUNC3(pm);
		pte = FUNC10(mmu, pm, va);
		valid = (pte != NULL && FUNC5(pte)) ? 1 : 0;
		if (valid)
			pa = FUNC6(pte);
		FUNC4(pm);
		sync_sz = PAGE_SIZE - (va & PAGE_MASK);
		sync_sz = FUNC8(sync_sz, sz);
		if (valid) {
#ifdef __powerpc64__
			pa += (va & PAGE_MASK);
			__syncicache((void *)PHYS_TO_DMAP(pa), sync_sz);
#else
			if (!active) {
				/* Create a mapping in the active pmap. */
				addr = 0;
				m = FUNC2(pa);
				FUNC3(pmap);
				FUNC9(mmu, pmap, m, addr,
				    PTE_SR | PTE_VALID, FALSE);
				addr += (va & PAGE_MASK);
				FUNC7((void *)addr, sync_sz);
				FUNC11(mmu, pmap, addr, PTBL_UNHOLD);
				FUNC4(pmap);
			} else
				FUNC7((void *)va, sync_sz);
#endif
		}
		va += sync_sz;
		sz -= sync_sz;
	}
#ifndef __powerpc64__
	FUNC13(&pvh_global_lock);
#endif
}