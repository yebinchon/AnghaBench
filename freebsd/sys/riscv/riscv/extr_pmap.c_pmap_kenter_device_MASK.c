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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int pn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L3_OFFSET ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int PTE_KERN ; 
 int PTE_PPN0_S ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

void
FUNC4(vm_offset_t sva, vm_size_t size, vm_paddr_t pa)
{
	pt_entry_t entry;
	pt_entry_t *l3;
	vm_offset_t va;
	pn_t pn;

	FUNC0((pa & L3_OFFSET) == 0,
	   ("pmap_kenter_device: Invalid physical address"));
	FUNC0((sva & L3_OFFSET) == 0,
	   ("pmap_kenter_device: Invalid virtual address"));
	FUNC0((size & PAGE_MASK) == 0,
	    ("pmap_kenter_device: Mapping is not page-sized"));

	va = sva;
	while (size != 0) {
		l3 = FUNC2(kernel_pmap, va);
		FUNC0(l3 != NULL, ("Invalid page table, va: 0x%lx", va));

		pn = (pa / PAGE_SIZE);
		entry = PTE_KERN;
		entry |= (pn << PTE_PPN0_S);
		FUNC3(l3, entry);

		va += PAGE_SIZE;
		pa += PAGE_SIZE;
		size -= PAGE_SIZE;
	}
	FUNC1(kernel_pmap, sva, va);
}