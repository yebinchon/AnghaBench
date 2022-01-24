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
#define  VIA8233_PCI_ID 135 
#define  VIA8233_REV_ID_8233 134 
#define  VIA8233_REV_ID_8233A 133 
#define  VIA8233_REV_ID_8233C 132 
#define  VIA8233_REV_ID_8233PRE 131 
#define  VIA8233_REV_ID_8235 130 
#define  VIA8233_REV_ID_8237 129 
#define  VIA8233_REV_ID_8251 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	switch(FUNC1(dev)) {
	case VIA8233_PCI_ID:
		switch(FUNC2(dev)) {
		case VIA8233_REV_ID_8233PRE:
			FUNC0(dev, "VIA VT8233 (pre)");
			return (BUS_PROBE_DEFAULT);
		case VIA8233_REV_ID_8233C:
			FUNC0(dev, "VIA VT8233C");
			return (BUS_PROBE_DEFAULT);
		case VIA8233_REV_ID_8233:
			FUNC0(dev, "VIA VT8233");
			return (BUS_PROBE_DEFAULT);
		case VIA8233_REV_ID_8233A:
			FUNC0(dev, "VIA VT8233A");
			return (BUS_PROBE_DEFAULT);
		case VIA8233_REV_ID_8235:
			FUNC0(dev, "VIA VT8235");
			return (BUS_PROBE_DEFAULT);
		case VIA8233_REV_ID_8237:
			FUNC0(dev, "VIA VT8237");
			return (BUS_PROBE_DEFAULT);
		case VIA8233_REV_ID_8251:
			FUNC0(dev, "VIA VT8251");
			return (BUS_PROBE_DEFAULT);
		default:
			FUNC0(dev, "VIA VT8233X");	/* Unknown */
			return (BUS_PROBE_DEFAULT);
		}
	}
	return (ENXIO);
}