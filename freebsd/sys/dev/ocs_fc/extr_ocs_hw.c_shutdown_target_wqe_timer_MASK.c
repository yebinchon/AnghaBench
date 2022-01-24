#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ emulate_tgt_wqe_timeout; } ;
struct TYPE_6__ {int /*<<< orphan*/  os; scalar_t__ in_active_wqe_timer; int /*<<< orphan*/  wqe_timer; int /*<<< orphan*/  active_wqe_timer_shutdown; TYPE_1__ config; } ;
typedef  TYPE_2__ ocs_hw_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(ocs_hw_t *hw)
{
	uint32_t	iters = 100;

	if (hw->config.emulate_tgt_wqe_timeout) {
		/* request active wqe timer shutdown, then wait for it to complete */
		hw->active_wqe_timer_shutdown = TRUE;

		/* delete WQE timer and wait for timer handler to complete (if necessary) */
		FUNC0(&hw->wqe_timer);

		/* now wait for timer handler to complete (if necessary) */
		while (hw->in_active_wqe_timer && iters) {
			/*
			 * if we happen to have just sent NOP mailbox command, make sure
			 * completions are being processed
			 */
			FUNC1(hw);
			iters--;
		}

		if (iters == 0) {
			FUNC2(hw->os, "Failed to shutdown active wqe timer\n");
		}
	}
}