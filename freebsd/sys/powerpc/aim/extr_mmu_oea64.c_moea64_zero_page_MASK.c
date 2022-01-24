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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ cacheline_size ; 
 int /*<<< orphan*/  hw_direct_map ; 
 int /*<<< orphan*/  moea64_scratchpage_mtx ; 
 scalar_t__* moea64_scratchpage_va ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(mmu_t mmu, vm_page_t m)
{
	vm_paddr_t pa = FUNC1(m);
	vm_offset_t va, off;

	if (!hw_direct_map) {
		FUNC3(&moea64_scratchpage_mtx);

		FUNC2(mmu, 0, pa);
		va = moea64_scratchpage_va[0];
	} else {
		va = FUNC0(pa);
	}

	for (off = 0; off < PAGE_SIZE; off += cacheline_size)
		__asm __volatile("dcbz 0,%0" :: "r"(va + off));

	if (!hw_direct_map)
		FUNC4(&moea64_scratchpage_mtx);
}