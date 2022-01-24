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
 int /*<<< orphan*/  PCIR_SECBUS_1 ; 
 scalar_t__ PCIS_BRIDGE_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int bus;

	if ((FUNC2(dev) != PCIC_BRIDGE) ||
	    (FUNC3(dev) != PCIS_BRIDGE_PCI))
		return (ENXIO);
	bus = FUNC4(dev, PCIR_SECBUS_1, 1);
	if (bus == 0)
		return (ENXIO);
	if (FUNC1(bus) != 0)
		return (ENXIO);
	FUNC0(dev, "MPTable PCI-PCI bridge");
	return (-1000);
}