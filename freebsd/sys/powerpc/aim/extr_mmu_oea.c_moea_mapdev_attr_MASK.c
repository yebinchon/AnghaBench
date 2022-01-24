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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 

void *
FUNC7(mmu_t mmu, vm_paddr_t pa, vm_size_t size, vm_memattr_t ma)
{
	vm_offset_t va, tmpva, ppa, offset;
	int i;

	ppa = FUNC6(pa);
	offset = pa & PAGE_MASK;
	size = FUNC4(offset + size, PAGE_SIZE);

	/*
	 * If the physical address lies within a valid BAT table entry,
	 * return the 1:1 mapping. This currently doesn't work
	 * for regions that overlap 256M BAT segments.
	 */
	for (i = 0; i < 16; i++) {
		if (FUNC1(i, pa, size) == 0)
			return ((void *) pa);
	}

	va = FUNC0(size);
	if (!va)
		FUNC3("moea_mapdev: Couldn't alloc kernel virtual memory");

	for (tmpva = va; size > 0;) {
		FUNC2(mmu, tmpva, ppa, ma);
		FUNC5(tmpva);
		size -= PAGE_SIZE;
		tmpva += PAGE_SIZE;
		ppa += PAGE_SIZE;
	}

	return ((void *)(va + offset));
}