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
struct qpi_device {int qd_pcibus; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_QPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PCIR_DEVVENDOR ; 
 int PCI_SLOTMAX ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct qpi_device*) ; 
 struct qpi_device* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int bus)
{
	struct qpi_device *qdev;
	device_t child;
	uint32_t devid;
	int s;

	/*
	 * If a PCI bus already exists for this bus number, then
	 * fail.
	 */
	if (FUNC7(bus, 0, 0) != NULL)
		return (EEXIST);

	/*
	 * Attempt to read the device id for every slot, function 0 on
	 * the bus.  If all read values are 0xffffffff this means that
	 * the bus is not present.
	 */
	for (s = 0; s <= PCI_SLOTMAX; s++) {
		devid = FUNC6(bus, s, 0, PCIR_DEVVENDOR, 4);
		if (devid != 0xffffffff)
			break;
	}
	if (devid == 0xffffffff)
		return (ENOENT);

	if ((devid & 0xffff) != 0x8086) {
		if (bootverbose)
			FUNC2(dev,
			    "Device at pci%d.%d.0 has non-Intel vendor 0x%x\n",
			    bus, s, devid & 0xffff);
		return (ENXIO);
	}

	child = FUNC0(dev, 0, "pcib", -1);
	if (child == NULL)
		FUNC5("%s: failed to add pci bus %d", FUNC1(dev),
		    bus);
	qdev = FUNC4(sizeof(struct qpi_device), M_QPI, M_WAITOK);
	qdev->qd_pcibus = bus;
	FUNC3(child, qdev);
	return (0);
}