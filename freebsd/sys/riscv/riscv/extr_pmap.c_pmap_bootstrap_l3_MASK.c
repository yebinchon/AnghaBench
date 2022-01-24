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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  size_t u_int ;
typedef  int pt_entry_t ;
typedef  int pn_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L2_OFFSET ; 
 scalar_t__ L2_SIZE ; 
 size_t Ln_ENTRIES ; 
 int PAGE_SIZE ; 
 int PTE_PPN0_S ; 
 int PTE_V ; 
 int VM_MAX_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vm_offset_t
FUNC6(vm_offset_t l1pt, vm_offset_t va, vm_offset_t l3_start)
{
	vm_offset_t l3pt;
	pt_entry_t entry;
	pd_entry_t *l2;
	vm_paddr_t pa;
	u_int l2_slot;
	pn_t pn;

	FUNC0((va & L2_OFFSET) == 0, ("Invalid virtual address"));

	l2 = FUNC3(kernel_pmap, va);
	l2 = (pd_entry_t *)((uintptr_t)l2 & ~(PAGE_SIZE - 1));
	l2_slot = FUNC4(va);
	l3pt = l3_start;

	for (; va < VM_MAX_KERNEL_ADDRESS; l2_slot++, va += L2_SIZE) {
		FUNC0(l2_slot < Ln_ENTRIES, ("Invalid L2 index"));

		pa = FUNC2(l1pt, l3pt);
		pn = (pa / PAGE_SIZE);
		entry = (PTE_V);
		entry |= (pn << PTE_PPN0_S);
		FUNC5(&l2[l2_slot], entry);
		l3pt += PAGE_SIZE;
	}


	/* Clean the L2 page table */
	FUNC1((void *)l3_start, 0, l3pt - l3_start);

	return (l3pt);
}