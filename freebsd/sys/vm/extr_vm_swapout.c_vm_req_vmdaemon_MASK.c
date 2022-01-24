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
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ticks ; 
 int /*<<< orphan*/  vm_daemon_mtx ; 
 int /*<<< orphan*/  vm_daemon_needed ; 
 int vm_pageout_req_swapout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int req)
{
	static int lastrun = 0;

	FUNC0(&vm_daemon_mtx);
	vm_pageout_req_swapout |= req;
	if ((ticks > (lastrun + hz)) || (ticks < lastrun)) {
		FUNC2(&vm_daemon_needed);
		lastrun = ticks;
	}
	FUNC1(&vm_daemon_mtx);
}