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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; struct atse_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct atse_softc {int atse_phy_addr; int /*<<< orphan*/ * xchan_rx; int /*<<< orphan*/  atse_eth_addr; int /*<<< orphan*/  atse_miibus; struct ifnet* atse_ifp; int /*<<< orphan*/  atse_bmcr1; int /*<<< orphan*/  atse_bmcr0; int /*<<< orphan*/  atse_mtx; int /*<<< orphan*/  atse_tick; int /*<<< orphan*/ * br; int /*<<< orphan*/  br_mtx; int /*<<< orphan*/  dev; int /*<<< orphan*/  ih_rx; int /*<<< orphan*/ * xdma_rx; int /*<<< orphan*/ * xchan_tx; int /*<<< orphan*/  ih_tx; int /*<<< orphan*/ * xdma_tx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ATSE_TX_LIST_CNT ; 
 int /*<<< orphan*/  BASE_CFG_MDIO_ADDR0 ; 
 int /*<<< orphan*/  BASE_CFG_MDIO_ADDR1 ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUFRING_SIZE ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (struct atse_softc*,int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  MDIO_0_START ; 
 int /*<<< orphan*/  MDIO_1_START ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/ * MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NUM_RX_MBUF ; 
 int /*<<< orphan*/  RX_QUEUE_SIZE ; 
 int /*<<< orphan*/  TX_QUEUE_SIZE ; 
 int /*<<< orphan*/  XCHAN_CAP_NOSEG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atse_ifmedia_sts ; 
 int /*<<< orphan*/  atse_ifmedia_upd ; 
 int /*<<< orphan*/  atse_init ; 
 int /*<<< orphan*/  atse_ioctl ; 
 int /*<<< orphan*/  atse_qflush ; 
 int /*<<< orphan*/  FUNC5 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct atse_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atse_transmit ; 
 int /*<<< orphan*/  atse_xdma_rx_intr ; 
 int /*<<< orphan*/  atse_xdma_tx_intr ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 struct atse_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct atse_softc*,int /*<<< orphan*/ *) ; 

int
FUNC25(device_t dev)
{
	struct atse_softc *sc;
	struct ifnet *ifp;
	uint32_t caps;
	int error;

	sc = FUNC12(dev);
	sc->dev = dev;

	/* Get xDMA controller */
	sc->xdma_tx = FUNC21(sc->dev, "tx");
	if (sc->xdma_tx == NULL) {
		FUNC14(dev, "Can't find DMA controller.\n");
		return (ENXIO);
	}

	/*
	 * Only final (EOP) write can be less than "symbols per beat" value
	 * so we have to defrag mbuf chain.
	 * Chapter 15. On-Chip FIFO Memory Core.
	 * Embedded Peripherals IP User Guide.
	 */
	caps = XCHAN_CAP_NOSEG;

	/* Alloc xDMA virtual channel. */
	sc->xchan_tx = FUNC20(sc->xdma_tx, caps);
	if (sc->xchan_tx == NULL) {
		FUNC14(dev, "Can't alloc virtual DMA channel.\n");
		return (ENXIO);
	}

	/* Setup interrupt handler. */
	error = FUNC24(sc->xchan_tx, atse_xdma_tx_intr, sc, &sc->ih_tx);
	if (error) {
		FUNC14(sc->dev,
		    "Can't setup xDMA interrupt handler.\n");
		return (ENXIO);
	}

	FUNC22(sc->xchan_tx,
	    TX_QUEUE_SIZE,	/* xchan requests queue size */
	    MCLBYTES,	/* maxsegsize */
	    8,		/* maxnsegs */
	    16,		/* alignment */
	    0,		/* boundary */
	    BUS_SPACE_MAXADDR_32BIT,
	    BUS_SPACE_MAXADDR);

	/* Get RX xDMA controller */
	sc->xdma_rx = FUNC21(sc->dev, "rx");
	if (sc->xdma_rx == NULL) {
		FUNC14(dev, "Can't find DMA controller.\n");
		return (ENXIO);
	}

	/* Alloc xDMA virtual channel. */
	sc->xchan_rx = FUNC20(sc->xdma_rx, caps);
	if (sc->xchan_rx == NULL) {
		FUNC14(dev, "Can't alloc virtual DMA channel.\n");
		return (ENXIO);
	}

	/* Setup interrupt handler. */
	error = FUNC24(sc->xchan_rx, atse_xdma_rx_intr, sc, &sc->ih_rx);
	if (error) {
		FUNC14(sc->dev,
		    "Can't setup xDMA interrupt handler.\n");
		return (ENXIO);
	}

	FUNC22(sc->xchan_rx,
	    RX_QUEUE_SIZE,	/* xchan requests queue size */
	    MCLBYTES,		/* maxsegsize */
	    1,			/* maxnsegs */
	    16,			/* alignment */
	    0,			/* boundary */
	    BUS_SPACE_MAXADDR_32BIT,
	    BUS_SPACE_MAXADDR);

	FUNC19(&sc->br_mtx, "buf ring mtx", NULL, MTX_DEF);
	sc->br = FUNC8(BUFRING_SIZE, M_DEVBUF,
	    M_NOWAIT, &sc->br_mtx);
	if (sc->br == NULL) {
		return (ENOMEM);
	}

	FUNC4(dev);

	FUNC19(&sc->atse_mtx, FUNC11(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);

	FUNC9(&sc->atse_tick, &sc->atse_mtx, 0);

	/*
	 * We are only doing single-PHY with this driver currently.  The
	 * defaults would be right so that BASE_CFG_MDIO_ADDR0 points to the
	 * 1st PHY address (0) apart from the fact that BMCR0 is always
	 * the PCS mapping, so we always use BMCR1. See Table 5-1 0xA0-0xBF.
	 */
#if 0	/* Always PCS. */
	sc->atse_bmcr0 = MDIO_0_START;
	CSR_WRITE_4(sc, BASE_CFG_MDIO_ADDR0, 0x00);
#endif
	/* Always use matching PHY for atse[0..]. */
	sc->atse_phy_addr = FUNC13(dev);
	sc->atse_bmcr1 = MDIO_1_START;
	FUNC0(sc, BASE_CFG_MDIO_ADDR1, sc->atse_phy_addr);

	/* Reset the adapter. */
	FUNC5(sc);

	/* Setup interface. */
	ifp = sc->atse_ifp = FUNC16(IFT_ETHER);
	if (ifp == NULL) {
		FUNC14(dev, "if_alloc() failed\n");
		error = ENOSPC;
		goto err;
	}
	ifp->if_softc = sc;
	FUNC17(ifp, FUNC10(dev), FUNC13(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = atse_ioctl;
	ifp->if_transmit = atse_transmit;
	ifp->if_qflush = atse_qflush;
	ifp->if_init = atse_init;
	FUNC1(&ifp->if_snd, ATSE_TX_LIST_CNT - 1);
	ifp->if_snd.ifq_drv_maxlen = ATSE_TX_LIST_CNT - 1;
	FUNC2(&ifp->if_snd);

	/* MII setup. */
	error = FUNC18(dev, &sc->atse_miibus, ifp, atse_ifmedia_upd,
	    atse_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC14(dev, "attaching PHY failed: %d\n", error);
		goto err;
	}

	/* Call media-indepedent attach routine. */
	FUNC15(ifp, sc->atse_eth_addr);

	/* Tell the upper layer(s) about vlan mtu support. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;

err:
	if (error != 0) {
		FUNC3(dev);
	}

	if (error == 0) {
		FUNC7(dev);
	}

	FUNC6(sc, NUM_RX_MBUF);
	FUNC23(sc->xchan_rx);

	return (error);
}