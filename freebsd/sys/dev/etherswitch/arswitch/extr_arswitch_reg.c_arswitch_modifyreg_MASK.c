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
typedef  int uint16_t ;
struct arswitch_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, int addr, int mask, int set)
{
	int value;
	uint16_t phy, reg;

	FUNC0((struct arswitch_softc *)FUNC4(dev),
	    MA_OWNED);

	FUNC3(dev, addr, &phy, &reg);

	value = FUNC1(dev, 0x10 | phy, reg);
	value &= ~mask;
	value |= set;
	return (FUNC2(dev, 0x10 | phy, reg, value));
}