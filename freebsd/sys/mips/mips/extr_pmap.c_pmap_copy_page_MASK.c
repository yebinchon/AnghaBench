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
typedef  void* caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(vm_page_t src, vm_page_t dst)
{
	vm_offset_t va_src, va_dst;
	vm_paddr_t phys_src = FUNC2(src);
	vm_paddr_t phys_dst = FUNC2(dst);

	if (FUNC0(phys_src) && FUNC0(phys_dst)) {
		/* easy case, all can be accessed via KSEG0 */
		/*
		 * Flush all caches for VA that are mapped to this page
		 * to make sure that data in SDRAM is up to date
		 */
		FUNC6(src);
		FUNC5(
		    FUNC1(phys_dst), PAGE_SIZE);
		va_src = FUNC1(phys_src);
		va_dst = FUNC1(phys_dst);
		FUNC3((caddr_t)va_src, (caddr_t)va_dst, PAGE_SIZE);
		FUNC4(va_dst, PAGE_SIZE);
	} else {
		va_src = FUNC7(phys_src, phys_dst);
		va_dst = va_src + PAGE_SIZE;
		FUNC3((void *)va_src, (void *)va_dst, PAGE_SIZE);
		FUNC4(va_dst, PAGE_SIZE);
		FUNC8();
	}
}