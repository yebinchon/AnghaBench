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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ copy_page_dst_va ; 
 int /*<<< orphan*/  copy_page_mutex ; 
 scalar_t__ copy_page_src_va ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(mmu_t mmu, vm_page_t sm, vm_page_t dm)
{
	vm_offset_t sva, dva;

#ifdef __powerpc64__
	sva = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(sm));
	dva = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(dm));
	memcpy((caddr_t)dva, (caddr_t)sva, PAGE_SIZE);
#else
	sva = copy_page_src_va;
	dva = copy_page_dst_va;

	FUNC5(&copy_page_mutex);
	FUNC3(mmu, sva, FUNC1(sm));
	FUNC3(mmu, dva, FUNC1(dm));

	FUNC2((caddr_t)dva, (caddr_t)sva, PAGE_SIZE);

	FUNC4(mmu, dva);
	FUNC4(mmu, sva);
	FUNC6(&copy_page_mutex);
#endif
}