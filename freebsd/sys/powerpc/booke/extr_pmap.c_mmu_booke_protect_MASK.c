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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int pte_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int*) ; 
 int PTE_MODIFIED ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int PTE_SW ; 
 int PTE_UW ; 
 int VM_PROT_NONE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  tlbivax_mutex ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(mmu_t mmu, pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    vm_prot_t prot)
{
	vm_offset_t va;
	vm_page_t m;
	pte_t *pte;

	if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
		FUNC7(mmu, pmap, sva, eva);
		return;
	}

	if (prot & VM_PROT_WRITE)
		return;

	FUNC1(pmap);
	for (va = sva; va < eva; va += PAGE_SIZE) {
		if ((pte = FUNC10(mmu, pmap, va)) != NULL) {
			if (FUNC5(pte)) {
				m = FUNC0(FUNC6(pte));

				FUNC8(&tlbivax_mutex);
				FUNC12();

				/* Handle modified pages. */
				if (FUNC4(pte) && FUNC3(pte))
					FUNC14(m);

				FUNC11(va);
				*pte &= ~(PTE_UW | PTE_SW | PTE_MODIFIED);

				FUNC13();
				FUNC9(&tlbivax_mutex);
			}
		}
	}
	FUNC2(pmap);
}