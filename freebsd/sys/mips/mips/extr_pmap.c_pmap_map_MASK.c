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
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

vm_offset_t
FUNC3(vm_offset_t *virt, vm_paddr_t start, vm_paddr_t end, int prot)
{
	vm_offset_t va, sva;

	if (FUNC0(end - 1))
		return (FUNC1(start));

	va = sva = *virt;
	while (start < end) {
		FUNC2(va, start);
		va += PAGE_SIZE;
		start += PAGE_SIZE;
	}
	*virt = va;
	return (sva);
}