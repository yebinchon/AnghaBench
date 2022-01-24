#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_free; int /*<<< orphan*/  io_port_owned; scalar_t__ auto_xfer_rdy_enabled; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_11__ {scalar_t__ is_port_owned; } ;
typedef  TYPE_2__ ocs_hw_io_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ocs_hw_t *hw, uint16_t xri_base, uint16_t xri_count)
{
	ocs_hw_io_t	*io;
	uint32_t i;

	for (i = 0; i < xri_count; i++) {
		io = FUNC0(hw, xri_base + i);

		/*
		 * if this is an auto xfer rdy XRI, then we need to release any
		 * buffer attached to the XRI before moving the XRI back to the free pool.
		 */
		if (hw->auto_xfer_rdy_enabled) {
			FUNC1(hw, io);
		}

		FUNC4(&hw->io_lock);
			FUNC3(&hw->io_port_owned, io);
			io->is_port_owned = 0;
			FUNC2(&hw->io_free, io);
		FUNC5(&hw->io_lock);
	}
}