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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {void* ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; struct dwc_softc* if_softc; } ;
struct dwc_softc {scalar_t__ mactype; int rxdesc_ring_paddr; int txdesc_ring_paddr; int is_attached; int /*<<< orphan*/  miibus; void* mii_softc; struct ifnet* ifp; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/ * res; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dwc_callout; int /*<<< orphan*/  dev; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  mii_clk; void* txcount; scalar_t__ rx_idx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUS_MODE ; 
 int BUS_MODE_EIGHTXPBL ; 
 int BUS_MODE_FIXEDBURST ; 
 int BUS_MODE_PBL_BEATS_8 ; 
 int BUS_MODE_PBL_SHIFT ; 
 int BUS_MODE_PRIORXTX_41 ; 
 int BUS_MODE_PRIORXTX_SHIFT ; 
 int BUS_MODE_SWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DWC_GMAC_ALT_DESC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MAC_RESET_TIMEOUT ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int MODE_SR ; 
 int MODE_ST ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  OPERATION_MODE ; 
 int FUNC6 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_DESCR_LIST_ADDR ; 
 int /*<<< orphan*/  TX_DESCR_LIST_ADDR ; 
 void* TX_DESC_COUNT ; 
 int /*<<< orphan*/  FUNC7 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dwc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct dwc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dwc_init ; 
 int /*<<< orphan*/  dwc_intr ; 
 int /*<<< orphan*/  dwc_ioctl ; 
 int /*<<< orphan*/  dwc_media_change ; 
 int /*<<< orphan*/  dwc_media_status ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc_spec ; 
 int /*<<< orphan*/  dwc_txstart ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct dwc_softc*) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	uint8_t macaddr[ETHER_ADDR_LEN];
	struct dwc_softc *sc;
	struct ifnet *ifp;
	int error, i;
	uint32_t reg;

	sc = FUNC13(dev);
	sc->dev = dev;
	sc->rx_idx = 0;
	sc->txcount = TX_DESC_COUNT;
	sc->mii_clk = FUNC5(dev);
	sc->mactype = FUNC4(dev);

	if (FUNC3(dev) != 0)
		return (ENXIO);

#ifdef EXT_RESOURCES
	if (dwc_clock_init(dev) != 0)
		return (ENXIO);
#endif

	if (FUNC8(dev, dwc_spec, sc->res)) {
		FUNC15(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC25(sc->res[0]);
	sc->bsh = FUNC24(sc->res[0]);

	/* Read MAC before reset */
	if (FUNC17(sc, macaddr)) {
		FUNC15(sc->dev, "can't get mac\n");
		return (ENXIO);
	}

	/* Reset the PHY if needed */
	if (FUNC18(dev) != 0) {
		FUNC15(dev, "Can't reset the PHY\n");
		return (ENXIO);
	}

	/* Reset */
	reg = FUNC6(sc, BUS_MODE);
	reg |= (BUS_MODE_SWR);
	FUNC7(sc, BUS_MODE, reg);

	for (i = 0; i < MAC_RESET_TIMEOUT; i++) {
		if ((FUNC6(sc, BUS_MODE) & BUS_MODE_SWR) == 0)
			break;
		FUNC0(10);
	}
	if (i >= MAC_RESET_TIMEOUT) {
		FUNC15(sc->dev, "Can't reset DWC.\n");
		return (ENXIO);
	}

	if (sc->mactype == DWC_GMAC_ALT_DESC) {
		reg = BUS_MODE_FIXEDBURST;
		reg |= (BUS_MODE_PRIORXTX_41 << BUS_MODE_PRIORXTX_SHIFT);
	} else
		reg = (BUS_MODE_EIGHTXPBL);
	reg |= (BUS_MODE_PBL_BEATS_8 << BUS_MODE_PBL_SHIFT);
	FUNC7(sc, BUS_MODE, reg);

	/*
	 * DMA must be stop while changing descriptor list addresses.
	 */
	reg = FUNC6(sc, OPERATION_MODE);
	reg &= ~(MODE_ST | MODE_SR);
	FUNC7(sc, OPERATION_MODE, reg);

	if (FUNC26(sc))
	        return (ENXIO);

	/* Setup addresses */
	FUNC7(sc, RX_DESCR_LIST_ADDR, sc->rxdesc_ring_paddr);
	FUNC7(sc, TX_DESCR_LIST_ADDR, sc->txdesc_ring_paddr);

	FUNC23(&sc->mtx, FUNC12(sc->dev),
	    MTX_NETWORK_LOCK, MTX_DEF);

	FUNC10(&sc->dwc_callout, &sc->mtx, 0);

	/* Setup interrupt handler. */
	error = FUNC9(dev, sc->res[1], INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, dwc_intr, sc, &sc->intr_cookie);
	if (error != 0) {
		FUNC15(dev, "could not setup interrupt handler.\n");
		return (ENXIO);
	}

	/* Set up the ethernet interface. */
	sc->ifp = ifp = FUNC20(IFT_ETHER);

	ifp->if_softc = sc;
	FUNC21(ifp, FUNC11(dev), FUNC14(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_start = dwc_txstart;
	ifp->if_ioctl = dwc_ioctl;
	ifp->if_init = dwc_init;
	FUNC1(&ifp->if_snd, TX_DESC_COUNT - 1);
	ifp->if_snd.ifq_drv_maxlen = TX_DESC_COUNT - 1;
	FUNC2(&ifp->if_snd);

	/* Attach the mii driver. */
	error = FUNC22(dev, &sc->miibus, ifp, dwc_media_change,
	    dwc_media_status, BMSR_DEFCAPMASK, MII_PHY_ANY,
	    MII_OFFSET_ANY, 0);

	if (error != 0) {
		FUNC15(dev, "PHY attach failed\n");
		return (ENXIO);
	}
	sc->mii_softc = FUNC13(sc->miibus);

	/* All ready to run, attach the ethernet interface. */
	FUNC19(ifp, macaddr);
	sc->is_attached = true;

	return (0);
}