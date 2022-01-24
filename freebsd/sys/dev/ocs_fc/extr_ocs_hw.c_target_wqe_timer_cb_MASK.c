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
struct TYPE_4__ {int /*<<< orphan*/  os; int /*<<< orphan*/  wqe_timer; int /*<<< orphan*/  in_active_wqe_timer; } ;
typedef  TYPE_1__ ocs_hw_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  target_wqe_timer_nop_cb ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	ocs_hw_t *hw = (ocs_hw_t *)arg;

	/* delete existing timer; will kick off new timer after checking wqe timeouts */
	hw->in_active_wqe_timer = TRUE;
	FUNC0(&hw->wqe_timer);

	/* Forward timer callback to execute in the mailbox completion processing context */
	if (FUNC1(hw, target_wqe_timer_nop_cb, hw)) {
		FUNC2(hw->os, "ocs_hw_async_call failed\n");
	}
}