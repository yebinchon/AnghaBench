#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
struct mbuf {int dummy; } ;
struct TYPE_9__ {size_t ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_linkmiblen; int /*<<< orphan*/ * if_linkmib; TYPE_4__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; struct ffec_softc* if_softc; } ;
struct ffec_softc {size_t fecflags; int rxbuf_align; int txbuf_align; scalar_t__ phy_conn_type; int is_attached; int /*<<< orphan*/  miibus; void* mii_softc; int /*<<< orphan*/  mibdata; struct ifnet* ifp; int /*<<< orphan*/ * intr_cookie; int /*<<< orphan*/ ** irq_res; int /*<<< orphan*/  dev; TYPE_2__* rxbuf_map; int /*<<< orphan*/  rxbuf_tag; int /*<<< orphan*/  rxdesc_ring_paddr; int /*<<< orphan*/  rxdesc_ring; int /*<<< orphan*/  rxdesc_map; int /*<<< orphan*/  rxdesc_tag; TYPE_1__* txbuf_map; int /*<<< orphan*/  txbuf_tag; int /*<<< orphan*/  txdesc_ring_paddr; int /*<<< orphan*/  txdesc_ring; int /*<<< orphan*/  txdesc_map; int /*<<< orphan*/  txdesc_tag; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  mtx; int /*<<< orphan*/  ffec_callout; scalar_t__ fectype; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {uintptr_t ocd_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  map; } ;
struct TYPE_6__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENOATTR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int FECFLAG_AVB ; 
 uintptr_t FECTYPE_MASK ; 
 int FECTYPE_MVF ; 
 int FEC_DESC_RING_ALIGN ; 
 int /*<<< orphan*/  FEC_ECR_REG ; 
 size_t FEC_ECR_RESET ; 
 size_t FEC_MSCR_DIS_PRE ; 
 int FEC_MSCR_MII_SPEED_SHIFT ; 
 int /*<<< orphan*/  FEC_MSCR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct ffec_softc*) ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MAX_IRQ_COUNT ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  MIIF_FORCEANEG ; 
 scalar_t__ MII_CONTYPE_UNKNOWN ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int MII_PHY_ANY ; 
 scalar_t__ FUNC3 (int,char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 size_t RX_DESC_COUNT ; 
 int /*<<< orphan*/  RX_DESC_SIZE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 size_t TX_DESC_COUNT ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct ffec_softc*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ffec_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,scalar_t__*) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int*,void**) ; 
 struct mbuf* FUNC20 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ffec_get1paddr ; 
 int /*<<< orphan*/  FUNC22 (struct ffec_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  ffec_init ; 
 int /*<<< orphan*/  ffec_intr ; 
 int /*<<< orphan*/  ffec_ioctl ; 
 int /*<<< orphan*/  ffec_media_change ; 
 int /*<<< orphan*/  ffec_media_status ; 
 int /*<<< orphan*/  FUNC23 (struct ffec_softc*) ; 
 int FUNC24 (struct ffec_softc*,size_t,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC25 (struct ffec_softc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ffec_txstart ; 
 struct ifnet* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_res_spec ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct ffec_softc *sc;
	struct ifnet *ifp = NULL;
	struct mbuf *m;
	void *dummy;
	uintptr_t typeflags;
	phandle_t ofw_node;
	uint32_t idx, mscr;
	int error, phynum, rid, irq;
	uint8_t eaddr[ETHER_ADDR_LEN];

	sc = FUNC15(dev);
	sc->dev = dev;

	FUNC0(sc);

	/*
	 * There are differences in the implementation and features of the FEC
	 * hardware on different SoCs, so figure out what type we are.
	 */
	typeflags = FUNC31(dev, compat_data)->ocd_data;
	sc->fectype = (uint8_t)(typeflags & FECTYPE_MASK);
	sc->fecflags = (uint32_t)(typeflags & ~FECTYPE_MASK);

	if (sc->fecflags & FECFLAG_AVB) {
		sc->rxbuf_align = 64;
		sc->txbuf_align = 1;
	} else {
		sc->rxbuf_align = 16;
		sc->txbuf_align = 16;
	}

	/*
	 * We have to be told what kind of electrical connection exists between
	 * the MAC and PHY or we can't operate correctly.
	 */
	if ((ofw_node = FUNC30(dev)) == -1) {
		FUNC17(dev, "Impossible: Can't find ofw bus node\n");
		error = ENXIO;
		goto out;
	}
	sc->phy_conn_type = FUNC29(ofw_node);
	if (sc->phy_conn_type == MII_CONTYPE_UNKNOWN) {
		FUNC17(sc->dev, "No valid 'phy-mode' "
		    "property found in FDT data for device.\n");
		error = ENOATTR;
		goto out;
	}

	FUNC13(&sc->ffec_callout, &sc->mtx, 0);

	/* Allocate bus resources for accessing the hardware. */
	rid = 0;
	sc->mem_res = FUNC5(dev, SYS_RES_MEMORY, &rid, 
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC17(dev, "could not allocate memory resources.\n");
		error = ENOMEM;
		goto out;
	}

	error = FUNC6(dev, irq_res_spec, sc->irq_res);
	if (error != 0) {
		FUNC17(dev, "could not allocate interrupt resources\n");
		goto out;
	}

	/*
	 * Set up TX descriptor ring, descriptors, and dma maps.
	 */
	error = FUNC7(
	    FUNC11(dev),	/* Parent tag. */
	    FEC_DESC_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    TX_DESC_SIZE, 1, 		/* maxsize, nsegments */
	    TX_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->txdesc_tag);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not create TX ring DMA tag.\n");
		goto out;
	}

	error = FUNC10(sc->txdesc_tag, (void**)&sc->txdesc_ring,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->txdesc_map);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not allocate TX descriptor ring.\n");
		goto out;
	}

	error = FUNC9(sc->txdesc_tag, sc->txdesc_map, sc->txdesc_ring,
	    TX_DESC_SIZE, ffec_get1paddr, &sc->txdesc_ring_paddr, 0);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not load TX descriptor ring map.\n");
		goto out;
	}

	error = FUNC7(
	    FUNC11(dev),	/* Parent tag. */
	    sc->txbuf_align, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES, 1, 		/* maxsize, nsegments */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->txbuf_tag);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not create TX ring DMA tag.\n");
		goto out;
	}

	for (idx = 0; idx < TX_DESC_COUNT; ++idx) {
		error = FUNC8(sc->txbuf_tag, 0, 
		    &sc->txbuf_map[idx].map);
		if (error != 0) {
			FUNC17(sc->dev,
			    "could not create TX buffer DMA map.\n");
			goto out;
		}
		FUNC25(sc, idx, 0, 0);
	}

	/*
	 * Set up RX descriptor ring, descriptors, dma maps, and mbufs.
	 */
	error = FUNC7(
	    FUNC11(dev),	/* Parent tag. */
	    FEC_DESC_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    RX_DESC_SIZE, 1, 		/* maxsize, nsegments */
	    RX_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->rxdesc_tag);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not create RX ring DMA tag.\n");
		goto out;
	}

	error = FUNC10(sc->rxdesc_tag, (void **)&sc->rxdesc_ring, 
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->rxdesc_map);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not allocate RX descriptor ring.\n");
		goto out;
	}

	error = FUNC9(sc->rxdesc_tag, sc->rxdesc_map, sc->rxdesc_ring,
	    RX_DESC_SIZE, ffec_get1paddr, &sc->rxdesc_ring_paddr, 0);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not load RX descriptor ring map.\n");
		goto out;
	}

	error = FUNC7(
	    FUNC11(dev),	/* Parent tag. */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES, 1, 		/* maxsize, nsegments */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->rxbuf_tag);
	if (error != 0) {
		FUNC17(sc->dev,
		    "could not create RX buf DMA tag.\n");
		goto out;
	}

	for (idx = 0; idx < RX_DESC_COUNT; ++idx) {
		error = FUNC8(sc->rxbuf_tag, 0, 
		    &sc->rxbuf_map[idx].map);
		if (error != 0) {
			FUNC17(sc->dev,
			    "could not create RX buffer DMA map.\n");
			goto out;
		}
		if ((m = FUNC20(sc)) == NULL) {
			FUNC17(dev, "Could not alloc mbuf\n");
			error = ENOMEM;
			goto out;
		}
		if ((error = FUNC24(sc, idx, m)) != 0) {
			FUNC17(sc->dev,
			    "could not create new RX buffer.\n");
			goto out;
		}
	}

	/* Try to get the MAC address from the hardware before resetting it. */
	FUNC22(sc, eaddr);

	/*
	 * Reset the hardware.  Disables all interrupts.
	 *
	 * When the FEC is connected to the AXI bus (indicated by AVB flag), a
	 * MAC reset while a bus transaction is pending can hang the bus.
	 * Instead of resetting, turn off the ENABLE bit, which allows the
	 * hardware to complete any in-progress transfers (appending a bad CRC
	 * to any partial packet) and release the AXI bus.  This could probably
	 * be done unconditionally for all hardware variants, but that hasn't
	 * been tested.
	 */
	if (sc->fecflags & FECFLAG_AVB)
		FUNC4(sc, FEC_ECR_REG, 0);
	else
		FUNC4(sc, FEC_ECR_REG, FEC_ECR_RESET);

	/* Setup interrupt handler. */
	for (irq = 0; irq < MAX_IRQ_COUNT; ++irq) {
		if (sc->irq_res[irq] != NULL) {
			error = FUNC12(dev, sc->irq_res[irq],
			    INTR_TYPE_NET | INTR_MPSAFE, NULL, ffec_intr, sc,
			    &sc->intr_cookie[irq]);
			if (error != 0) {
				FUNC17(dev,
				    "could not setup interrupt handler.\n");
				goto out;
			}
		}
	}

	/*
	 * Set up the PHY control register.
	 *
	 * Speed formula for ENET is md_clock = mac_clock / ((N + 1) * 2).
	 * Speed formula for FEC is  md_clock = mac_clock / (N * 2)
	 *
	 * XXX - Revisit this...
	 *
	 * For a Wandboard imx6 (ENET) I was originally using 4, but the uboot
	 * code uses 10.  Both values seem to work, but I suspect many modern
	 * PHY parts can do mdio at speeds far above the standard 2.5 MHz.
	 *
	 * Different imx manuals use confusingly different terminology (things
	 * like "system clock" and "internal module clock") with examples that
	 * use frequencies that have nothing to do with ethernet, giving the
	 * vague impression that maybe the clock in question is the periphclock
	 * or something.  In fact, on an imx53 development board (FEC),
	 * measuring the mdio clock at the pin on the PHY and playing with
	 * various divisors showed that the root speed was 66 MHz (clk_ipg_root
	 * aka periphclock) and 13 was the right divisor.
	 *
	 * All in all, it seems likely that 13 is a safe divisor for now,
	 * because if we really do need to base it on the peripheral clock
	 * speed, then we need a platform-independant get-clock-freq API.
	 */
	mscr = 13 << FEC_MSCR_MII_SPEED_SHIFT;
	if (FUNC3(ofw_node, "phy-disable-preamble")) {
		mscr |= FEC_MSCR_DIS_PRE;
		if (bootverbose)
			FUNC17(dev, "PHY preamble disabled\n");
	}
	FUNC4(sc, FEC_MSCR_REG, mscr);

	/* Set up the ethernet interface. */
	sc->ifp = ifp = FUNC26(IFT_ETHER);

	ifp->if_softc = sc;
	FUNC27(ifp, FUNC14(dev), FUNC16(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_start = ffec_txstart;
	ifp->if_ioctl = ffec_ioctl;
	ifp->if_init = ffec_init;
	FUNC1(&ifp->if_snd, TX_DESC_COUNT - 1);
	ifp->if_snd.ifq_drv_maxlen = TX_DESC_COUNT - 1;
	FUNC2(&ifp->if_snd);
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

#if 0 /* XXX The hardware keeps stats we could use for these. */
	ifp->if_linkmib = &sc->mibdata;
	ifp->if_linkmiblen = sizeof(sc->mibdata);
#endif

	/* Set up the miigasket hardware (if any). */
	FUNC23(sc);

	/* Attach the mii driver. */
	if (FUNC19(ofw_node, dev, &phynum, &dummy) != 0) {
		phynum = MII_PHY_ANY;
	}
	error = FUNC28(dev, &sc->miibus, ifp, ffec_media_change,
	    ffec_media_status, BMSR_DEFCAPMASK, phynum, MII_OFFSET_ANY,
	    (sc->fecflags & FECTYPE_MVF) ? MIIF_FORCEANEG : 0);
	if (error != 0) {
		FUNC17(dev, "PHY attach failed\n");
		goto out;
	}
	sc->mii_softc = FUNC15(sc->miibus);

	/* All ready to run, attach the ethernet interface. */
	FUNC18(ifp, eaddr);
	sc->is_attached = true;

	error = 0;
out:

	if (error != 0)
		FUNC21(dev);

	return (error);
}