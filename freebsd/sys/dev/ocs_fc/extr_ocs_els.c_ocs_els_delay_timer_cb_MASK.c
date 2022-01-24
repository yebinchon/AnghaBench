#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  delay_timer; int /*<<< orphan*/  ocs; int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_TIMER_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*),TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	ocs_io_t *els = arg;
	ocs_node_t *node = els->node;

	/*
	 * There is a potential deadlock here since is Linux executes timers
	 * in a soft IRQ context. The lock may be aready locked by the interrupt
	 * thread. Handle this case by attempting to take the node lock and reset the
	 * timer if we fail to acquire the lock.
	 *
	 * Note: This code relies on the fact that the node lock is recursive.
	 */
	if (FUNC1(node)) {
		FUNC0(els, OCS_EVT_TIMER_EXPIRED, NULL);
		FUNC2(node);
	} else {
		FUNC3(els->ocs, &els->delay_timer, ocs_els_delay_timer_cb, els, 1);
	}
}