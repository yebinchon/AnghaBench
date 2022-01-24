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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int PG_PS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(vm_offset_t va, pd_entry_t newpde)
{

	if ((newpde & PG_PS) == 0)
		/* Demotion: flush a specific 2MB page mapping. */
		FUNC0(va);
	else /* if ((newpde & PG_G) == 0) */
		/*
		 * Promotion: flush every 4KB page mapping from the TLB
		 * because there are too many to flush individually.
		 */
		FUNC1();
}