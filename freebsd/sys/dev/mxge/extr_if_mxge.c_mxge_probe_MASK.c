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
 scalar_t__ MXGE_PCI_DEVICE_Z8E ; 
 scalar_t__ MXGE_PCI_DEVICE_Z8E_9 ; 
#define  MXGE_PCI_REV_Z8E 129 
#define  MXGE_PCI_REV_Z8ES 128 
 scalar_t__ MXGE_PCI_VENDOR_MYRICOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int rev;


	if ((FUNC4(dev) == MXGE_PCI_VENDOR_MYRICOM) &&
	    ((FUNC2(dev) == MXGE_PCI_DEVICE_Z8E) ||
	     (FUNC2(dev) == MXGE_PCI_DEVICE_Z8E_9))) {
		rev = FUNC3(dev);
		switch (rev) {
		case MXGE_PCI_REV_Z8E:
			FUNC1(dev, "Myri10G-PCIE-8A");
			break;
		case MXGE_PCI_REV_Z8ES:
			FUNC1(dev, "Myri10G-PCIE-8B");
			break;
		default:
			FUNC1(dev, "Myri10G-PCIE-8??");
			FUNC0(dev, "Unrecognized rev %d NIC\n",
				      rev);
			break;	
		}
		return 0;
	}
	return ENXIO;
}