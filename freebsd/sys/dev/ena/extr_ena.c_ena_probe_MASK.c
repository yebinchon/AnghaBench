#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ vendor_id; scalar_t__ device_id; } ;
typedef  TYPE_1__ ena_vendor_info_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 char* DEVICE_DESC ; 
 int /*<<< orphan*/  ENA_DBG ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 TYPE_1__* ena_vendor_info_array ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	ena_vendor_info_t *ent;
	char		adapter_name[60];
	uint16_t	pci_vendor_id = 0;
	uint16_t	pci_device_id = 0;

	pci_vendor_id = FUNC3(dev);
	pci_device_id = FUNC2(dev);

	ent = ena_vendor_info_array;
	while (ent->vendor_id != 0) {
		if ((pci_vendor_id == ent->vendor_id) &&
		    (pci_device_id == ent->device_id)) {
			FUNC1(ENA_DBG, "vendor=%x device=%x\n",
			    pci_vendor_id, pci_device_id);

			FUNC4(adapter_name, DEVICE_DESC);
			FUNC0(dev, adapter_name);
			return (BUS_PROBE_DEFAULT);
		}

		ent++;

	}

	return (ENXIO);
}