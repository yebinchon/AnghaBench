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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct nvme_controller {int /*<<< orphan*/  quirks; } ;
struct _pcsid {char* desc; int /*<<< orphan*/  quirks; scalar_t__ devid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int BUS_PROBE_GENERIC ; 
 struct nvme_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ PCIC_STORAGE ; 
 scalar_t__ PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0 ; 
 scalar_t__ PCIS_STORAGE_NVM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct _pcsid*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct _pcsid* pci_ids ; 

__attribute__((used)) static int
FUNC8 (device_t device)
{
	struct nvme_controller *ctrlr = FUNC0(device);
	struct _pcsid	*ep;
	uint32_t	devid;
	uint16_t	subdevice;

	devid = FUNC4(device);
	subdevice = FUNC7(device);
	ep = pci_ids;

	while (ep->devid) {
		if (FUNC2(devid, subdevice, ep))
			break;
		++ep;
	}
	if (ep->devid)
		ctrlr->quirks = ep->quirks;

	if (ep->desc) {
		FUNC1(device, ep->desc);
		return (BUS_PROBE_DEFAULT);
	}

#if defined(PCIS_STORAGE_NVM)
	if (pci_get_class(device)    == PCIC_STORAGE &&
	    pci_get_subclass(device) == PCIS_STORAGE_NVM &&
	    pci_get_progif(device)   == PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0) {
		device_set_desc(device, "Generic NVMe Device");
		return (BUS_PROBE_GENERIC);
	}
#endif

	return (ENXIO);
}