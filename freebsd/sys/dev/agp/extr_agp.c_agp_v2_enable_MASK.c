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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AGP_COMMAND ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int AGP_MODE_V2_RATE_1x ; 
 int AGP_MODE_V2_RATE_2x ; 
 int AGP_MODE_V2_RATE_4x ; 
 scalar_t__ AGP_STATUS ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC13(device_t dev, device_t mdev, u_int32_t mode)
{
	u_int32_t tstatus, mstatus;
	u_int32_t command;
	int rq, sba, fw, rate;

	tstatus = FUNC11(dev, FUNC9(dev) + AGP_STATUS, 4);
	mstatus = FUNC11(mdev, FUNC9(mdev) + AGP_STATUS, 4);

	/* Set RQ to the min of mode, tstatus and mstatus */
	rq = FUNC2(mode);
	if (FUNC2(tstatus) < rq)
		rq = FUNC2(tstatus);
	if (FUNC2(mstatus) < rq)
		rq = FUNC2(mstatus);

	/* Set SBA if all three can deal with SBA */
	sba = (FUNC3(tstatus)
	       & FUNC3(mstatus)
	       & FUNC3(mode));

	/* Similar for FW */
	fw = (FUNC0(tstatus)
	       & FUNC0(mstatus)
	       & FUNC0(mode));

	/* Figure out the max rate */
	rate = (FUNC1(tstatus)
		& FUNC1(mstatus)
		& FUNC1(mode));
	if (rate & AGP_MODE_V2_RATE_4x)
		rate = AGP_MODE_V2_RATE_4x;
	else if (rate & AGP_MODE_V2_RATE_2x)
		rate = AGP_MODE_V2_RATE_2x;
	else
		rate = AGP_MODE_V2_RATE_1x;
	if (bootverbose)
		FUNC10(dev, "Setting AGP v2 mode %d\n", rate);

	/* Construct the new mode word and tell the hardware */
	command = 0;
	command = FUNC7(0, rq);
	command = FUNC8(command, sba);
	command = FUNC5(command, fw);
	command = FUNC6(command, rate);
	command = FUNC4(command, 1);
	FUNC12(dev, FUNC9(dev) + AGP_COMMAND, command, 4);
	FUNC12(mdev, FUNC9(mdev) + AGP_COMMAND, command, 4);

	return 0;
}