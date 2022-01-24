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
struct TYPE_4__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_port_dnrx; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_io_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(ocs_hw_t *hw)
{
	ocs_hw_io_t *io;
	int32_t rc;

	FUNC3(&hw->io_lock);

	while (!FUNC1(&hw->io_port_dnrx)) {
		io = FUNC2(&hw->io_port_dnrx);
		rc = FUNC0(hw, io);
		if(rc) {
			break;
		}
	}

	FUNC4(&hw->io_lock);
}