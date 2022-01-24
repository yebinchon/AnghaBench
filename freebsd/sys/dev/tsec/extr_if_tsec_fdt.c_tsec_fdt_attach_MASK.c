#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bst; int /*<<< orphan*/  bsh; } ;
struct tsec_softc {int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/  receive_lock; int /*<<< orphan*/ * sc_rres; scalar_t__ sc_rrid; int /*<<< orphan*/  sc_transmit_irid; int /*<<< orphan*/  sc_transmit_ihand; int /*<<< orphan*/  sc_transmit_ires; int /*<<< orphan*/  sc_receive_irid; int /*<<< orphan*/  sc_receive_ihand; int /*<<< orphan*/  sc_receive_ires; int /*<<< orphan*/  sc_error_irid; int /*<<< orphan*/  sc_error_ihand; int /*<<< orphan*/  sc_error_ires; TYPE_1__ sc_bas; int /*<<< orphan*/  ic_lock; int /*<<< orphan*/  tsec_callout; int /*<<< orphan*/  phy_regoff; int /*<<< orphan*/  phyaddr; int /*<<< orphan*/  phy_bsh; int /*<<< orphan*/  phy_bst; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;
struct resource_list {int dummy; } ;
typedef  int /*<<< orphan*/  phy ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TSEC_REG_MIIBASE ; 
 int /*<<< orphan*/  TSEC_RID_ERRIRQ ; 
 int /*<<< orphan*/  TSEC_RID_RXIRQ ; 
 int /*<<< orphan*/  TSEC_RID_TXIRQ ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct tsec_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_list*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource_list*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (struct tsec_softc*) ; 
 int /*<<< orphan*/  tsec_error_intr ; 
 int /*<<< orphan*/  tsec_receive_intr ; 
 int /*<<< orphan*/  FUNC24 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC25 (struct tsec_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tsec_transmit_intr ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct tsec_softc *sc;
	struct resource_list *rl;
	phandle_t child, mdio, phy;
	int acells, scells;
	int error = 0;

	sc = FUNC11(dev);
	sc->dev = dev;
	sc->node = FUNC16(dev);

	if (FUNC13(sc->node, &acells, &scells) != 0) {
		acells = 1;
		scells = 1;
	}
	if (FUNC18(dev, "fsl,etsec2")) {
		rl = FUNC0(FUNC10(dev), dev);

		/*
		 * TODO: Add all children resources to the list.  Will be
		 * required to support multigroup mode.
		 */
		child = FUNC1(sc->node);
		FUNC20(dev, child, acells, scells, rl);
		FUNC17(dev, child, rl, NULL);
	}

	/* Get phy address from fdt */
	if (FUNC3(sc->node, "phy-handle", &phy, sizeof(phy)) <= 0) {
		FUNC12(dev, "PHY not found in device tree");
		return (ENXIO);
	}

	phy = FUNC4(phy);
	mdio = FUNC5(phy);
	FUNC2(mdio, 0, &sc->phy_bst, &sc->phy_bsh, NULL);
	FUNC3(phy, "reg", &sc->phyaddr, sizeof(sc->phyaddr));

	/*
	 * etsec2 MDIO nodes are given the MDIO module base address, so we need
	 * to add the MII offset to get the PHY registers.
	 */
	if (FUNC19(mdio, "fsl,etsec2-mdio"))
		sc->phy_regoff = TSEC_REG_MIIBASE;

	/* Init timer */
	FUNC8(&sc->tsec_callout, 1);

	/* Init locks */
	FUNC15(&sc->transmit_lock, FUNC9(dev), "TSEC TX lock",
	    MTX_DEF);
	FUNC15(&sc->receive_lock, FUNC9(dev), "TSEC RX lock",
	    MTX_DEF);
	FUNC15(&sc->ic_lock, FUNC9(dev), "TSEC IC lock",
	    MTX_DEF);

	/* Allocate IO memory for TSEC registers */
	sc->sc_rrid = 0;
	sc->sc_rres = FUNC6(dev, SYS_RES_MEMORY, &sc->sc_rrid,
	    RF_ACTIVE);
	if (sc->sc_rres == NULL) {
		FUNC12(dev, "could not allocate IO memory range!\n");
		goto fail1;
	}
	sc->sc_bas.bsh = FUNC21(sc->sc_rres);
	sc->sc_bas.bst = FUNC22(sc->sc_rres);

	/* TSEC attach */
	if (FUNC23(sc) != 0) {
		FUNC12(dev, "could not be configured\n");
		goto fail2;
	}

	/* Set up interrupts (TX/RX/ERR) */
	sc->sc_transmit_irid = TSEC_RID_TXIRQ;
	error = FUNC25(sc, &sc->sc_transmit_ires,
	    &sc->sc_transmit_ihand, &sc->sc_transmit_irid,
	    tsec_transmit_intr, "TX");
	if (error)
		goto fail2;

	sc->sc_receive_irid = TSEC_RID_RXIRQ;
	error = FUNC25(sc, &sc->sc_receive_ires,
	    &sc->sc_receive_ihand, &sc->sc_receive_irid,
	    tsec_receive_intr, "RX");
	if (error)
		goto fail3;

	sc->sc_error_irid = TSEC_RID_ERRIRQ;
	error = FUNC25(sc, &sc->sc_error_ires,
	    &sc->sc_error_ihand, &sc->sc_error_irid,
	    tsec_error_intr, "ERR");
	if (error)
		goto fail4;

	return (0);

fail4:
	FUNC24(sc, sc->sc_receive_ires, sc->sc_receive_ihand,
	    sc->sc_receive_irid, "RX");
fail3:
	FUNC24(sc, sc->sc_transmit_ires, sc->sc_transmit_ihand,
	    sc->sc_transmit_irid, "TX");
fail2:
	FUNC7(dev, SYS_RES_MEMORY, sc->sc_rrid, sc->sc_rres);
fail1:
	FUNC14(&sc->receive_lock);
	FUNC14(&sc->transmit_lock);
	return (ENXIO);
}