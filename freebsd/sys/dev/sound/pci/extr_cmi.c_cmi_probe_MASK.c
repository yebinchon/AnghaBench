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
#define  CMI120_USB_ID 132 
#define  CMI8338A_PCI_ID 131 
#define  CMI8338B_PCI_ID 130 
#define  CMI8738B_PCI_ID 129 
#define  CMI8738_PCI_ID 128 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	switch(FUNC1(dev)) {
	case CMI8338A_PCI_ID:
		FUNC0(dev, "CMedia CMI8338A");
		return BUS_PROBE_DEFAULT;
	case CMI8338B_PCI_ID:
		FUNC0(dev, "CMedia CMI8338B");
		return BUS_PROBE_DEFAULT;
	case CMI8738_PCI_ID:
		FUNC0(dev, "CMedia CMI8738");
		return BUS_PROBE_DEFAULT;
	case CMI8738B_PCI_ID:
		FUNC0(dev, "CMedia CMI8738B");
		return BUS_PROBE_DEFAULT;
	case CMI120_USB_ID:
	        FUNC0(dev, "CMedia CMI120");
	        return BUS_PROBE_DEFAULT;
	default:
		return ENXIO;
	}
}