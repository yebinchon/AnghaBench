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
 int FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*,int*) ; 
 struct arswitch_softc* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev, int addr, int value)
{
	struct arswitch_softc *sc;
	uint16_t phy, reg;

	sc = FUNC2(dev);

	FUNC1(dev, addr, &phy, &reg);
	return (FUNC0(dev, 0x10 | phy, reg, value));
}