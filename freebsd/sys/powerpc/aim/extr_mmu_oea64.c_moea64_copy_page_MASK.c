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
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  moea64_scratchpage_mtx ; 
 scalar_t__* moea64_scratchpage_va ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(mmu_t mmu, vm_page_t msrc, vm_page_t mdst)
{
	vm_offset_t	dst;
	vm_offset_t	src;

	dst = FUNC1(mdst);
	src = FUNC1(msrc);

	if (hw_direct_map) {
		FUNC2((void *)FUNC0(src), (void *)FUNC0(dst),
		    PAGE_SIZE);
	} else {
		FUNC4(&moea64_scratchpage_mtx);

		FUNC3(mmu, 0, src);
		FUNC3(mmu, 1, dst);

		FUNC2((void *)moea64_scratchpage_va[0], 
		    (void *)moea64_scratchpage_va[1], PAGE_SIZE);

		FUNC5(&moea64_scratchpage_mtx);
	}
}