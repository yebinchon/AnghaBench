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
 int /*<<< orphan*/  MDIRPHY ; 
 int MII_COMMAND_ACK ; 
 int MII_COMMAND_START ; 
 int MII_COMMAND_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(device_t dev, mii_bitbang_ops_t ops, int phy, int reg,
    int val)
{

	FUNC2(dev, ops);

	FUNC1(dev, ops, MII_COMMAND_START, 2);
	FUNC1(dev, ops, MII_COMMAND_WRITE, 2);
	FUNC1(dev, ops, phy, 5);
	FUNC1(dev, ops, reg, 5);
	FUNC1(dev, ops, MII_COMMAND_ACK, 2);
	FUNC1(dev, ops, val, 16);

	FUNC0(MDIRPHY);
}