#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cclk; } ;
struct TYPE_4__ {int pmask; } ;
struct TYPE_6__ {int chipid; int fpga; int nports; TYPE_2__ vpd; TYPE_1__ vfres; } ;
struct adapter {int /*<<< orphan*/ * chip_params; TYPE_3__ params; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*) ; 

int FUNC4(struct adapter *adapter)
{
	int err;

	/*
	 * Wait for the device to become ready before proceeding ...
	 */
	err = FUNC3(adapter);
	if (err)
		return err;

	adapter->params.chipid = FUNC1(adapter->dev) >> 12;
	if (adapter->params.chipid >= 0xa) {
		adapter->params.chipid -= (0xa - 0x4);
		adapter->params.fpga = 1;
	}
	
	/*
	 * Default port and clock for debugging in case we can't reach
	 * firmware.
	 */
	adapter->params.nports = 1;
	adapter->params.vfres.pmask = 1;
	adapter->params.vpd.cclk = 50000;

	adapter->chip_params = FUNC2(FUNC0(adapter));
	if (adapter->chip_params == NULL)
		return -EINVAL;

	return 0;
}