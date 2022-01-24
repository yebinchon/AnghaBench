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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_XHCI_INTEL_USB2PRM ; 
 int /*<<< orphan*/  PCI_XHCI_INTEL_USB3PRM ; 
 int /*<<< orphan*/  PCI_XHCI_INTEL_USB3_PSSEN ; 
 int /*<<< orphan*/  PCI_XHCI_INTEL_XUSB2PR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t self, uint32_t set, uint32_t clear)
{
	uint32_t temp;
	uint32_t usb3_mask;
	uint32_t usb2_mask;

	temp = FUNC1(self, PCI_XHCI_INTEL_USB3_PSSEN, 4) |
	    FUNC1(self, PCI_XHCI_INTEL_XUSB2PR, 4);

	temp |= set;
	temp &= ~clear;

	/* Don't set bits which the hardware doesn't support */
	usb3_mask = FUNC1(self, PCI_XHCI_INTEL_USB3PRM, 4);
	usb2_mask = FUNC1(self, PCI_XHCI_INTEL_USB2PRM, 4);

	FUNC2(self, PCI_XHCI_INTEL_USB3_PSSEN, temp & usb3_mask, 4);
	FUNC2(self, PCI_XHCI_INTEL_XUSB2PR, temp & usb2_mask, 4);

	FUNC0(self, "Port routing mask set to 0x%08x\n", temp);

	return (0);
}