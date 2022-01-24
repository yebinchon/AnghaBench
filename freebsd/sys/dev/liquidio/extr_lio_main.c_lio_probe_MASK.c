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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct lio_vendor_info {scalar_t__ vendor_id; scalar_t__ device_id; scalar_t__ subdevice_id; scalar_t__ revision_id; size_t index; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 char* LIO_VERSION ; 
 scalar_t__ PCI_VENDOR_ID_CAVIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct lio_vendor_info* lio_pci_tbl ; 
 char** lio_strings ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct lio_vendor_info	*tbl;

	uint16_t	vendor_id;
	uint16_t	device_id;
	uint16_t	subdevice_id;
	uint8_t		revision_id;
	char		device_ver[256];

	vendor_id = FUNC4(dev);
	if (vendor_id != PCI_VENDOR_ID_CAVIUM)
		return (ENXIO);

	device_id = FUNC1(dev);
	subdevice_id = FUNC3(dev);
	revision_id = FUNC2(dev);

	tbl = lio_pci_tbl;
	while (tbl->vendor_id) {
		if ((vendor_id == tbl->vendor_id) &&
		    (device_id == tbl->device_id) &&
		    (subdevice_id == tbl->subdevice_id) &&
		    (revision_id == tbl->revision_id)) {
			FUNC5(device_ver, "%s, Version - %s",
				lio_strings[tbl->index], LIO_VERSION);
			FUNC0(dev, device_ver);
			return (BUS_PROBE_DEFAULT);
		}

		tbl++;
	}

	return (ENXIO);
}