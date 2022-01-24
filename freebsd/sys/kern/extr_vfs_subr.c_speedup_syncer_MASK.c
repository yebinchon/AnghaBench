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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int rushjob ; 
 int stat_rush_requests ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  sync_wakeup ; 
 int syncdelay ; 

int
FUNC3(void)
{
	int ret = 0;

	FUNC1(&sync_mtx);
	if (rushjob < syncdelay / 2) {
		rushjob += 1;
		stat_rush_requests += 1;
		ret = 1;
	}
	FUNC2(&sync_mtx);
	FUNC0(&sync_wakeup);
	return (ret);
}