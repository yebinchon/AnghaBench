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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(vm_offset_t wp, int bm)
{
	int i;

	FUNC0("\tat 0x%lx, active bytes: ", (u_long)wp);
	for (i = 0; i < 8; i++) {
		if ((bm & (1 << i)) != 0)
			FUNC0("%d ", i);
	}
	if (bm == 0)
		FUNC0("none");
	FUNC0("\n");
}