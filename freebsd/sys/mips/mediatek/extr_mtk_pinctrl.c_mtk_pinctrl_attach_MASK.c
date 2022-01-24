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
 int ENXIO ; 
 int /*<<< orphan*/  SYSCTL_GPIOMODE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{

	if (FUNC0(dev) != 0) {
		FUNC1(dev, "Only one pin control allowed\n");
		return (ENXIO);
	}

	if (bootverbose)
		FUNC1(dev, "GPIO mode start: 0x%08x\n",
		    FUNC4(SYSCTL_GPIOMODE));

	FUNC3(dev, NULL);
	FUNC2(dev);

	if (bootverbose)
		FUNC1(dev, "GPIO mode end  : 0x%08x\n",
		    FUNC4(SYSCTL_GPIOMODE));

	return (0);
}