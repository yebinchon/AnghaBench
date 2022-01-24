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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int ADDR_POFF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ hw_direct_map ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  moea64_scratchpage_mtx ; 
 scalar_t__* moea64_scratchpage_va ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmap_bootstrapped ; 

__attribute__((used)) static void
FUNC5(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_paddr_t pa,
    vm_size_t sz)
{

	/*
	 * This is much trickier than on older systems because
	 * we can't sync the icache on physical addresses directly
	 * without a direct map. Instead we check a couple of cases
	 * where the memory is already mapped in and, failing that,
	 * use the same trick we use for page zeroing to create
	 * a temporary mapping for this physical address.
	 */

	if (!pmap_bootstrapped) {
		/*
		 * If PMAP is not bootstrapped, we are likely to be
		 * in real mode.
		 */
		FUNC1((void *)(uintptr_t)pa, sz);
	} else if (pmap == kernel_pmap) {
		FUNC1((void *)va, sz);
	} else if (hw_direct_map) {
		FUNC1((void *)(uintptr_t)FUNC0(pa), sz);
	} else {
		/* Use the scratch page to set up a temp mapping */

		FUNC3(&moea64_scratchpage_mtx);

		FUNC2(mmu, 1, pa & ~ADDR_POFF);
		FUNC1((void *)(moea64_scratchpage_va[1] + 
		    (va & ADDR_POFF)), sz);

		FUNC4(&moea64_scratchpage_mtx);
	}
}