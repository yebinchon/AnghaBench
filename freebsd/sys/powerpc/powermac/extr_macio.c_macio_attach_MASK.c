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
typedef  int uint32_t ;
typedef  char u_int ;
struct TYPE_5__ {char* rm_descr; int /*<<< orphan*/  rm_type; } ;
struct macio_softc {scalar_t__ sc_node; char sc_base; int /*<<< orphan*/ * sc_memr; int /*<<< orphan*/  sc_size; TYPE_1__ sc_mem_rman; int /*<<< orphan*/  sc_memrid; } ;
struct TYPE_6__ {int obd_name; } ;
struct macio_devinfo {TYPE_3__ mdi_obdinfo; int /*<<< orphan*/  mdi_resources; scalar_t__ mdi_ninterrupts; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  reg ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  compat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int FCR1_I2S0_CLK_ENABLE ; 
 int FCR1_I2S0_ENABLE ; 
 int FCR_ENET_ENABLE ; 
 int FCR_ENET_RESET ; 
 int /*<<< orphan*/  HEATHROW_FCR ; 
 int /*<<< orphan*/  KEYLARGO_FCR1 ; 
 int MACIO_QUIRK_CHILD_HAS_INTR ; 
 int MACIO_QUIRK_IGNORE ; 
 int MACIO_QUIRK_USE_CHILD_REG ; 
 int /*<<< orphan*/  MACIO_REG_SIZE ; 
 int /*<<< orphan*/  M_MACIO ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct macio_softc* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct macio_devinfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct macio_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,struct macio_devinfo*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,struct macio_devinfo*) ; 
 int FUNC16 (int) ; 
 struct macio_devinfo* FUNC17 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 scalar_t__ FUNC19 (TYPE_3__*,scalar_t__) ; 
 char* FUNC20 (int /*<<< orphan*/ *) ; 
 char* FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_1__*) ; 
 int FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char*,char*) ; 

__attribute__((used)) static int 
FUNC28(device_t dev)
{
	struct macio_softc *sc;
        struct macio_devinfo *dinfo;
        phandle_t  root;
	phandle_t  child;
	phandle_t  subchild;
        device_t cdev;
        u_int reg[3];
	char compat[32];
	int error, quirks;

	sc = FUNC10(dev);
	root = sc->sc_node = FUNC22(dev);
	
	/*
	 * Locate the device node and it's base address
	 */
	if (FUNC2(root, "assigned-addresses", 
		       reg, sizeof(reg)) < (ssize_t)sizeof(reg)) {
		return (ENXIO);
	}

	/* Used later to see if we have to enable the I2S part. */
	FUNC2(root, "compatible", compat, sizeof(compat));

	sc->sc_base = reg[2];
	sc->sc_size = MACIO_REG_SIZE;

	sc->sc_memrid = FUNC4(0);
	sc->sc_memr = FUNC5(dev, SYS_RES_MEMORY,
	    &sc->sc_memrid, RF_ACTIVE);

	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	sc->sc_mem_rman.rm_descr = "MacIO Device Memory";
	error = FUNC25(&sc->sc_mem_rman);
	if (error) {
		FUNC11(dev, "rman_init() failed. error = %d\n", error);
		return (error);
	}
	error = FUNC26(&sc->sc_mem_rman, 0, sc->sc_size);	
	if (error) {
		FUNC11(dev,
		    "rman_manage_region() failed. error = %d\n", error);
		return (error);
	}

	/*
	 * Iterate through the sub-devices
	 */
	for (child = FUNC1(root); child != 0; child = FUNC3(child)) {
		dinfo = FUNC17(sizeof(*dinfo), M_MACIO, M_WAITOK | M_ZERO);
		if (FUNC19(&dinfo->mdi_obdinfo, child) !=
		    0) {
			FUNC13(dinfo, M_MACIO);
			continue;
		}
		quirks = FUNC16(dinfo->mdi_obdinfo.obd_name);
		if ((quirks & MACIO_QUIRK_IGNORE) != 0) {
			FUNC18(&dinfo->mdi_obdinfo);
			FUNC13(dinfo, M_MACIO);
			continue;
		}
		FUNC24(&dinfo->mdi_resources);
		dinfo->mdi_ninterrupts = 0;
		FUNC14(child, dinfo);
		if ((quirks & MACIO_QUIRK_USE_CHILD_REG) != 0)
			FUNC15(FUNC1(child), dinfo);
		else
			FUNC15(child, dinfo);
		if ((quirks & MACIO_QUIRK_CHILD_HAS_INTR) != 0)
			for (subchild = FUNC1(child); subchild != 0;
			    subchild = FUNC3(subchild))
				FUNC14(subchild, dinfo);
		cdev = FUNC9(dev, NULL, -1);
		if (cdev == NULL) {
			FUNC11(dev, "<%s>: device_add_child failed\n",
			    dinfo->mdi_obdinfo.obd_name);
			FUNC23(&dinfo->mdi_resources);
			FUNC18(&dinfo->mdi_obdinfo);
			FUNC13(dinfo, M_MACIO);
			continue;
		}
		FUNC12(cdev, dinfo);

		/* Set FCRs to enable some devices */
		if (sc->sc_memr == NULL)
			continue;

		if (FUNC27(FUNC21(cdev), "bmac") == 0 ||
		    (FUNC20(cdev) != NULL &&
		    FUNC27(FUNC20(cdev), "bmac+") == 0)) {
			uint32_t fcr;

			fcr = FUNC7(sc->sc_memr, HEATHROW_FCR);

			fcr |= FCR_ENET_ENABLE & ~FCR_ENET_RESET;
			FUNC8(sc->sc_memr, HEATHROW_FCR, fcr);
			FUNC0(50000);
			fcr |= FCR_ENET_RESET;
			FUNC8(sc->sc_memr, HEATHROW_FCR, fcr);
			FUNC0(50000);
			fcr &= ~FCR_ENET_RESET;
			FUNC8(sc->sc_memr, HEATHROW_FCR, fcr);
			FUNC0(50000);
			
			FUNC8(sc->sc_memr, HEATHROW_FCR, fcr);
		}

		/*
		 * Make sure the I2S0 and the I2S0_CLK are enabled.
		 * On certain G5's they are not.
		 */
		if ((FUNC27(FUNC21(cdev), "i2s") == 0) &&
		    (FUNC27(compat, "K2-Keylargo") == 0)) {

			uint32_t fcr1;

			fcr1 = FUNC7(sc->sc_memr, KEYLARGO_FCR1);
			fcr1 |= FCR1_I2S0_CLK_ENABLE | FCR1_I2S0_ENABLE;
			FUNC8(sc->sc_memr, KEYLARGO_FCR1, fcr1);
		}

	}

	return (FUNC6(dev));
}