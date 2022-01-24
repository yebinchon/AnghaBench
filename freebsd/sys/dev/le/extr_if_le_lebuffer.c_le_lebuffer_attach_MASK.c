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
struct lance_softc {int sc_conf3; int /*<<< orphan*/  sc_defaultmedia; int /*<<< orphan*/  sc_nsupmedia; int /*<<< orphan*/ * sc_supmedia; int /*<<< orphan*/ * sc_mediastatus; int /*<<< orphan*/ * sc_mediachange; int /*<<< orphan*/ * sc_nocarrier; int /*<<< orphan*/ * sc_hwintr; int /*<<< orphan*/ * sc_hwinit; int /*<<< orphan*/ * sc_hwreset; int /*<<< orphan*/  sc_wrcsr; int /*<<< orphan*/  sc_rdcsr; int /*<<< orphan*/  sc_zerobuf; int /*<<< orphan*/  sc_copyfrombuf; int /*<<< orphan*/  sc_copytobuf; int /*<<< orphan*/  sc_copyfromdesc; int /*<<< orphan*/  sc_copytodesc; int /*<<< orphan*/  sc_enaddr; scalar_t__ sc_flags; int /*<<< orphan*/  sc_memsize; scalar_t__ sc_addr; } ;
struct TYPE_3__ {struct lance_softc lsc; } ;
struct le_lebuffer_softc {int /*<<< orphan*/ * sc_bres; int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/ * sc_ires; TYPE_1__ sc_am7990; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int LE_C3_ACON ; 
 int LE_C3_BCON ; 
 int LE_C3_BSWP ; 
 int /*<<< orphan*/  FUNC0 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLEMEDIA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  am7990_intr ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lance_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct le_lebuffer_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  le_lebuffer_copyfrombuf ; 
 int /*<<< orphan*/  le_lebuffer_copyfromdesc ; 
 int /*<<< orphan*/  le_lebuffer_copytobuf ; 
 int /*<<< orphan*/  le_lebuffer_copytodesc ; 
 int /*<<< orphan*/ * le_lebuffer_media ; 
 int /*<<< orphan*/  le_lebuffer_rdcsr ; 
 int /*<<< orphan*/  le_lebuffer_wrcsr ; 
 int /*<<< orphan*/  le_lebuffer_zerobuf ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct le_lebuffer_softc *lesc;
	struct lance_softc *sc;
	int error, i;

	lesc = FUNC12(dev);
	sc = &lesc->sc_am7990.lsc;

	FUNC1(sc, FUNC10(dev));

	/*
	 * The "register space" of the parent is just a buffer where the
	 * the LANCE descriptor rings and the RX/TX buffers can be stored.
	 */
	i = 0;
	lesc->sc_bres = FUNC6(FUNC11(dev),
	    SYS_RES_MEMORY, &i, RF_ACTIVE);
	if (lesc->sc_bres == NULL) {
		FUNC14(dev, "cannot allocate LANCE buffer\n");
		error = ENXIO;
		goto fail_mtx;
	}

	/* Allocate LANCE registers. */
	i = 0;
	lesc->sc_rres = FUNC6(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE);
	if (lesc->sc_rres == NULL) {
		FUNC14(dev, "cannot allocate LANCE registers\n");
		error = ENXIO;
		goto fail_bres;
	}

	/* Allocate LANCE interrupt. */
	i = 0;
	if ((lesc->sc_ires = FUNC6(dev, SYS_RES_IRQ,
	    &i, RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC14(dev, "cannot allocate interrupt\n");
		error = ENXIO;
		goto fail_rres;
	}

	/*
	 * LANCE view is offset by buffer location.
	 * Note that we don't use sc->sc_mem.
	 */
	sc->sc_addr = 0;
	sc->sc_memsize = FUNC17(lesc->sc_bres);
	sc->sc_flags = 0;

	/* That old black magic... */
	if (FUNC3(FUNC15(dev), "busmaster-regval",
	    &sc->sc_conf3, sizeof(sc->sc_conf3)) == -1)
		sc->sc_conf3 = LE_C3_ACON | LE_C3_BCON;
	/*
	 * Make sure LE_C3_BSWP is cleared so that for cards where
	 * that flag actually works le_lebuffer_copy{from,to}buf()
	 * don't fail...
	 */
	sc->sc_conf3 &= ~LE_C3_BSWP;

	FUNC2(dev, sc->sc_enaddr);

	sc->sc_copytodesc = le_lebuffer_copytodesc;
	sc->sc_copyfromdesc = le_lebuffer_copyfromdesc;
	sc->sc_copytobuf = le_lebuffer_copytobuf;
	sc->sc_copyfrombuf = le_lebuffer_copyfrombuf;
	sc->sc_zerobuf = le_lebuffer_zerobuf;

	sc->sc_rdcsr = le_lebuffer_rdcsr;
	sc->sc_wrcsr = le_lebuffer_wrcsr;
	sc->sc_hwreset = NULL;
	sc->sc_hwinit = NULL;
	sc->sc_hwintr = NULL;
	sc->sc_nocarrier = NULL;
	sc->sc_mediachange = NULL;
	sc->sc_mediastatus = NULL;
	sc->sc_supmedia = le_lebuffer_media;
	sc->sc_nsupmedia = NLEMEDIA;
	sc->sc_defaultmedia = le_lebuffer_media[0];

	error = FUNC4(&lesc->sc_am7990, FUNC9(dev),
	    FUNC13(dev));
	if (error != 0) {
		FUNC14(dev, "cannot attach Am7990\n");
		goto fail_ires;
	}

	error = FUNC8(dev, lesc->sc_ires, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, am7990_intr, sc, &lesc->sc_ih);
	if (error != 0) {
		FUNC14(dev, "cannot set up interrupt\n");
		goto fail_am7990;
	}

	return (0);

 fail_am7990:
	FUNC5(&lesc->sc_am7990);
 fail_ires:
	FUNC7(dev, SYS_RES_IRQ,
	    FUNC16(lesc->sc_ires), lesc->sc_ires);
 fail_rres:
	FUNC7(dev, SYS_RES_MEMORY,
	    FUNC16(lesc->sc_rres), lesc->sc_rres);
 fail_bres:
	FUNC7(FUNC11(dev), SYS_RES_MEMORY,
	    FUNC16(lesc->sc_bres), lesc->sc_bres);
 fail_mtx:
	FUNC0(sc);
	return (error);
}