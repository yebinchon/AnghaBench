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
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int AGP_MODE_V3_RATE_4x ; 
 int AGP_MODE_V3_RATE_8x ; 
 scalar_t__ AGP_STATUS ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC17(device_t dev, device_t mdev, u_int32_t mode)
{
	u_int32_t tstatus, mstatus;
	u_int32_t command;
	int rq, sba, fw, rate, arqsz, cal;

	tstatus = FUNC15(dev, FUNC13(dev) + AGP_STATUS, 4);
	mstatus = FUNC15(mdev, FUNC13(mdev) + AGP_STATUS, 4);

	/* Set RQ to the min of mode, tstatus and mstatus */
	rq = FUNC4(mode);
	if (FUNC4(tstatus) < rq)
		rq = FUNC4(tstatus);
	if (FUNC4(mstatus) < rq)
		rq = FUNC4(mstatus);

	/*
	 * ARQSZ - Set the value to the maximum one.
	 * Don't allow the mode register to override values.
	 */
	arqsz = FUNC0(mode);
	if (FUNC0(tstatus) > rq)
		rq = FUNC0(tstatus);
	if (FUNC0(mstatus) > rq)
		rq = FUNC0(mstatus);

	/* Calibration cycle - don't allow override by mode register */
	cal = FUNC1(tstatus);
	if (FUNC1(mstatus) < cal)
		cal = FUNC1(mstatus);

	/* SBA must be supported for AGP v3. */
	sba = 1;

	/* Set FW if all three support it. */
	fw = (FUNC2(tstatus)
	       & FUNC2(mstatus)
	       & FUNC2(mode));
	
	/* Figure out the max rate */
	rate = (FUNC3(tstatus)
		& FUNC3(mstatus)
		& FUNC3(mode));
	if (rate & AGP_MODE_V3_RATE_8x)
		rate = AGP_MODE_V3_RATE_8x;
	else
		rate = AGP_MODE_V3_RATE_4x;
	if (bootverbose)
		FUNC14(dev, "Setting AGP v3 mode %d\n", rate * 4);

	FUNC16(dev, FUNC13(dev) + AGP_COMMAND, 0, 4);

	/* Construct the new mode word and tell the hardware */
	command = 0;
	command = FUNC11(0, rq);
	command = FUNC6(command, arqsz);
	command = FUNC7(command, cal);
	command = FUNC12(command, sba);
	command = FUNC8(command, fw);
	command = FUNC10(command, rate);
	command = FUNC9(command, 1);
	command = FUNC5(command, 1);
	FUNC16(dev, FUNC13(dev) + AGP_COMMAND, command, 4);
	FUNC16(mdev, FUNC13(mdev) + AGP_COMMAND, command, 4);

	return 0;
}