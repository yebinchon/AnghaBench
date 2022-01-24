#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct llan_softc {TYPE_2__* ifp; int /*<<< orphan*/ * mac_address; int /*<<< orphan*/  media; TYPE_1__* rx_xfer; int /*<<< orphan*/  rxbuf_dma_tag; int /*<<< orphan*/  tx_dma_map; int /*<<< orphan*/  tx_dma_tag; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_buf_map; int /*<<< orphan*/  rx_dma_tag; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  irq_cookie; int /*<<< orphan*/  irq; scalar_t__ irqid; int /*<<< orphan*/  unit; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct TYPE_9__ {int if_flags; TYPE_6__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; scalar_t__ if_capenable; scalar_t__ if_capabilities; scalar_t__ if_hwassist; int /*<<< orphan*/  if_mtu; struct llan_softc* if_softc; } ;
struct TYPE_8__ {int /*<<< orphan*/ * rx_mbuf; int /*<<< orphan*/  rx_dmamap; } ;

/* Variables and functions */
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHERMTU ; 
 scalar_t__ ETHER_ADDR_LEN ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int LLAN_MAX_RX_PACKETS ; 
 int /*<<< orphan*/  LLAN_MAX_TX_PACKETS ; 
 int /*<<< orphan*/  LLAN_RX_BUF_LEN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct llan_softc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct llan_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct llan_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  llan_init ; 
 int /*<<< orphan*/  llan_intr ; 
 int /*<<< orphan*/  llan_ioctl ; 
 int /*<<< orphan*/  llan_media_change ; 
 int /*<<< orphan*/  llan_media_status ; 
 int /*<<< orphan*/  llan_rx_load_cb ; 
 int /*<<< orphan*/  llan_start ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct llan_softc *sc;
	phandle_t node;
	int error, i;
	ssize_t len;

	sc = FUNC14(dev);
	sc->dev = dev;

	/* Get firmware properties */
	node = FUNC26(dev);
	len = FUNC3(node, "local-mac-address", sc->mac_address,
	    sizeof(sc->mac_address));
	/* If local-mac-address property has only 6 bytes (ETHER_ADDR_LEN)
	 * instead of 8 (sizeof(sc->mac_address)), then its value must be
	 * shifted 2 bytes to the right. */
	if (len == ETHER_ADDR_LEN) {
		FUNC4(sc->mac_address, &sc->mac_address[2], len);
		/* Zero out the first 2 bytes. */
		FUNC12(sc->mac_address, 2);
	}
	FUNC2(node, "reg", &sc->unit, sizeof(sc->unit));

	FUNC25(&sc->io_lock, "llan", NULL, MTX_DEF);

        /* Setup interrupt */
	sc->irqid = 0;
	sc->irq = FUNC5(dev, SYS_RES_IRQ, &sc->irqid,
	    RF_ACTIVE);

	if (!sc->irq) {
		FUNC16(dev, "Could not allocate IRQ\n");
		FUNC24(&sc->io_lock);
		return (ENXIO);
	}

	FUNC11(dev, sc->irq, INTR_TYPE_MISC | INTR_MPSAFE |
	    INTR_ENTROPY, NULL, llan_intr, sc, &sc->irq_cookie);

	/* Setup DMA */
	error = FUNC6(FUNC10(dev), 16, 0,
            BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    LLAN_RX_BUF_LEN, 1, BUS_SPACE_MAXSIZE_32BIT,
	    0, NULL, NULL, &sc->rx_dma_tag);
	error = FUNC6(FUNC10(dev), 4, 0,
            BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    BUS_SPACE_MAXSIZE, 1, BUS_SPACE_MAXSIZE_32BIT,
	    0, NULL, NULL, &sc->rxbuf_dma_tag);
	error = FUNC6(FUNC10(dev), 1, 0,
            BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    BUS_SPACE_MAXSIZE, 6, BUS_SPACE_MAXSIZE_32BIT, 0,
	    busdma_lock_mutex, &sc->io_lock, &sc->tx_dma_tag);

	error = FUNC9(sc->rx_dma_tag, (void **)&sc->rx_buf,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->rx_buf_map);
	error = FUNC8(sc->rx_dma_tag, sc->rx_buf_map, sc->rx_buf,
	    LLAN_RX_BUF_LEN, llan_rx_load_cb, sc, 0);

	/* TX DMA maps */
	FUNC7(sc->tx_dma_tag, 0, &sc->tx_dma_map);

	/* RX DMA */
	for (i = 0; i < LLAN_MAX_RX_PACKETS; i++) {
		error = FUNC7(sc->rxbuf_dma_tag, 0,
		    &sc->rx_xfer[i].rx_dmamap);
		sc->rx_xfer[i].rx_mbuf = NULL;
	}

	/* Attach to network stack */
	sc->ifp = FUNC18(IFT_ETHER);
	sc->ifp->if_softc = sc;

	FUNC19(sc->ifp, FUNC13(dev), FUNC15(dev));
	sc->ifp->if_mtu = ETHERMTU; /* XXX max-frame-size from OF? */
	sc->ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	sc->ifp->if_hwassist = 0; /* XXX: ibm,illan-options */
	sc->ifp->if_capabilities = 0;
	sc->ifp->if_capenable = 0;
	sc->ifp->if_start = llan_start;
	sc->ifp->if_ioctl = llan_ioctl;
	sc->ifp->if_init = llan_init;

	FUNC22(&sc->media, IFM_IMASK, llan_media_change,
	    llan_media_status);
	FUNC21(&sc->media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC23(&sc->media, IFM_ETHER | IFM_AUTO);

	FUNC0(&sc->ifp->if_snd, LLAN_MAX_TX_PACKETS);
	sc->ifp->if_snd.ifq_drv_maxlen = LLAN_MAX_TX_PACKETS;
	FUNC1(&sc->ifp->if_snd);

	FUNC17(sc->ifp, &sc->mac_address[2]);

	/* We don't have link state reporting, so make it always up */
	FUNC20(sc->ifp, LINK_STATE_UP);

	return (0);
}