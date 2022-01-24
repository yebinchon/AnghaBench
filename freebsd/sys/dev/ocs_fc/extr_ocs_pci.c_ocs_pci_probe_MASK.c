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
#define  PCI_PRODUCT_EMULEX_LPE31004 130 
#define  PCI_PRODUCT_EMULEX_OCE16001 129 
#define  PCI_PRODUCT_EMULEX_OCE50102 128 
 scalar_t__ PCI_VENDOR_EMULEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	char	*desc = NULL;

	if (FUNC2(dev) != PCI_VENDOR_EMULEX) { 
		return ENXIO;
	}

	switch (FUNC1(dev)) {
	case PCI_PRODUCT_EMULEX_OCE16001:
		desc = "Emulex LightPulse FC Adapter";
		break;
	case PCI_PRODUCT_EMULEX_LPE31004:
		desc = "Emulex LightPulse FC Adapter";
		break;
	case PCI_PRODUCT_EMULEX_OCE50102:
		desc = "Emulex LightPulse 10GbE FCoE/NIC Adapter";
		break;
	default:
		return ENXIO;
	}

	FUNC0(dev, desc);

	return BUS_PROBE_DEFAULT;
}