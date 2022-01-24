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
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void *
FUNC5(mmu_t mmu, vm_paddr_t pa, vm_size_t size, vm_memattr_t ma)
{
	vm_offset_t va, tmpva, ppa, offset;

	ppa = FUNC4(pa);
	offset = pa & PAGE_MASK;
	size = FUNC3(offset + size, PAGE_SIZE);

	va = FUNC0(size);

	if (!va)
		FUNC2("moea64_mapdev: Couldn't alloc kernel virtual memory");

	for (tmpva = va; size > 0;) {
		FUNC1(mmu, tmpva, ppa, ma);
		size -= PAGE_SIZE;
		tmpva += PAGE_SIZE;
		ppa += PAGE_SIZE;
	}

	return ((void *)(va + offset));
}