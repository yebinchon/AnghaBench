#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct TYPE_4__ {int mas1; scalar_t__ virt; scalar_t__ size; int mas2; int /*<<< orphan*/  phys; } ;
typedef  TYPE_1__ tlb_entry_t ;
typedef  int pte_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 scalar_t__ DMAP_BASE_ADDRESS ; 
 scalar_t__ DMAP_MAX_ADDRESS ; 
 int EINVAL ; 
 int MAS1_VALID ; 
 int MAS2_WIMGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int PTE_MAS2_MASK ; 
 int PTE_MAS2_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int TLB1_ENTRIES ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 scalar_t__ VM_MAX_KERNEL_ADDRESS ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ tlb1_map_base ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  tlbivax_mutex ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

__attribute__((used)) static int
FUNC12(mmu_t mmu, vm_offset_t addr, vm_size_t sz,
    vm_memattr_t mode)
{
	vm_offset_t va;
	pte_t *pte;
	int i, j;
	tlb_entry_t e;

	addr = FUNC11(addr);

	/* Only allow changes to mapped kernel addresses.  This includes:
	 * - KVA
	 * - DMAP (powerpc64)
	 * - Device mappings
	 */
	if (addr <= VM_MAXUSER_ADDRESS ||
#ifdef __powerpc64__
	    (addr >= tlb1_map_base && addr < DMAP_BASE_ADDRESS) ||
	    (addr > DMAP_MAX_ADDRESS && addr < VM_MIN_KERNEL_ADDRESS) ||
#else
	    (addr >= tlb1_map_base && addr < VM_MIN_KERNEL_ADDRESS) ||
#endif
	    (addr > VM_MAX_KERNEL_ADDRESS))
		return (EINVAL);

	/* Check TLB1 mappings */
	for (i = 0; i < TLB1_ENTRIES; i++) {
		FUNC6(&e, i);
		if (!(e.mas1 & MAS1_VALID))
			continue;
		if (addr >= e.virt && addr < e.virt + e.size)
			break;
	}
	if (i < TLB1_ENTRIES) {
		/* Only allow full mappings to be modified for now. */
		/* Validate the range. */
		for (j = i, va = addr; va < addr + sz; va += e.size, j++) {
			FUNC6(&e, j);
			if (va != e.virt || (sz - (va - addr) < e.size))
				return (EINVAL);
		}
		for (va = addr; va < addr + sz; va += e.size, i++) {
			FUNC6(&e, i);
			e.mas2 &= ~MAS2_WIMGE_MASK;
			e.mas2 |= FUNC8(e.phys, mode);

			/*
			 * Write it out to the TLB.  Should really re-sync with other
			 * cores.
			 */
			FUNC7(&e, i);
		}
		return (0);
	}

	/* Not in TLB1, try through pmap */
	/* First validate the range. */
	for (va = addr; va < addr + sz; va += PAGE_SIZE) {
		pte = FUNC4(mmu, kernel_pmap, va);
		if (pte == NULL || !FUNC0(pte))
			return (EINVAL);
	}

	FUNC2(&tlbivax_mutex);
	FUNC9();
	for (va = addr; va < addr + sz; va += PAGE_SIZE) {
		pte = FUNC4(mmu, kernel_pmap, va);
		*pte &= ~(PTE_MAS2_MASK << PTE_MAS2_SHIFT);
		*pte |= FUNC8(FUNC1(pte), mode) << PTE_MAS2_SHIFT;
		FUNC5(va);
	}
	FUNC10();
	FUNC3(&tlbivax_mutex);

	return (0);
}