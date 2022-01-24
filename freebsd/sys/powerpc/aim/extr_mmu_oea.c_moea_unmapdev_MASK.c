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
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int virtual_end ; 

void
FUNC3(mmu_t mmu, vm_offset_t va, vm_size_t size)
{
	vm_offset_t base, offset;

	/*
	 * If this is outside kernel virtual space, then it's a
	 * battable entry and doesn't require unmapping
	 */
	if ((va >= VM_MIN_KERNEL_ADDRESS) && (va <= virtual_end)) {
		base = FUNC2(va);
		offset = va & PAGE_MASK;
		size = FUNC1(offset + size, PAGE_SIZE);
		FUNC0(base, size);
	}
}