#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {char* rm_descr; void* rm_type; } ;
struct ps3bus_softc {TYPE_1__ sc_mem_rman; int /*<<< orphan*/  rcount; int /*<<< orphan*/  regions; TYPE_1__ sc_intr_rman; } ;
struct ps3bus_devinfo {int bus; int dev; int bustype; int devtype; int busidx; int devidx; int /*<<< orphan*/  iommu_mtx; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_IRQ ; 
 int /*<<< orphan*/  EHCI_REG ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_PS3BUS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OHCI_IRQ ; 
 int /*<<< orphan*/  OHCI_REG ; 
 int PS3_BUSTYPE_STORAGE ; 
 int PS3_BUSTYPE_SYSBUS ; 
#define  PS3_DEVTYPE_USB 128 
 int /*<<< orphan*/  PS3_LPAR_ID_PME ; 
 void* RMAN_ARRAY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct ps3bus_softc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ps3bus_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ps3bus_devinfo*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 struct ps3bus_devinfo* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int,struct ps3bus_devinfo*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ps3bus_devinfo*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC17(device_t self) 
{
	struct ps3bus_softc *sc;
	struct ps3bus_devinfo *dinfo;
	int bus_index, dev_index, result;
	uint64_t bustype, bus, devs;
	uint64_t dev, devtype;
	uint64_t junk;
	device_t cdev;

	sc = FUNC3(self);
	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	sc->sc_mem_rman.rm_descr = "PS3Bus Memory Mapped I/O";
	sc->sc_intr_rman.rm_type = RMAN_ARRAY;
	sc->sc_intr_rman.rm_descr = "PS3Bus Interrupts";
	FUNC15(&sc->sc_mem_rman);
	FUNC15(&sc->sc_intr_rman);
	FUNC16(&sc->sc_intr_rman, 0, ~0);

	/* Get memory regions for DMA */
	FUNC11(&sc->regions, &sc->rcount, NULL, NULL);

	/*
	 * Probe all the PS3's buses.
	 */

	for (bus_index = 0; bus_index < 5; bus_index++) {
		result = FUNC7(PS3_LPAR_ID_PME,
		    (FUNC9("bus") >> 32) | bus_index,
		    FUNC9("type"), 0, 0, &bustype, &junk);

		if (result != 0)
			continue;

		result = FUNC7(PS3_LPAR_ID_PME,
		    (FUNC9("bus") >> 32) | bus_index,
		    FUNC9("id"), 0, 0, &bus, &junk);

		if (result != 0)
			continue;

		result = FUNC7(PS3_LPAR_ID_PME,
		    (FUNC9("bus") >> 32) | bus_index,
		    FUNC9("num_dev"), 0, 0, &devs, &junk);

		for (dev_index = 0; dev_index < devs; dev_index++) {
			result = FUNC7(PS3_LPAR_ID_PME,
			    (FUNC9("bus") >> 32) | bus_index,
			    FUNC9("dev") | dev_index,
			    FUNC9("type"), 0, &devtype, &junk);

			if (result != 0)
				continue;

			result = FUNC7(PS3_LPAR_ID_PME,
			    (FUNC9("bus") >> 32) | bus_index,
			    FUNC9("dev") | dev_index,
			    FUNC9("id"), 0, &dev, &junk);

			if (result != 0)
				continue;
			
			switch (devtype) {
			case PS3_DEVTYPE_USB:
				/* USB device has OHCI and EHCI USB host controllers */

				FUNC8(bus, dev, 0);

				/* OHCI host controller */

				dinfo = FUNC10(sizeof(*dinfo), M_PS3BUS,
				    M_WAITOK | M_ZERO);

				dinfo->bus = bus;
				dinfo->dev = dev;
				dinfo->bustype = bustype;
				dinfo->devtype = devtype;
				dinfo->busidx = bus_index;
				dinfo->devidx = dev_index;

				FUNC14(&sc->sc_mem_rman, bus_index,
				    dev_index, OHCI_IRQ, OHCI_REG, dinfo);

				cdev = FUNC2(self, "ohci", -1);
				if (cdev == NULL) {
					FUNC4(self,
					    "device_add_child failed\n");
					FUNC6(dinfo, M_PS3BUS);
					continue;
				}

				FUNC12(&dinfo->iommu_mtx, "iommu", NULL, MTX_DEF);
				FUNC5(cdev, dinfo);

				/* EHCI host controller */

				dinfo = FUNC10(sizeof(*dinfo), M_PS3BUS,
				    M_WAITOK | M_ZERO);

				dinfo->bus = bus;
				dinfo->dev = dev;
				dinfo->bustype = bustype;
				dinfo->devtype = devtype;
				dinfo->busidx = bus_index;
				dinfo->devidx = dev_index;

				FUNC14(&sc->sc_mem_rman, bus_index,
				    dev_index, EHCI_IRQ, EHCI_REG, dinfo);

				cdev = FUNC2(self, "ehci", -1);
				if (cdev == NULL) {
					FUNC4(self,
					    "device_add_child failed\n");
					FUNC6(dinfo, M_PS3BUS);
					continue;
				}

				FUNC12(&dinfo->iommu_mtx, "iommu", NULL, MTX_DEF);
				FUNC5(cdev, dinfo);
				break;
			default:
				dinfo = FUNC10(sizeof(*dinfo), M_PS3BUS,
				    M_WAITOK | M_ZERO);

				dinfo->bus = bus;
				dinfo->dev = dev;
				dinfo->bustype = bustype;
				dinfo->devtype = devtype;
				dinfo->busidx = bus_index;
				dinfo->devidx = dev_index;

				if (dinfo->bustype == PS3_BUSTYPE_SYSBUS ||
				    dinfo->bustype == PS3_BUSTYPE_STORAGE)
					FUNC8(bus, dev, 0);

				FUNC13(&sc->sc_mem_rman, bus_index,
				    dev_index, dinfo);

				cdev = FUNC2(self, NULL, -1);
				if (cdev == NULL) {
					FUNC4(self,
					    "device_add_child failed\n");
					FUNC6(dinfo, M_PS3BUS);
					continue;
				}

				FUNC12(&dinfo->iommu_mtx, "iommu", NULL, MTX_DEF);
				FUNC5(cdev, dinfo);
			}
		}
	}
	
	FUNC1(self, 1000);

	return (FUNC0(self));
}