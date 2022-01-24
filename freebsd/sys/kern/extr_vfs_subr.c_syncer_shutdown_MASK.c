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
 int RB_NOSYNC ; 
 int /*<<< orphan*/  SYNCER_SHUTTING_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ rushjob ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  sync_wakeup ; 
 int /*<<< orphan*/  syncer_state ; 

__attribute__((used)) static void
FUNC4(void *arg, int howto)
{

	if (howto & RB_NOSYNC)
		return;
	FUNC2(&sync_mtx);
	syncer_state = SYNCER_SHUTTING_DOWN;
	rushjob = 0;
	FUNC3(&sync_mtx);
	FUNC0(&sync_wakeup);
	FUNC1(arg, howto);
}