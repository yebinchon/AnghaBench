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
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(vm_page_t m, int off, int size)
{
	vm_offset_t va;
	vm_paddr_t phys = FUNC2(m);

	if (FUNC0(phys)) {
		va = FUNC1(phys);
		FUNC3((char *)(caddr_t)va + off, size);
		FUNC4(va + off, size);
	} else {
		va = FUNC5(phys);
		FUNC3((char *)va + off, size);
		FUNC4(va + off, size);
		FUNC6();
	}
}