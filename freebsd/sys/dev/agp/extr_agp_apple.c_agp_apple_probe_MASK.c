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
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_HOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{

	if (FUNC6("agp", FUNC1(dev)))
		return (ENXIO);

	if (FUNC3(dev) != PCIC_BRIDGE
	    || FUNC5(dev) != PCIS_BRIDGE_HOST)
		return (ENXIO);

	if (FUNC0(dev) == 0)
		return (ENXIO);

	if (FUNC3(dev) != PCIC_BRIDGE
	    || FUNC5(dev) != PCIS_BRIDGE_HOST)
		return (ENXIO);

	switch (FUNC4(dev)) {
	case 0x0020106b:
	case 0x0027106b:
		FUNC2(dev, "Apple UniNorth AGP Bridge");
		return (BUS_PROBE_DEFAULT);
	case 0x002d106b:
		FUNC2(dev, "Apple UniNorth 1.5 AGP Bridge");
		return (BUS_PROBE_DEFAULT);
	case 0x0034106b:
		FUNC2(dev, "Apple UniNorth 2 AGP Bridge");
		return (BUS_PROBE_DEFAULT);
	case 0x004b106b:
	case 0x0058106b:
	case 0x0059106b:
		FUNC2(dev, "Apple U3 AGP Bridge");
		return (BUS_PROBE_DEFAULT);
	case 0x0066106b:
		FUNC2(dev, "Apple Intrepid AGP Bridge");
		return (BUS_PROBE_DEFAULT);
	}

	return (ENXIO);
}