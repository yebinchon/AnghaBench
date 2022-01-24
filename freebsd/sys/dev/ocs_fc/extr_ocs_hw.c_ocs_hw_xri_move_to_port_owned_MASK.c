#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_port_owned; int /*<<< orphan*/  os; int /*<<< orphan*/  io_free; scalar_t__ auto_xfer_rdy_enabled; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
struct TYPE_12__ {int is_port_owned; int /*<<< orphan*/  indicator; int /*<<< orphan*/  axr_lock; } ;
typedef  TYPE_2__ ocs_hw_io_t ;

/* Variables and functions */
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

uint32_t
FUNC9(ocs_hw_t *hw, uint32_t num_xri)
{
	ocs_hw_io_t	*io;
	uint32_t i;
	uint32_t num_posted = 0;

	/*
	 * Note: We cannot use ocs_hw_io_alloc() because that would place the
	 *       IO on the io_inuse list. We need to move from the io_free to
	 *       the io_port_owned list.
	 */
	FUNC6(&hw->io_lock);

	for (i = 0; i < num_xri; i++) {

		if (NULL != (io = FUNC5(&hw->io_free))) {
			ocs_hw_rtn_e rc;

			/*
			 * if this is an auto xfer rdy XRI, then we need to attach a
			 * buffer to the XRI before submitting it to the chip. If a
			 * buffer is unavailable, then we cannot post it, so return it
			 * to the free pool.
			 */
			if (hw->auto_xfer_rdy_enabled) {
				/* Note: uses the IO lock to get the auto xfer rdy buffer */
				FUNC8(&hw->io_lock);
				rc = FUNC2(hw, io);
				FUNC6(&hw->io_lock);
				if (rc != OCS_HW_RTN_SUCCESS) {
					FUNC3(&hw->io_free, io);
					break;
				}
			}
			FUNC7(hw->os, &io->axr_lock, "HW_axr_lock[%d]", io->indicator);
			io->is_port_owned = 1;
			FUNC4(&hw->io_port_owned, io);

			/* Post XRI */
			if (FUNC0(hw, io->indicator, 1) != OCS_HW_RTN_SUCCESS ) {
				FUNC1(hw, io->indicator, i);
				break;
			}
			num_posted++;
		} else {
			/* no more free XRIs */
			break;
		}
	}
	FUNC8(&hw->io_lock);

	return num_posted;
}