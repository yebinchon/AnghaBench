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
#define  AMD_PCNET_HOME 129 
#define  AMD_PCNET_PCI 128 
 scalar_t__ AMD_VENDOR ; 
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (FUNC2(dev) != AMD_VENDOR)
		return (ENXIO);

	switch (FUNC1(dev)) {
	case AMD_PCNET_PCI:
		FUNC0(dev, "AMD PCnet-PCI");
		/* Let pcn(4) win. */
		return (BUS_PROBE_LOW_PRIORITY);
	case AMD_PCNET_HOME:
		FUNC0(dev, "AMD PCnet-Home");
		/* Let pcn(4) win. */
		return (BUS_PROBE_LOW_PRIORITY);
	default:
		return (ENXIO);
	}
}