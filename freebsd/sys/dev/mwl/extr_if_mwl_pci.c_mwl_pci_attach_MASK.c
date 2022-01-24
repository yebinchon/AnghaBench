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
struct mwl_softc {int sc_invalid; int /*<<< orphan*/  sc_dmat; void* sc_io1h; void* sc_io1t; void* sc_io0h; void* sc_io0t; int /*<<< orphan*/  sc_dev; } ;
struct mwl_pci_softc {int /*<<< orphan*/ * sc_sr0; int /*<<< orphan*/ * sc_sr1; int /*<<< orphan*/ * sc_irq; int /*<<< orphan*/  sc_ih; struct mwl_softc sc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BS_BAR0 ; 
 int BS_BAR1 ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
 int /*<<< orphan*/  MWL_TXDESC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mwl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mwl_pci_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct mwl_softc*) ; 
 int /*<<< orphan*/  mwl_intr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct mwl_pci_softc *psc = FUNC9(dev);
	struct mwl_softc *sc = &psc->sc_sc;
	int rid, error = ENXIO;

	sc->sc_dev = dev;

	FUNC12(dev);

	/* 
	 * Setup memory-mapping of PCI registers.
	 */
	rid = BS_BAR0;
	psc->sc_sr0 = FUNC2(dev, SYS_RES_MEMORY, &rid,
					    RF_ACTIVE);
	if (psc->sc_sr0 == NULL) {
		FUNC10(dev, "cannot map BAR0 register space\n");
		goto bad;
	}
	rid = BS_BAR1;
	psc->sc_sr1 = FUNC2(dev, SYS_RES_MEMORY, &rid,
					    RF_ACTIVE);
	if (psc->sc_sr1 == NULL) {
		FUNC10(dev, "cannot map BAR1 register space\n");
		goto bad1;
	}
	sc->sc_invalid = 1;

	/*
	 * Arrange interrupt line.
	 */
	rid = 0;
	psc->sc_irq = FUNC2(dev, SYS_RES_IRQ, &rid,
					     RF_SHAREABLE|RF_ACTIVE);
	if (psc->sc_irq == NULL) {
		FUNC10(dev, "could not map interrupt\n");
		goto bad2;
	}
	if (FUNC7(dev, psc->sc_irq,
			   INTR_TYPE_NET | INTR_MPSAFE,
			   NULL, mwl_intr, sc, &psc->sc_ih)) {
		FUNC10(dev, "could not establish interrupt\n");
		goto bad3;
	}

	/*
	 * Setup DMA descriptor area.
	 */
	if (FUNC3(FUNC5(dev),	/* parent */
			       1, 0,			/* alignment, bounds */
			       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			       BUS_SPACE_MAXADDR,	/* highaddr */
			       NULL, NULL,		/* filter, filterarg */
			       BUS_SPACE_MAXSIZE,	/* maxsize */
			       MWL_TXDESC,		/* nsegments */
			       BUS_SPACE_MAXSIZE,	/* maxsegsize */
			       0,			/* flags */
			       NULL,			/* lockfunc */
			       NULL,			/* lockarg */
			       &sc->sc_dmat)) {
		FUNC10(dev, "cannot allocate DMA tag\n");
		goto bad4;
	}

	/*
	 * Finish off the attach.
	 */
	FUNC1(sc);
	sc->sc_io0t = FUNC15(psc->sc_sr0);
	sc->sc_io0h = FUNC14(psc->sc_sr0);
	sc->sc_io1t = FUNC15(psc->sc_sr1);
	sc->sc_io1h = FUNC14(psc->sc_sr1);
	if (FUNC11(FUNC13(dev), sc) == 0)
		return (0);

	FUNC0(sc);
	FUNC4(sc->sc_dmat);
bad4:
	FUNC8(dev, psc->sc_irq, psc->sc_ih);
bad3:
	FUNC6(dev, SYS_RES_IRQ, 0, psc->sc_irq);
bad2:
	FUNC6(dev, SYS_RES_MEMORY, BS_BAR1, psc->sc_sr1);
bad1:
	FUNC6(dev, SYS_RES_MEMORY, BS_BAR0, psc->sc_sr0);
bad:
	return (error);
}