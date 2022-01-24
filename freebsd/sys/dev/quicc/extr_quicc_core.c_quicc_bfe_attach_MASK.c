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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct TYPE_3__ {int rm_start; int rm_end; char* rm_descr; int /*<<< orphan*/  rm_type; } ;
struct quicc_softc {int sc_fastintr; int sc_polled; int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/ * sc_ires; int /*<<< orphan*/  sc_rtype; TYPE_1__ sc_rman; struct quicc_device* sc_device; scalar_t__ sc_irid; int /*<<< orphan*/  sc_icookie; scalar_t__ sc_rrid; } ;
struct quicc_device {int /*<<< orphan*/  qd_dev; int /*<<< orphan*/  qd_rlist; TYPE_1__* qd_rman; int /*<<< orphan*/  qd_devtype; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  M_QUICC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  QUICC_DEVTYPE_SCC ; 
 int /*<<< orphan*/  QUICC_REG_SIMR_L ; 
 int /*<<< orphan*/  QUICC_REG_SIPNR_H ; 
 int /*<<< orphan*/  QUICC_REG_SIPNR_L ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct quicc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct quicc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 struct quicc_device* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/ * quicc_bfe_intr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct resource_list_entry* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*,int,int) ; 

int
FUNC19(device_t dev)
{
	struct quicc_device *qd;
	struct quicc_softc *sc;
	struct resource_list_entry *rle;
	const char *sep;
	rman_res_t size, start;
	int error;

	sc = FUNC4(dev);

	/*
	 * Re-allocate. We expect that the softc contains the information
	 * collected by quicc_bfe_probe() intact.
	 */
	sc->sc_rres = FUNC0(dev, sc->sc_rtype, &sc->sc_rrid,
	    RF_ACTIVE);
	if (sc->sc_rres == NULL)
		return (ENXIO);

	start = FUNC16(sc->sc_rres);
	size = FUNC15(sc->sc_rres);

	sc->sc_rman.rm_start = start;
	sc->sc_rman.rm_end = start + size - 1;
	sc->sc_rman.rm_type = RMAN_ARRAY;
	sc->sc_rman.rm_descr = "QUICC resources";
	error = FUNC17(&sc->sc_rman);
	if (!error)
		error = FUNC18(&sc->sc_rman, start,
		    start + size - 1);
	if (error) {
		FUNC1(dev, sc->sc_rtype, sc->sc_rrid,
		    sc->sc_rres);
		return (error);
	}

	/*
	 * Allocate interrupt resource.
	 */
	sc->sc_irid = 0;
	sc->sc_ires = FUNC0(dev, SYS_RES_IRQ, &sc->sc_irid,
	    RF_ACTIVE | RF_SHAREABLE);

	if (sc->sc_ires != NULL) {
		error = FUNC2(dev, sc->sc_ires,
		    INTR_TYPE_TTY, quicc_bfe_intr, NULL, sc, &sc->sc_icookie);
		if (error) {
			error = FUNC2(dev, sc->sc_ires,
			    INTR_TYPE_TTY | INTR_MPSAFE, NULL,
			    (driver_intr_t *)quicc_bfe_intr, sc,
			    &sc->sc_icookie);
		} else
			sc->sc_fastintr = 1;
		if (error) {
			FUNC6(dev, "could not activate interrupt\n");
			FUNC1(dev, SYS_RES_IRQ, sc->sc_irid,
			    sc->sc_ires);
			sc->sc_ires = NULL;
		}
	}

	if (sc->sc_ires == NULL)
		sc->sc_polled = 1;

	if (bootverbose && (sc->sc_fastintr || sc->sc_polled)) {
		sep = "";
		FUNC5(dev);
		if (sc->sc_fastintr) {
			FUNC10("%sfast interrupt", sep);
			sep = ", ";
		}
		if (sc->sc_polled) {
			FUNC10("%spolled mode", sep);
			sep = ", ";
		}
		FUNC10("\n");
	}

	sc->sc_device = qd = FUNC9(sizeof(struct quicc_device), M_QUICC,
	    M_WAITOK | M_ZERO);

	qd->qd_devtype = QUICC_DEVTYPE_SCC;
	qd->qd_rman = &sc->sc_rman;
	FUNC14(&qd->qd_rlist);

	FUNC12(&qd->qd_rlist, sc->sc_rtype, 0, start,
	    start + size - 1, size);

	FUNC12(&qd->qd_rlist, SYS_RES_IRQ, 0, 0xf00, 0xf00, 1);
	rle = FUNC13(&qd->qd_rlist, SYS_RES_IRQ, 0);
	rle->res = sc->sc_ires;

	qd->qd_dev = FUNC3(dev, NULL, -1);
	FUNC8(qd->qd_dev, (void *)qd);
	error = FUNC7(qd->qd_dev);

	/* Enable all SCC interrupts. */
	FUNC11(sc->sc_rres, QUICC_REG_SIMR_L, 0x00f00000);

	/* Clear all pending interrupts. */
	FUNC11(sc->sc_rres, QUICC_REG_SIPNR_H, ~0);
	FUNC11(sc->sc_rres, QUICC_REG_SIPNR_L, ~0);
	return (error);
}