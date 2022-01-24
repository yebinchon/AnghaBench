#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  int uintmax_t ;
struct rman {char* rm_descr; int /*<<< orphan*/  rm_end; int /*<<< orphan*/  rm_start; int /*<<< orphan*/  rm_type; } ;
struct lbc_softc {int sc_addr_cells; int sc_size_cells; int /*<<< orphan*/ * sc_mres; scalar_t__ sc_mrid; TYPE_1__* sc_banks; struct rman sc_rman; int /*<<< orphan*/  sc_ltesr; int /*<<< orphan*/ * sc_ires; scalar_t__ sc_irid; int /*<<< orphan*/  sc_icookie; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/ * sc_dev; } ;
struct TYPE_5__ {int obd_name; } ;
struct lbc_devinfo {TYPE_2__ di_ofw; int /*<<< orphan*/  di_res; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int addr; int size; int width; scalar_t__ wp; int /*<<< orphan*/  atom; int /*<<< orphan*/  decc; int /*<<< orphan*/  msel; } ;

/* Variables and functions */
 int ENXIO ; 
 int ERANGE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LBC85XX_LBCR ; 
 int /*<<< orphan*/  LBC85XX_LCRR ; 
 int /*<<< orphan*/  LBC85XX_LTEDR ; 
 int /*<<< orphan*/  LBC85XX_LTEIR ; 
 int /*<<< orphan*/  LBC85XX_LTESR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LBCRES_ATOM_DISABLED ; 
 int /*<<< orphan*/  LBCRES_DECC_DISABLED ; 
 int /*<<< orphan*/  LBCRES_MSEL_GPCM ; 
 int LBC_DEV_MAX ; 
 int /*<<< orphan*/  M_LBC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lbc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct lbc_softc* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct lbc_devinfo*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC17 (void*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct lbc_softc*,struct lbc_devinfo*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,struct lbc_softc*,struct lbc_devinfo*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct lbc_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct lbc_softc*) ; 
 int FUNC23 (struct lbc_softc*) ; 
 int /*<<< orphan*/  lbc_intr ; 
 struct lbc_devinfo* FUNC24 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 scalar_t__ FUNC26 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct rman*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int FUNC33 (struct rman*) ; 
 int FUNC34 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC35(device_t dev)
{
	struct lbc_softc *sc;
	struct lbc_devinfo *di;
	struct rman *rm;
	uintmax_t offset, size;
	vm_paddr_t start;
	device_t cdev;
	phandle_t node, child;
	pcell_t *ranges, *rangesptr;
	int tuple_size, tuples;
	int par_addr_cells;
	int bank, error, i, j;

	sc = FUNC13(dev);
	sc->sc_dev = dev;

	sc->sc_mrid = 0;
	sc->sc_mres = FUNC6(dev, SYS_RES_MEMORY, &sc->sc_mrid,
	    RF_ACTIVE);
	if (sc->sc_mres == NULL)
		return (ENXIO);

	sc->sc_bst = FUNC32(sc->sc_mres);
	sc->sc_bsh = FUNC31(sc->sc_mres);

	for (bank = 0; bank < LBC_DEV_MAX; bank++) {
		FUNC10(sc->sc_bst, sc->sc_bsh, FUNC0(bank), 0);
		FUNC10(sc->sc_bst, sc->sc_bsh, FUNC1(bank), 0);
	}

	/*
	 * Initialize configuration register:
	 * - enable Local Bus
	 * - set data buffer control signal function
	 * - disable parity byte select
	 * - set ECC parity type
	 * - set bus monitor timing and timer prescale
	 */
	FUNC10(sc->sc_bst, sc->sc_bsh, LBC85XX_LBCR, 0);

	/*
	 * Initialize clock ratio register:
	 * - disable PLL bypass mode
	 * - configure LCLK delay cycles for the assertion of LALE
	 * - set system clock divider
	 */
	FUNC10(sc->sc_bst, sc->sc_bsh, LBC85XX_LCRR, 0x00030008);

	FUNC10(sc->sc_bst, sc->sc_bsh, LBC85XX_LTEDR, 0);
	FUNC10(sc->sc_bst, sc->sc_bsh, LBC85XX_LTESR, ~0);
	FUNC10(sc->sc_bst, sc->sc_bsh, LBC85XX_LTEIR, 0x64080001);

	sc->sc_irid = 0;
	sc->sc_ires = FUNC6(dev, SYS_RES_IRQ, &sc->sc_irid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_ires != NULL) {
		error = FUNC9(dev, sc->sc_ires,
		    INTR_TYPE_MISC | INTR_MPSAFE, NULL, lbc_intr, sc,
		    &sc->sc_icookie);
		if (error) {
			FUNC14(dev, "could not activate interrupt\n");
			FUNC8(dev, SYS_RES_IRQ, sc->sc_irid,
			    sc->sc_ires);
			sc->sc_ires = NULL;
		}
	}

	sc->sc_ltesr = ~0;

	rangesptr = NULL;

	rm = &sc->sc_rman;
	rm->rm_type = RMAN_ARRAY;
	rm->rm_descr = "Local Bus Space";
	error = FUNC33(rm);
	if (error)
		goto fail;

	error = FUNC34(rm, rm->rm_start, rm->rm_end);
	if (error) {
		FUNC30(rm);
		goto fail;
	}

	/*
	 * Process 'ranges' property.
	 */
	node = FUNC27(dev);
	if ((FUNC16(node, &sc->sc_addr_cells,
	    &sc->sc_size_cells)) != 0) {
		error = ENXIO;
		goto fail;
	}

	par_addr_cells = FUNC20(node);
	if (par_addr_cells > 2) {
		FUNC14(dev, "unsupported parent #addr-cells\n");
		error = ERANGE;
		goto fail;
	}
	tuple_size = sizeof(pcell_t) * (sc->sc_addr_cells + par_addr_cells +
	    sc->sc_size_cells);

	tuples = FUNC3(node, "ranges", tuple_size,
	    (void **)&ranges);
	if (tuples < 0) {
		FUNC14(dev, "could not retrieve 'ranges' property\n");
		error = ENXIO;
		goto fail;
	}
	rangesptr = ranges;

	FUNC11("par addr_cells = %d, addr_cells = %d, size_cells = %d, "
	    "tuple_size = %d, tuples = %d\n", par_addr_cells,
	    sc->sc_addr_cells, sc->sc_size_cells, tuple_size, tuples);

	start = 0;
	size = 0;
	for (i = 0; i < tuples; i++) {

		/* The first cell is the bank (chip select) number. */
		bank = FUNC17(ranges, 1);
		if (bank < 0 || bank > LBC_DEV_MAX) {
			FUNC14(dev, "bank out of range: %d\n", bank);
			error = ERANGE;
			goto fail;
		}
		ranges += 1;

		/*
		 * Remaining cells of the child address define offset into
		 * this CS.
		 */
		offset = 0;
		for (j = 0; j < sc->sc_addr_cells - 1; j++) {
			offset <<= sizeof(pcell_t) * 8;
			offset |= *ranges;
			ranges++;
		}

		/* Parent bus start address of this bank. */
		start = 0;
		for (j = 0; j < par_addr_cells; j++) {
			start <<= sizeof(pcell_t) * 8;
			start |= *ranges;
			ranges++;
		}

		size = FUNC17((void *)ranges, sc->sc_size_cells);
		ranges += sc->sc_size_cells;
		FUNC11("bank = %d, start = %jx, size = %jx\n", bank,
		    (uintmax_t)start, size);

		sc->sc_banks[bank].addr = start + offset;
		sc->sc_banks[bank].size = size;

		/*
		 * Attributes for the bank.
		 *
		 * XXX Note there are no DT bindings defined for them at the
		 * moment, so we need to provide some defaults.
		 */
		sc->sc_banks[bank].width = 16;
		sc->sc_banks[bank].msel = LBCRES_MSEL_GPCM;
		sc->sc_banks[bank].decc = LBCRES_DECC_DISABLED;
		sc->sc_banks[bank].atom = LBCRES_ATOM_DISABLED;
		sc->sc_banks[bank].wp = 0;
	}

	/*
	 * Initialize mem-mappings for the LBC banks (i.e. chip selects).
	 */
	error = FUNC23(sc);
	if (error)
		goto fail;

	/*
	 * Walk the localbus and add direct subordinates as our children.
	 */
	for (child = FUNC2(node); child != 0; child = FUNC4(child)) {

		di = FUNC24(sizeof(*di), M_LBC, M_WAITOK | M_ZERO);

		if (FUNC26(&di->di_ofw, child) != 0) {
			FUNC21(di, M_LBC);
			FUNC14(dev, "could not set up devinfo\n");
			continue;
		}

		FUNC29(&di->di_res);

		if (FUNC19(child, sc, di)) {
			FUNC14(dev, "could not process 'reg' "
			    "property\n");
			FUNC25(&di->di_ofw);
			FUNC21(di, M_LBC);
			continue;
		}

		FUNC18(child, sc, di);

		/* Add newbus device for this FDT node */
		cdev = FUNC12(dev, NULL, -1);
		if (cdev == NULL) {
			FUNC14(dev, "could not add child: %s\n",
			    di->di_ofw.obd_name);
			FUNC28(&di->di_res);
			FUNC25(&di->di_ofw);
			FUNC21(di, M_LBC);
			continue;
		}
		FUNC11("added child name='%s', node=%x\n", di->di_ofw.obd_name,
		    child);
		FUNC15(cdev, di);
	}

	/*
	 * Enable the LBC.
	 */
	FUNC22(sc);

	FUNC5(rangesptr);
	return (FUNC7(dev));

fail:
	FUNC5(rangesptr);
	FUNC8(dev, SYS_RES_MEMORY, sc->sc_mrid, sc->sc_mres);
	return (error);
}