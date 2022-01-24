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
 scalar_t__ PCI_DEVICE_ID_VMWARE_PVSCSI ; 
 scalar_t__ PCI_VENDOR_ID_VMWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (FUNC2(dev) == PCI_VENDOR_ID_VMWARE &&
	    FUNC1(dev) == PCI_DEVICE_ID_VMWARE_PVSCSI) {
		FUNC0(dev, "VMware Paravirtual SCSI Controller");
		return (BUS_PROBE_DEFAULT);
	}
	return (ENXIO);
}