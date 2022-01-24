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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int pn_t ;

/* Variables and functions */
 scalar_t__ L3_SIZE ; 
 int PAGE_SIZE ; 
 int PTE_KERN ; 
 int PTE_PPN0_S ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

void
FUNC4(vm_offset_t sva, vm_page_t *ma, int count)
{
	pt_entry_t *l3, pa;
	vm_offset_t va;
	vm_page_t m;
	pt_entry_t entry;
	pn_t pn;
	int i;

	va = sva;
	for (i = 0; i < count; i++) {
		m = ma[i];
		pa = FUNC0(m);
		pn = (pa / PAGE_SIZE);
		l3 = FUNC2(kernel_pmap, va);

		entry = PTE_KERN;
		entry |= (pn << PTE_PPN0_S);
		FUNC3(l3, entry);

		va += L3_SIZE;
	}
	FUNC1(kernel_pmap, sva, va);
}