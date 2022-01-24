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

/* Variables and functions */
 int /*<<< orphan*/  VM_SWAP_IDLE ; 
 long time_second ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_swap_idle_enabled ; 

void
FUNC1(void)
{
	static long lsec;

	if (!vm_swap_idle_enabled || time_second == lsec)
		return;
	FUNC0(VM_SWAP_IDLE);
	lsec = time_second;
}