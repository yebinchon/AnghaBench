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
 int /*<<< orphan*/  SYNCER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int first_printf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  sync_wakeup ; 
 int /*<<< orphan*/  syncer_state ; 
 int /*<<< orphan*/  updateproc ; 

void
FUNC4(void)
{

	FUNC2(&sync_mtx);
	first_printf = 1;
	syncer_state = SYNCER_RUNNING;
	FUNC3(&sync_mtx);
	FUNC0(&sync_wakeup);
	FUNC1(updateproc);
}