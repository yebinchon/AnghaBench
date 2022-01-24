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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

void
FUNC6(void)
{
	vm_offset_t va;
	vm_paddr_t pa;
	int bm;

	FUNC0("Physical address watchpoint:\n");
	if (FUNC2()) {
		pa = FUNC3(&bm);
		FUNC1(pa, bm);
	} else
		FUNC0("\tnot active.\n");
	FUNC0("Virtual address watchpoint:\n");
	if (FUNC4()) {
		va = FUNC5(&bm);
		FUNC1(va, bm);
	} else
		FUNC0("\tnot active.\n");
}