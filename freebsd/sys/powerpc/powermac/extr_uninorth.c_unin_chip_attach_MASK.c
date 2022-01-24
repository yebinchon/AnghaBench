#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  char u_int ;
struct TYPE_5__ {char* rm_descr; int /*<<< orphan*/  rm_type; } ;
struct unin_chip_softc {char sc_physaddr; char sc_size; char sc_version; scalar_t__ sc_addr; TYPE_1__ sc_mem_rman; } ;
struct TYPE_6__ {int obd_name; } ;
struct unin_chip_devinfo {size_t udi_ninterrupts; char* udi_interrupts; TYPE_3__ udi_obdinfo; int /*<<< orphan*/  udi_resources; } ;
typedef  int /*<<< orphan*/  scells ;
typedef  int /*<<< orphan*/  reg ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  iparent ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  compat ;
typedef  int cell_t ;
typedef  int /*<<< orphan*/  acells ;

/* Variables and functions */
 int ENXIO ; 
 char FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UNIN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (scalar_t__,char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct unin_chip_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct unin_chip_devinfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct unin_chip_devinfo*,int /*<<< orphan*/ ) ; 
 struct unin_chip_devinfo* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,char,char,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_1__*) ; 
 int FUNC22 (TYPE_1__*,char,int) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/ * unin_chip ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,struct unin_chip_devinfo*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,struct unin_chip_devinfo*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct unin_chip_softc *sc;
	struct unin_chip_devinfo *dinfo;
	phandle_t  root;
	phandle_t  child;
	phandle_t  iparent;
	device_t   cdev;
	cell_t     acells, scells;
	char compat[32];
	char name[32];
	u_int irq, reg[3];
	int error, i = 0;

	sc = FUNC8(dev);
	root = FUNC16(dev);

	if (FUNC3(root, "reg", reg, sizeof(reg)) < 8)
		return (ENXIO);

	acells = scells = 1;
	FUNC3(FUNC4(root), "#address-cells", &acells, sizeof(acells));
	FUNC3(FUNC4(root), "#size-cells", &scells, sizeof(scells));

	i = 0;
	sc->sc_physaddr = reg[i++];
	if (acells == 2) {
		sc->sc_physaddr <<= 32;
		sc->sc_physaddr |= reg[i++];
	}
	sc->sc_size = reg[i++];
	if (scells == 2) {
		sc->sc_size <<= 32;
		sc->sc_size |= reg[i++];
	}

	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	sc->sc_mem_rman.rm_descr = "UniNorth Device Memory";

	error = FUNC21(&sc->sc_mem_rman);

	if (error) {
		FUNC9(dev, "rman_init() failed. error = %d\n", error);
		return (error);
	}

	error = FUNC22(&sc->sc_mem_rman, sc->sc_physaddr,
				   sc->sc_physaddr + sc->sc_size - 1);	
	if (error) {
		FUNC9(dev,
			      "rman_manage_region() failed. error = %d\n",
			      error);
		return (error);
	}

	if (unin_chip == NULL)
		unin_chip = dev;

        /*
	 * Iterate through the sub-devices
	 */
	for (child = FUNC1(root); child != 0; child = FUNC5(child)) {
		dinfo = FUNC12(sizeof(*dinfo), M_UNIN, M_WAITOK | M_ZERO);
		if (FUNC15(&dinfo->udi_obdinfo, child)
		    != 0)
		{
			FUNC11(dinfo, M_UNIN);
			continue;
		}

		FUNC20(&dinfo->udi_resources);
		dinfo->udi_ninterrupts = 0;
		FUNC24(child, dinfo);

		/*
		 * Some Apple machines do have a bug in OF, they miss
		 * the interrupt entries on the U3 I2C node. That means they
		 * do not have an entry with number of interrupts nor the
		 * entry of the interrupt parent handle.
		 * We define an interrupt and hardwire it to the /u3/mpic
		 * handle.
		 */

		if (FUNC3(child, "name", name, sizeof(name)) <= 0)
			FUNC9(dev, "device has no name!\n");
		if (dinfo->udi_ninterrupts == 0 &&
		    (FUNC23(name, "i2c-bus") == 0 ||
		     FUNC23(name, "i2c")  == 0)) {
			if (FUNC3(child, "interrupt-parent", &iparent,
				       sizeof(iparent)) <= 0) {
				iparent = FUNC2("/u3/mpic");
				FUNC9(dev, "Set /u3/mpic as iparent!\n");
			}
			/* Add an interrupt number 0 to the parent. */
			irq = FUNC0(iparent, 0);
			FUNC18(&dinfo->udi_resources, SYS_RES_IRQ,
					  dinfo->udi_ninterrupts, irq, irq, 1);
			dinfo->udi_interrupts[dinfo->udi_ninterrupts] = irq;
			dinfo->udi_ninterrupts++;
		}

		FUNC25(child, dinfo);

		cdev = FUNC7(dev, NULL, -1);
		if (cdev == NULL) {
			FUNC9(dev, "<%s>: device_add_child failed\n",
				      dinfo->udi_obdinfo.obd_name);
			FUNC19(&dinfo->udi_resources);
			FUNC14(&dinfo->udi_obdinfo);
			FUNC11(dinfo, M_UNIN);
			continue;
		}

		FUNC10(cdev, dinfo);
	}

	/*
	 * Only map the first page, since that is where the registers
	 * of interest lie.
	 */
	sc->sc_addr = (vm_offset_t)FUNC17(sc->sc_physaddr, PAGE_SIZE);

	sc->sc_version = *(u_int *)sc->sc_addr;
	FUNC9(dev, "Version %d\n", sc->sc_version);

	/*
	 * Enable the GMAC Ethernet cell and the integrated OpenPIC
	 * if Open Firmware says they are used.
	 */
	for (child = FUNC1(root); child; child = FUNC5(child)) {
		FUNC13(compat, 0, sizeof(compat));
		FUNC3(child, "compatible", compat, sizeof(compat));
		if (FUNC23(compat, "gmac") == 0)
			FUNC26(dev);
		if (FUNC23(compat, "chrp,open-pic") == 0)
			FUNC27(dev);
	}
	
	/*
	 * GMAC lives under the PCI bus, so just check if enet is gmac.
	 */
	child = FUNC2("enet");
	FUNC13(compat, 0, sizeof(compat));
	FUNC3(child, "compatible", compat, sizeof(compat));
	if (FUNC23(compat, "gmac") == 0)
		FUNC26(dev);

	return (FUNC6(dev));
}