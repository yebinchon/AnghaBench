#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_port_dnrx; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_8__ {int /*<<< orphan*/  ref; scalar_t__ auto_xfer_rdy_dnrx; TYPE_1__* hw; } ;
typedef  TYPE_2__ ocs_hw_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void (*) (void*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	ocs_hw_io_t *io = (ocs_hw_io_t *)arg;
	ocs_hw_t *hw = io->hw;

	/*
	 * For auto xfer rdy, if the dnrx bit is set, then add it to the list of XRIs
	 * waiting for buffers.
	 */
	if (io->auto_xfer_rdy_dnrx) {
		FUNC2(&hw->io_lock);
			/* take a reference count because we still own the IO until the buffer is posted */
			FUNC3(&io->ref, ocs_hw_io_free_port_owned, io);
			FUNC1(&hw->io_port_dnrx, io);
		FUNC4(&hw->io_lock);
	}

	/* perform common cleanup */
	FUNC0(hw, io);
}