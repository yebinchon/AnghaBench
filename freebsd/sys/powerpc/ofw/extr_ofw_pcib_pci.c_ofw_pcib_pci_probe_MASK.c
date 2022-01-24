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
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	if ((FUNC2(dev) != PCIC_BRIDGE) ||
	    (FUNC3(dev) != PCIS_BRIDGE_PCI)) {
		return (ENXIO);
	}

	if (FUNC1(dev) == -1)
		return (ENXIO);

	FUNC0(dev, "OFW PCI-PCI bridge");
	return (0);
}