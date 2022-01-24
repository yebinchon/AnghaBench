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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

void *
FUNC7(vm_paddr_t pa, vm_size_t size, vm_memattr_t ma)
{
        vm_offset_t va, tmpva, offset;

	/*
	 * KSEG1 maps only first 512M of phys address space. For
	 * pa > 0x20000000 we should make proper mapping * using pmap_kenter.
	 */
	if (FUNC0(pa + size - 1) && ma == VM_MEMATTR_UNCACHEABLE)
		return ((void *)FUNC1(pa));
	else {
		offset = pa & PAGE_MASK;
		size = FUNC5(size + offset, PAGE_SIZE);

		va = FUNC2(size);
		if (!va)
			FUNC3("pmap_mapdev: Couldn't alloc kernel virtual memory");
		pa = FUNC6(pa);
		for (tmpva = va; size > 0;) {
			FUNC4(tmpva, pa, ma);
			size -= PAGE_SIZE;
			tmpva += PAGE_SIZE;
			pa += PAGE_SIZE;
		}
	}

	return ((void *)(va + offset));
}