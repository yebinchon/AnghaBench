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
typedef  int /*<<< orphan*/  mmu_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  moea64_scratchpage_mtx ; 
 scalar_t__* moea64_scratchpage_va ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(mmu_t mmu, vm_page_t m, int off, int size)
{
	vm_paddr_t pa = FUNC1(m);

	if (size + off > PAGE_SIZE)
		FUNC6("moea64_zero_page: size + off > PAGE_SIZE");

	if (hw_direct_map) {
		FUNC2((caddr_t)(uintptr_t)FUNC0(pa) + off, size);
	} else {
		FUNC4(&moea64_scratchpage_mtx);
		FUNC3(mmu, 0, pa);
		FUNC2((caddr_t)moea64_scratchpage_va[0] + off, size);
		FUNC5(&moea64_scratchpage_mtx);
	}
}