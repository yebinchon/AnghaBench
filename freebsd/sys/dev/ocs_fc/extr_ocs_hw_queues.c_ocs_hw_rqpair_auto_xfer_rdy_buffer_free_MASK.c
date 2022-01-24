#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * auto_xfer_rdy_buf_pool; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  os; } ;
typedef  TYPE_2__ ocs_hw_t ;
struct TYPE_6__ {int /*<<< orphan*/  dma; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;
typedef  TYPE_3__ ocs_hw_auto_xfer_rdy_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ocs_hw_t *hw)
{
	ocs_hw_auto_xfer_rdy_buffer_t *buf;
	uint32_t i;

	if (hw->auto_xfer_rdy_buf_pool != NULL) {
		FUNC1(&hw->io_lock);
			for (i = 0; i < FUNC3(hw->auto_xfer_rdy_buf_pool); i++) {
				buf = FUNC4(hw->auto_xfer_rdy_buf_pool, i);
				if (buf != NULL) {
					FUNC0(hw->os, &buf->payload.dma);
				}
			}
		FUNC5(&hw->io_lock);

		FUNC2(hw->auto_xfer_rdy_buf_pool);
		hw->auto_xfer_rdy_buf_pool = NULL;
	}
}