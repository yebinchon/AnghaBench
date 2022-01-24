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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMAN_PORT_DEVSTR ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	phandle_t node;

	if (FUNC4(dev, "simple-bus")) {
		node = FUNC3(dev);
		for (node = FUNC0(node); node > 0; node = FUNC1(node)) {
			if (FUNC5(node, "fsl,bman-portal"))
				break;
		}
		if (node <= 0)
			return (ENXIO);
	} else if (!FUNC4(dev, "fsl,bman-portals"))
		return (ENXIO);

	FUNC2(dev, BMAN_PORT_DEVSTR);

	return (BUS_PROBE_DEFAULT);
}