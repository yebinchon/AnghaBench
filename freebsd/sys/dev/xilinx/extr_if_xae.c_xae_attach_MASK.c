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
typedef  int uint32_t ;
struct xae_softc {int is_attached; int /*<<< orphan*/  xchan_rx; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  miibus; void* mii_softc; int /*<<< orphan*/  phy_addr; struct ifnet* ifp; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/ * res; int /*<<< orphan*/  mtx; int /*<<< orphan*/  xae_callout; int /*<<< orphan*/  dev; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/ * br; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; struct xae_softc* if_softc; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUFRING_SIZE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MDIO_CLK_DIV_DEFAULT ; 
 int MDIO_SETUP_CLK_DIV_S ; 
 int MDIO_SETUP_ENABLE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NUM_RX_MBUF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ TX_DESC_COUNT ; 
 int /*<<< orphan*/  FUNC4 (struct xae_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XAE_IDENT ; 
 int /*<<< orphan*/  XAE_MDIO_SETUP ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xae_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct xae_softc*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct xae_softc*) ; 
 scalar_t__ FUNC24 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xae_init ; 
 int /*<<< orphan*/  xae_intr ; 
 int /*<<< orphan*/  xae_ioctl ; 
 int /*<<< orphan*/  xae_media_change ; 
 int /*<<< orphan*/  xae_media_status ; 
 int /*<<< orphan*/  FUNC26 (struct xae_softc*) ; 
 int /*<<< orphan*/  xae_qflush ; 
 int /*<<< orphan*/  FUNC27 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xae_spec ; 
 int /*<<< orphan*/  xae_transmit ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	struct xae_softc *sc;
	struct ifnet *ifp;
	phandle_t node;
	uint32_t reg;
	int error;

	sc = FUNC11(dev);
	sc->dev = dev;
	node = FUNC20(dev);

	if (FUNC23(sc) != 0) {
		FUNC13(dev, "Could not setup xDMA.\n");
		return (ENXIO);
	}

	FUNC19(&sc->mtx, FUNC10(sc->dev),
	    MTX_NETWORK_LOCK, MTX_DEF);

	sc->br = FUNC5(BUFRING_SIZE, M_DEVBUF,
	    M_NOWAIT, &sc->mtx);
	if (sc->br == NULL)
		return (ENOMEM);

	if (FUNC6(dev, xae_spec, sc->res)) {
		FUNC13(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC22(sc->res[0]);
	sc->bsh = FUNC21(sc->res[0]);

	FUNC13(sc->dev, "Identification: %x\n",
	    FUNC3(sc, XAE_IDENT));

	/* Get MAC addr */
	if (FUNC24(sc, sc->macaddr)) {
		FUNC13(sc->dev, "can't get mac\n");
		return (ENXIO);
	}

	/* Enable MII clock */
	reg = (MDIO_CLK_DIV_DEFAULT << MDIO_SETUP_CLK_DIV_S);
	reg |= MDIO_SETUP_ENABLE;
	FUNC4(sc, XAE_MDIO_SETUP, reg);
	if (FUNC17(sc))
		return (ENXIO);

	FUNC8(&sc->xae_callout, &sc->mtx, 0);

	/* Setup interrupt handler. */
	error = FUNC7(dev, sc->res[1], INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, xae_intr, sc, &sc->intr_cookie);
	if (error != 0) {
		FUNC13(dev, "could not setup interrupt handler.\n");
		return (ENXIO);
	}

	/* Set up the ethernet interface. */
	sc->ifp = ifp = FUNC15(IFT_ETHER);
	if (ifp == NULL) {
		FUNC13(dev, "could not allocate ifp.\n");
		return (ENXIO);
	}

	ifp->if_softc = sc;
	FUNC16(ifp, FUNC9(dev), FUNC12(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_transmit = xae_transmit;
	ifp->if_qflush = xae_qflush;
	ifp->if_ioctl = xae_ioctl;
	ifp->if_init = xae_init;
	FUNC0(&ifp->if_snd, TX_DESC_COUNT - 1);
	ifp->if_snd.ifq_drv_maxlen = TX_DESC_COUNT - 1;
	FUNC1(&ifp->if_snd);

	if (FUNC25(node, &sc->phy_addr) != 0)
		return (ENXIO);

	/* Attach the mii driver. */
	error = FUNC18(dev, &sc->miibus, ifp, xae_media_change,
	    xae_media_status, BMSR_DEFCAPMASK, sc->phy_addr,
	    MII_OFFSET_ANY, 0);

	if (error != 0) {
		FUNC13(dev, "PHY attach failed\n");
		return (ENXIO);
	}
	sc->mii_softc = FUNC11(sc->miibus);

	/* Apply vcu118 workaround. */
	if (FUNC2(node, "xlnx,vcu118") >= 0)
		FUNC26(sc);

	/* All ready to run, attach the ethernet interface. */
	FUNC14(ifp, sc->macaddr);
	sc->is_attached = true;

	FUNC27(sc, NUM_RX_MBUF);
	FUNC28(sc->xchan_rx);

	return (0);
}