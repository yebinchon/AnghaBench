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
typedef  int u_long ;
struct hme_softc {int sc_burst; int /*<<< orphan*/  sc_lock; scalar_t__ sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_enaddr; void* sc_mifh; void* sc_mift; void* sc_mach; void* sc_mact; void* sc_erxh; void* sc_erxt; void* sc_etxh; void* sc_etxt; void* sc_sebh; void* sc_sebt; } ;
struct hme_sbus_softc {int /*<<< orphan*/ * hsc_seb_res; int /*<<< orphan*/ * hsc_etx_res; int /*<<< orphan*/ * hsc_erx_res; int /*<<< orphan*/ * hsc_mac_res; int /*<<< orphan*/ * hsc_mif_res; int /*<<< orphan*/ * hsc_ires; int /*<<< orphan*/  hsc_ih; struct hme_softc hsc_hme; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SBUS_BURST_16 ; 
 int SBUS_BURST_32 ; 
 int SBUS_BURST_64 ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hme_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct hme_sbus_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct hme_softc*) ; 
 int /*<<< orphan*/  hme_intr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct hme_sbus_softc *hsc;
	struct hme_softc *sc;
	u_long start, count;
	uint32_t burst;
	int i, error = 0;

	hsc = FUNC7(dev);
	sc = &hsc->hsc_hme;
	FUNC12(&sc->sc_lock, FUNC6(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	/*
	 * Map five register banks:
	 *
	 *	bank 0: HME SEB registers
	 *	bank 1: HME ETX registers
	 *	bank 2: HME ERX registers
	 *	bank 3: HME MAC registers
	 *	bank 4: HME MIF registers
	 *
	 */
	i = 0;
	hsc->hsc_seb_res = FUNC1(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (hsc->hsc_seb_res == NULL) {
		FUNC8(dev, "cannot map SEB registers\n");
		error = ENXIO;
		goto fail_mtx_res;
	}
	sc->sc_sebt = FUNC14(hsc->hsc_seb_res);
	sc->sc_sebh = FUNC13(hsc->hsc_seb_res);

	i = 1;
	hsc->hsc_etx_res = FUNC1(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (hsc->hsc_etx_res == NULL) {
		FUNC8(dev, "cannot map ETX registers\n");
		error = ENXIO;
		goto fail_seb_res;
	}
	sc->sc_etxt = FUNC14(hsc->hsc_etx_res);
	sc->sc_etxh = FUNC13(hsc->hsc_etx_res);

	i = 2;
	hsc->hsc_erx_res = FUNC1(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (hsc->hsc_erx_res == NULL) {
		FUNC8(dev, "cannot map ERX registers\n");
		error = ENXIO;
		goto fail_etx_res;
	}
	sc->sc_erxt = FUNC14(hsc->hsc_erx_res);
	sc->sc_erxh = FUNC13(hsc->hsc_erx_res);

	i = 3;
	hsc->hsc_mac_res = FUNC1(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (hsc->hsc_mac_res == NULL) {
		FUNC8(dev, "cannot map MAC registers\n");
		error = ENXIO;
		goto fail_erx_res;
	}
	sc->sc_mact = FUNC14(hsc->hsc_mac_res);
	sc->sc_mach = FUNC13(hsc->hsc_mac_res);

	/*
	 * At least on some HMEs, the MIF registers seem to be inside the MAC
	 * range, so try to kludge around it.
	 */
	i = 4;
	hsc->hsc_mif_res = FUNC1(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (hsc->hsc_mif_res == NULL) {
		if (FUNC2(dev, SYS_RES_MEMORY, i,
		    &start, &count) != 0) {
			FUNC8(dev, "cannot get MIF registers\n");
			error = ENXIO;
			goto fail_mac_res;
		}
		if (start < FUNC17(hsc->hsc_mac_res) ||
		    start + count - 1 > FUNC15(hsc->hsc_mac_res)) {
			FUNC8(dev, "cannot move MIF registers to MAC "
			    "bank\n");
			error = ENXIO;
			goto fail_mac_res;
		}
		sc->sc_mift = sc->sc_mact;
		FUNC5(sc->sc_mact, sc->sc_mach,
		    start - FUNC17(hsc->hsc_mac_res), count,
		    &sc->sc_mifh);
	} else {
		sc->sc_mift = FUNC14(hsc->hsc_mif_res);
		sc->sc_mifh = FUNC13(hsc->hsc_mif_res);
	}

	i = 0;
	hsc->hsc_ires = FUNC1(dev, SYS_RES_IRQ,
	    &i, RF_SHAREABLE | RF_ACTIVE);
	if (hsc->hsc_ires == NULL) {
		FUNC8(dev, "could not allocate interrupt\n");
		error = ENXIO;
		goto fail_mif_res;
	}

	FUNC0(dev, sc->sc_enaddr);

	burst = FUNC18(dev);
	/* Translate into plain numerical format */
	if ((burst & SBUS_BURST_64))
		sc->sc_burst = 64;
	else if ((burst & SBUS_BURST_32))
		sc->sc_burst = 32;
	else if ((burst & SBUS_BURST_16))
		sc->sc_burst = 16;
	else
		 sc->sc_burst = 0;

	sc->sc_dev = dev;
	sc->sc_flags = 0;

	if ((error = FUNC9(sc)) != 0) {
		FUNC8(dev, "could not be configured\n");
		goto fail_ires;
	}

	if ((error = FUNC4(dev, hsc->hsc_ires, INTR_TYPE_NET |
	    INTR_MPSAFE, NULL, hme_intr, sc, &hsc->hsc_ih)) != 0) {
		FUNC8(dev, "couldn't establish interrupt\n");
		FUNC10(sc);
		goto fail_ires;
	}
	return (0);

fail_ires:
	FUNC3(dev, SYS_RES_IRQ,
	    FUNC16(hsc->hsc_ires), hsc->hsc_ires);
fail_mif_res:
	if (hsc->hsc_mif_res != NULL) {
		FUNC3(dev, SYS_RES_MEMORY,
		    FUNC16(hsc->hsc_mif_res), hsc->hsc_mif_res);
	}
fail_mac_res:
	FUNC3(dev, SYS_RES_MEMORY,
	    FUNC16(hsc->hsc_mac_res), hsc->hsc_mac_res);
fail_erx_res:
	FUNC3(dev, SYS_RES_MEMORY,
	    FUNC16(hsc->hsc_erx_res), hsc->hsc_erx_res);
fail_etx_res:
	FUNC3(dev, SYS_RES_MEMORY,
	    FUNC16(hsc->hsc_etx_res), hsc->hsc_etx_res);
fail_seb_res:
	FUNC3(dev, SYS_RES_MEMORY,
	    FUNC16(hsc->hsc_seb_res), hsc->hsc_seb_res);
fail_mtx_res:
	FUNC11(&sc->sc_lock);
	return (error);
}