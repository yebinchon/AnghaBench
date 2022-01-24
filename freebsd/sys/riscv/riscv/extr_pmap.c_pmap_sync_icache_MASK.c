#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_5__ {int /*<<< orphan*/  __bits; } ;
typedef  TYPE_1__ cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ all_harts ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  hart ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ smp_started ; 

void
FUNC7(pmap_t pmap, vm_offset_t va, vm_size_t sz)
{
	cpuset_t mask;

	/*
	 * From the RISC-V User-Level ISA V2.2:
	 *
	 * "To make a store to instruction memory visible to all
	 * RISC-V harts, the writing hart has to execute a data FENCE
	 * before requesting that all remote RISC-V harts execute a
	 * FENCE.I."
	 */
	FUNC5();
	mask = all_harts;
	FUNC0(FUNC2(hart), &mask);
	FUNC3();
	if (!FUNC1(&mask) && smp_started)
		FUNC4(mask.__bits);
	FUNC6();
}