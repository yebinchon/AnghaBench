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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int vm_offset_t ;

/* Variables and functions */
 scalar_t__ DEVMAP_PADDR_NOTFOUND ; 
 int PAGE_MASK ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 

void
FUNC5(vm_offset_t va, vm_size_t size)
{
	vm_offset_t offset;

	/* Nothing to do if we find the mapping in the static table. */
	if (FUNC0((void*)va, size) != DEVMAP_PADDR_NOTFOUND)
		return;

	offset = va & PAGE_MASK;
	va = FUNC4(va);
	size = FUNC3(size + offset);

	FUNC2(va, size);
	FUNC1(va, size);
}