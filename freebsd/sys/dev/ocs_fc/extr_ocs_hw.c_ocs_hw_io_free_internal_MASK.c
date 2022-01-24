#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_inuse; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_9__ {TYPE_1__* hw; } ;
typedef  TYPE_2__ ocs_hw_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	ocs_hw_io_t *io = (ocs_hw_io_t *)arg;
	ocs_hw_t *hw = io->hw;

	/* perform common cleanup */
	FUNC0(hw, io);

	FUNC3(&hw->io_lock);
		/* remove from in-use list */
		FUNC2(&hw->io_inuse, io);
		FUNC1(hw, io);
	FUNC4(&hw->io_lock);
}