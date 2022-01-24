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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MV88E61XX_PORT_REVISION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	uint16_t val;

	val = FUNC0(FUNC2(dev), FUNC1(0),
	    MV88E61XX_PORT_REVISION);
	switch (val >> 4) {
	case 0x121:
		FUNC3(dev, "Marvell Link Street 88E6123 3-Port Gigabit Switch");
		return (0);
	case 0x161:
		FUNC3(dev, "Marvell Link Street 88E6161 6-Port Gigabit Switch");
		return (0);
	case 0x165:
		FUNC3(dev, "Marvell Link Street 88E6161 6-Port Advanced Gigabit Switch");
		return (0);
	default:
		return (ENXIO);
	}
}