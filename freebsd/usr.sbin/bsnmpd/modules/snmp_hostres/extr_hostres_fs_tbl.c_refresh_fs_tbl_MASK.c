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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ fs_tbl_refresh ; 
 scalar_t__ fs_tick ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ this_tick ; 

void
FUNC2(void)
{

	if (fs_tick == 0 || this_tick - fs_tick >= fs_tbl_refresh) {
		FUNC1(1);
		FUNC0("refresh DONE");
	}
}