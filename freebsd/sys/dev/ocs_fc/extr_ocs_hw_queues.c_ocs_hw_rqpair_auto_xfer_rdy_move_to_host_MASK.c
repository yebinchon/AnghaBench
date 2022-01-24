#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  auto_xfer_rdy_buf_pool; int /*<<< orphan*/  io_port_dnrx; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_10__ {int /*<<< orphan*/ * axr_buf; scalar_t__ auto_xfer_rdy_dnrx; int /*<<< orphan*/  dnrx_link; } ;
typedef  TYPE_2__ ocs_hw_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(ocs_hw_t *hw, ocs_hw_io_t *io)
{
	if (io->axr_buf != NULL) {
		FUNC4(&hw->io_lock);
			/* check  list and remove if there */
			if (FUNC2(&io->dnrx_link)) {
				FUNC3(&hw->io_port_dnrx, io);
				io->auto_xfer_rdy_dnrx = 0;

				/* release the count for waiting for a buffer */
				FUNC0(hw, io);
			}

			FUNC5(hw->auto_xfer_rdy_buf_pool, io->axr_buf);
			io->axr_buf = NULL;
		FUNC6(&hw->io_lock);

		FUNC1(hw);
	}
	return;
}