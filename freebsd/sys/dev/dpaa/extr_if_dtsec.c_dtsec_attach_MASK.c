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
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_mtu; struct dtsec_softc* if_softc; } ;
struct dtsec_softc {scalar_t__ sc_mode; int (* sc_port_tx_init ) (struct dtsec_softc*,int /*<<< orphan*/ ) ;int (* sc_port_rx_init ) (struct dtsec_softc*,int /*<<< orphan*/ ) ;scalar_t__ sc_phy_addr; int /*<<< orphan*/  sc_mac_addr; int /*<<< orphan*/  sc_mii_dev; void* sc_mii; int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifnet; int /*<<< orphan*/  sc_fm_base; int /*<<< orphan*/  sc_muramh; int /*<<< orphan*/  sc_fmh; int /*<<< orphan*/  sc_tick_callout; int /*<<< orphan*/  sc_mii_lock; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_mac_mdio_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  CALLOUT_MPSAFE ; 
 scalar_t__ DTSEC_MODE_REGULAR ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHERMTU ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  IFCAP_JUMBO_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFQ_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  NO_IRQ ; 
 scalar_t__ TSEC_TX_NUM_DESC ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dtsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtsec_if_init ; 
 int /*<<< orphan*/  dtsec_if_ioctl ; 
 int /*<<< orphan*/  dtsec_if_start ; 
 int /*<<< orphan*/  dtsec_ifmedia_sts ; 
 int /*<<< orphan*/  dtsec_ifmedia_upd ; 
 int FUNC13 (struct dtsec_softc*) ; 
 int FUNC14 (struct dtsec_softc*) ; 
 int FUNC15 (struct dtsec_softc*) ; 
 int FUNC16 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ifnet*,char*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct dtsec_softc*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct dtsec_softc*,int /*<<< orphan*/ ) ; 

int
FUNC27(device_t dev)
{
	struct dtsec_softc *sc;
	device_t parent;
	int error;
	struct ifnet *ifp;

	sc = FUNC7(dev);

	parent = FUNC6(dev);
	sc->sc_dev = dev;
	sc->sc_mac_mdio_irq = NO_IRQ;

	/* Check if MallocSmart allocator is ready */
	if (FUNC2() != E_OK)
		return (ENXIO);

	/* Init locks */
	FUNC24(&sc->sc_lock, FUNC5(dev),
	    "DTSEC Global Lock", MTX_DEF);

	FUNC24(&sc->sc_mii_lock, FUNC5(dev),
	    "DTSEC MII Lock", MTX_DEF);

	/* Init callouts */
	FUNC3(&sc->sc_tick_callout, CALLOUT_MPSAFE);

	/* Read configuraton */
	if ((error = FUNC19(parent, &sc->sc_fmh)) != 0)
		return (error);

	if ((error = FUNC20(parent, &sc->sc_muramh)) != 0)
		return (error);

	if ((error = FUNC18(parent, &sc->sc_fm_base)) != 0)
		return (error);

	/* Configure working mode */
	FUNC10(sc);

	/* If we are working in regular mode configure BMAN and QMAN */
	if (sc->sc_mode == DTSEC_MODE_REGULAR) {
		/* Create RX buffer pool */
		error = FUNC16(sc);
		if (error != 0)
			return (EIO);

		/* Create RX frame queue range */
		error = FUNC14(sc);
		if (error != 0)
			return (EIO);

		/* Create frame info pool */
		error = FUNC13(sc);
		if (error != 0)
			return (EIO);

		/* Create TX frame queue range */
		error = FUNC15(sc);
		if (error != 0)
			return (EIO);
	}

	/* Init FMan MAC module. */
	error = FUNC12(sc, sc->sc_mac_addr);
	if (error != 0) {
		FUNC11(dev);
		return (ENXIO);
	}

	/* Init FMan TX port */
	error = sc->sc_port_tx_init(sc, FUNC8(sc->sc_dev));
	if (error != 0) {
		FUNC11(dev);
		return (ENXIO);
	}

	/* Init FMan RX port */
	error = sc->sc_port_rx_init(sc, FUNC8(sc->sc_dev));
	if (error != 0) {
		FUNC11(dev);
		return (ENXIO);
	}

	/* Create network interface for upper layers */
	ifp = sc->sc_ifnet = FUNC21(IFT_ETHER);
	if (ifp == NULL) {
		FUNC9(sc->sc_dev, "if_alloc() failed.\n");
		FUNC11(dev);
		return (ENOMEM);
	}

	ifp->if_softc = sc;
	ifp->if_mtu = ETHERMTU;	/* TODO: Configure */
	ifp->if_flags = IFF_SIMPLEX | IFF_BROADCAST;
	ifp->if_init = dtsec_if_init;
	ifp->if_start = dtsec_if_start;
	ifp->if_ioctl = dtsec_if_ioctl;
	ifp->if_snd.ifq_maxlen = IFQ_MAXLEN;

	if (sc->sc_phy_addr >= 0)
		FUNC22(ifp, FUNC4(sc->sc_dev),
		    FUNC8(sc->sc_dev));
	else
		FUNC22(ifp, "dtsec_phy", FUNC8(sc->sc_dev));

	/* TODO */
#if 0
	IFQ_SET_MAXLEN(&ifp->if_snd, TSEC_TX_NUM_DESC - 1);
	ifp->if_snd.ifq_drv_maxlen = TSEC_TX_NUM_DESC - 1;
	IFQ_SET_READY(&ifp->if_snd);
#endif
	ifp->if_capabilities = IFCAP_JUMBO_MTU; /* TODO: HWCSUM */
	ifp->if_capenable = ifp->if_capabilities;

	/* Attach PHY(s) */
	error = FUNC23(sc->sc_dev, &sc->sc_mii_dev, ifp, dtsec_ifmedia_upd,
	    dtsec_ifmedia_sts, BMSR_DEFCAPMASK, sc->sc_phy_addr,
	    MII_OFFSET_ANY, 0);
	if (error) {
		FUNC9(sc->sc_dev, "attaching PHYs failed: %d\n", error);
		FUNC11(sc->sc_dev);
		return (error);
	}
	sc->sc_mii = FUNC7(sc->sc_mii_dev);

	/* Attach to stack */
	FUNC17(ifp, sc->sc_mac_addr);

	return (0);
}