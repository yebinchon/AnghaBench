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
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PTE_D ; 
 int PTE_G ; 
 int PTE_V ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,void*) ; 
 scalar_t__ FUNC5 (int*,int) ; 

void
FUNC6(vm_offset_t va, vm_paddr_t pa, vm_memattr_t ma)
{
	pt_entry_t *pte;
	pt_entry_t opte, npte;

#ifdef PMAP_DEBUG
	printf("pmap_kenter:  va: %p -> pa: %p\n", (void *)va, (void *)pa);
#endif

	pte = FUNC2(kernel_pmap, va);
	opte = *pte;
	npte = FUNC1(pa) | FUNC0(ma) | PTE_D | PTE_V | PTE_G;
	*pte = npte;
	if (FUNC5(&opte, PTE_V) && opte != npte)
		FUNC3(kernel_pmap, va, npte);
}