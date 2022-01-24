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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
#define  PCIC_DISPLAY 129 
#define  PCIC_OLD 128 
 int /*<<< orphan*/  PCIS_OLD_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	switch (FUNC1(dev)) {
	case PCIC_DISPLAY:
		break;
	case PCIC_OLD:
		if (FUNC2(dev) != PCIS_OLD_VGA)
			return (ENXIO);
		break;
	default:
		return (ENXIO);
	}

	/* Probe default display. */
	FUNC3(dev);

	FUNC0(dev, "VGA-compatible display");
	return (BUS_PROBE_GENERIC);
}