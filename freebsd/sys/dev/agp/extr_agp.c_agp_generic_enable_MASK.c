#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ AGP_STATUS ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int
FUNC7(device_t dev, u_int32_t mode)
{
	device_t mdev = FUNC3();
	u_int32_t tstatus, mstatus;

	if (!mdev) {
		FUNC0("can't find display\n");
		return ENXIO;
	}

	tstatus = FUNC6(dev, FUNC2(dev) + AGP_STATUS, 4);
	mstatus = FUNC6(mdev, FUNC2(mdev) + AGP_STATUS, 4);

	/*
	 * Check display and bridge for AGP v3 support.  AGP v3 allows
	 * more variety in topology than v2, e.g. multiple AGP devices
	 * attached to one bridge, or multiple AGP bridges in one
	 * system.  This doesn't attempt to address those situations,
	 * but should work fine for a classic single AGP slot system
	 * with AGP v3.
	 */
	if (FUNC1(mode) &&
	    FUNC1(tstatus) &&
	    FUNC1(mstatus))
		return (FUNC5(dev, mdev, mode));
	else
		return (FUNC4(dev, mdev, mode));	    
}