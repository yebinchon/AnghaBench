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
typedef  int /*<<< orphan*/  mii_bitbang_ops_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MDC ; 
 int MDI ; 
 int MDIRHOST ; 
 int MDIRPHY ; 
 int MII_COMMAND_READ ; 
 int MII_COMMAND_START ; 
 int MREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev, mii_bitbang_ops_t ops, int phy, int reg)
{
	int i, error, val;

	FUNC2(dev, ops);

	FUNC1(dev, ops, MII_COMMAND_START, 2);
	FUNC1(dev, ops, MII_COMMAND_READ, 2);
	FUNC1(dev, ops, phy, 5);
	FUNC1(dev, ops, reg, 5);

	/* Switch direction to PHY->host, without a clock transition. */
	FUNC0(MDIRHOST);

	/* Turnaround clock. */
	FUNC0(MDIRHOST | MDC);
	FUNC0(MDIRHOST);

	/* Check for error. */
	error = MREAD & MDI;

	/* Idle clock. */
	FUNC0(MDIRHOST | MDC);
	FUNC0(MDIRHOST);

	val = 0;
	for (i = 0; i < 16; i++) {
		val <<= 1;
		/* Read data prior to clock low-high transition. */
		if (error == 0 && (MREAD & MDI) != 0)
			val |= 1;

		FUNC0(MDIRHOST | MDC);
		FUNC0(MDIRHOST);
	}

	/* Set direction to host->PHY, without a clock transition. */
	FUNC0(MDIRPHY);

	return (error != 0 ? 0 : val);
}