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
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zero_page_mutex ; 
 scalar_t__ zero_page_va ; 

__attribute__((used)) static void
FUNC7(mmu_t mmu, vm_page_t m, int off, int size)
{
	vm_offset_t va;

	/* XXX KASSERT off and size are within a single page? */

#ifdef __powerpc64__
	va = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(m));
	bzero((caddr_t)va + off, size);
#else
	FUNC5(&zero_page_mutex);
	va = zero_page_va;

	FUNC3(mmu, va, FUNC1(m));
	FUNC2((caddr_t)va + off, size);
	FUNC4(mmu, va);

	FUNC6(&zero_page_mutex);
#endif
}