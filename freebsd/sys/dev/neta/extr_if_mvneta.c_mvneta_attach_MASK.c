#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mvneta_softc {int version; scalar_t__ phy_addr; scalar_t__ use_inband_status; int phy_attached; int phy_speed; struct ifnet* ifp; int /*<<< orphan*/ * ih_cookie; int /*<<< orphan*/ * res; int /*<<< orphan*/  tick_ch; int /*<<< orphan*/ * dev; int /*<<< orphan*/  mvneta_ifmedia; scalar_t__ phy_fdx; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/ * miibus; void* mii; int /*<<< orphan*/  enaddr; int /*<<< orphan*/  mtx; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_capabilities; int if_flags; int if_capenable; int if_hwassist; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; TYPE_2__ if_snd; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; struct mvneta_softc* if_softc; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int description; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FALSE ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_HWCSUM_IPV6 ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LRO ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_1000_T ; 
 int IFM_100_TX ; 
 int IFM_10_T ; 
 int IFM_2500_T ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_HDX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int IO_WIN_COH_ATTR_MASK ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 scalar_t__ MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC2 (struct mvneta_softc*) ; 
 int /*<<< orphan*/  MVNETA_PACC ; 
 int MVNETA_PACC_ACCELERATIONMODE_EDM ; 
 int /*<<< orphan*/  MVNETA_PHY_QSGMII ; 
 int /*<<< orphan*/  MVNETA_PHY_SGMII ; 
 int /*<<< orphan*/  MVNETA_PRXINIT ; 
 int /*<<< orphan*/  MVNETA_PSNPCFG ; 
 int MVNETA_PSNPCFG_BUFSNP_MASK ; 
 int MVNETA_PSNPCFG_DESCSNP_MASK ; 
 int /*<<< orphan*/  MVNETA_PTXINIT ; 
 int /*<<< orphan*/  MVNETA_PV ; 
 int FUNC3 (struct mvneta_softc*,int /*<<< orphan*/ ) ; 
 int MVNETA_RX_QNUM_MAX ; 
 int MVNETA_TX_QNUM_MAX ; 
 scalar_t__ MVNETA_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC4 (struct mvneta_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ bootverbose ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mvneta_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mvneta_softc*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*) ; 
 struct ifnet* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mii_init ; 
 int /*<<< orphan*/  mii_mutex ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct mvneta_softc*) ; 
 int FUNC28 (struct mvneta_softc*) ; 
 int /*<<< orphan*/  FUNC29 (struct mvneta_softc*) ; 
 scalar_t__ FUNC30 (struct mvneta_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mvneta_init ; 
 int /*<<< orphan*/  FUNC32 (struct ifnet*) ; 
 TYPE_1__* mvneta_intrs ; 
 int /*<<< orphan*/  mvneta_ioctl ; 
 int /*<<< orphan*/  FUNC33 (struct mvneta_softc*) ; 
 int /*<<< orphan*/  FUNC34 (struct mvneta_softc*) ; 
 int /*<<< orphan*/  mvneta_mediachange ; 
 int /*<<< orphan*/  mvneta_mediastatus ; 
 int /*<<< orphan*/  mvneta_qflush ; 
 int FUNC35 (struct mvneta_softc*,int) ; 
 int FUNC36 (struct mvneta_softc*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct mvneta_softc*) ; 
 int /*<<< orphan*/  FUNC38 (struct mvneta_softc*) ; 
 int /*<<< orphan*/  FUNC39 (struct mvneta_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvneta_start ; 
 int /*<<< orphan*/  mvneta_tick ; 
 int /*<<< orphan*/  mvneta_transmit ; 
 int /*<<< orphan*/  FUNC40 (struct mvneta_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC41 (struct mvneta_softc*,int) ; 
 int /*<<< orphan*/  res_spec ; 
 int /*<<< orphan*/  FUNC42 (struct mvneta_softc*) ; 

int
FUNC43(device_t self)
{
	struct mvneta_softc *sc;
	struct ifnet *ifp;
	device_t child;
	int ifm_target;
	int q, error;
#if !defined(__aarch64__)
	uint32_t reg;
#endif

	sc = FUNC13(self);
	sc->dev = self;

	FUNC25(&sc->mtx, "mvneta_sc", NULL, MTX_DEF);

	error = FUNC6(self, res_spec, sc->res);
	if (error) {
		FUNC15(self, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->version = FUNC3(sc, MVNETA_PV);
	FUNC15(self, "version is %x\n", sc->version);
	FUNC9(&sc->tick_ch, 0);

	/*
	 * make sure DMA engines are in reset state
	 */
	FUNC4(sc, MVNETA_PRXINIT, 0x00000001);
	FUNC4(sc, MVNETA_PTXINIT, 0x00000001);

#if !defined(__aarch64__)
	/*
	 * Disable port snoop for buffers and descriptors
	 * to avoid L2 caching of both without DRAM copy.
	 * Obtain coherency settings from the first MBUS
	 * window attribute.
	 */
	if ((FUNC3(sc, FUNC5(0)) & IO_WIN_COH_ATTR_MASK) == 0) {
		reg = FUNC3(sc, MVNETA_PSNPCFG);
		reg &= ~MVNETA_PSNPCFG_DESCSNP_MASK;
		reg &= ~MVNETA_PSNPCFG_BUFSNP_MASK;
		FUNC4(sc, MVNETA_PSNPCFG, reg);
	}
#endif

	/*
	 * MAC address
	 */
	if (FUNC30(sc, sc->enaddr)) {
		FUNC15(self, "no mac address.\n");
		return (ENXIO);
	}
	FUNC39(sc, sc->enaddr);

	FUNC27(sc);

	/* Allocate network interface */
	ifp = sc->ifp = FUNC18(IFT_ETHER);
	if (ifp == NULL) {
		FUNC15(self, "if_alloc() failed\n");
		FUNC26(self);
		return (ENOMEM);
	}
	FUNC19(ifp, FUNC12(self), FUNC14(self));

	/*
	 * We can support 802.1Q VLAN-sized frames and jumbo
	 * Ethernet frames.
	 */
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_JUMBO_MTU;

	ifp->if_softc = sc;
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
#ifdef MVNETA_MULTIQUEUE
	ifp->if_transmit = mvneta_transmit;
	ifp->if_qflush = mvneta_qflush;
#else /* !MVNETA_MULTIQUEUE */
	ifp->if_start = mvneta_start;
	ifp->if_snd.ifq_drv_maxlen = MVNETA_TX_RING_CNT - 1;
	FUNC0(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC1(&ifp->if_snd);
#endif
	ifp->if_init = mvneta_init;
	ifp->if_ioctl = mvneta_ioctl;

	/*
	 * We can do IPv4/TCPv4/UDPv4/TCPv6/UDPv6 checksums in hardware.
	 */
	ifp->if_capabilities |= IFCAP_HWCSUM;

	/*
	 * As VLAN hardware tagging is not supported
	 * but is necessary to perform VLAN hardware checksums,
	 * it is done in the driver
	 */
	ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWCSUM;

	/*
	 * Currently IPv6 HW checksum is broken, so make sure it is disabled.
	 */
	ifp->if_capabilities &= ~IFCAP_HWCSUM_IPV6;
	ifp->if_capenable = ifp->if_capabilities;

	/*
	 * Disabled option(s):
	 * - Support for Large Receive Offload
	 */
	ifp->if_capabilities |= IFCAP_LRO;

	ifp->if_hwassist = CSUM_IP | CSUM_TCP | CSUM_UDP;

	/*
	 * Device DMA Buffer allocation.
	 * Handles resource deallocation in case of failure.
	 */
	error = FUNC28(sc);
	if (error != 0) {
		FUNC26(self);
		return (error);
	}

	/* Initialize queues */
	for (q = 0; q < MVNETA_TX_QNUM_MAX; q++) {
		error = FUNC36(sc, q);
		if (error != 0) {
			FUNC26(self);
			return (error);
		}
	}

	for (q = 0; q < MVNETA_RX_QNUM_MAX; q++) {
		error = FUNC35(sc, q);
		if (error != 0) {
			FUNC26(self);
			return (error);
		}
	}

	FUNC16(ifp, sc->enaddr);

	/*
	 * Enable DMA engines and Initialize Device Registers.
	 */
	FUNC4(sc, MVNETA_PRXINIT, 0x00000000);
	FUNC4(sc, MVNETA_PTXINIT, 0x00000000);
	FUNC4(sc, MVNETA_PACC, MVNETA_PACC_ACCELERATIONMODE_EDM);
	FUNC37(sc);
	FUNC29(sc);
	FUNC38(sc);
	FUNC32(ifp);

	/*
	 * Now MAC is working, setup MII.
	 */
	if (mii_init == 0) {
		/*
		 * MII bus is shared by all MACs and all PHYs in SoC.
		 * serializing the bus access should be safe.
		 */
		FUNC25(&mii_mutex, "mvneta_mii", NULL, MTX_DEF);
		mii_init = 1;
	}

	/* Attach PHY(s) */
	if ((sc->phy_addr != MII_PHY_ANY) && (!sc->use_inband_status)) {
		error = FUNC24(self, &sc->miibus, ifp, mvneta_mediachange,
		    mvneta_mediastatus, BMSR_DEFCAPMASK, sc->phy_addr,
		    MII_OFFSET_ANY, 0);
		if (error != 0) {
			if (bootverbose) {
				FUNC15(self,
				    "MII attach failed, error: %d\n", error);
			}
			FUNC17(sc->ifp);
			FUNC26(self);
			return (error);
		}
		sc->mii = FUNC13(sc->miibus);
		sc->phy_attached = 1;

		/* Disable auto-negotiation in MAC - rely on PHY layer */
		FUNC40(sc, FALSE);
	} else if (sc->use_inband_status == TRUE) {
		/* In-band link status */
		FUNC22(&sc->mvneta_ifmedia, 0, mvneta_mediachange,
		    mvneta_mediastatus);

		/* Configure media */
		FUNC21(&sc->mvneta_ifmedia, IFM_ETHER | IFM_1000_T | IFM_FDX,
		    0, NULL);
		FUNC21(&sc->mvneta_ifmedia, IFM_ETHER | IFM_100_TX, 0, NULL);
		FUNC21(&sc->mvneta_ifmedia, IFM_ETHER | IFM_100_TX | IFM_FDX,
		    0, NULL);
		FUNC21(&sc->mvneta_ifmedia, IFM_ETHER | IFM_10_T, 0, NULL);
		FUNC21(&sc->mvneta_ifmedia, IFM_ETHER | IFM_10_T | IFM_FDX,
		    0, NULL);
		FUNC21(&sc->mvneta_ifmedia, IFM_ETHER | IFM_AUTO, 0, NULL);
		FUNC23(&sc->mvneta_ifmedia, IFM_ETHER | IFM_AUTO);

		/* Enable auto-negotiation */
		FUNC40(sc, TRUE);

		FUNC37(sc);
		if (FUNC2(sc))
			FUNC34(sc);
		else
			FUNC33(sc);
		FUNC38(sc);

	} else {
		/* Fixed-link, use predefined values */
		FUNC40(sc, FALSE);
		FUNC22(&sc->mvneta_ifmedia, 0, mvneta_mediachange,
		    mvneta_mediastatus);

		ifm_target = IFM_ETHER;
		switch (sc->phy_speed) {
		case 2500:
			if (sc->phy_mode != MVNETA_PHY_SGMII &&
			    sc->phy_mode != MVNETA_PHY_QSGMII) {
				FUNC15(self,
				    "2.5G speed can work only in (Q)SGMII mode\n");
				FUNC17(sc->ifp);
				FUNC26(self);
				return (ENXIO);
			}
			ifm_target |= IFM_2500_T;
			break;
		case 1000:
			ifm_target |= IFM_1000_T;
			break;
		case 100:
			ifm_target |= IFM_100_TX;
			break;
		case 10:
			ifm_target |= IFM_10_T;
			break;
		default:
			FUNC17(sc->ifp);
			FUNC26(self);
			return (ENXIO);
		}

		if (sc->phy_fdx)
			ifm_target |= IFM_FDX;
		else
			ifm_target |= IFM_HDX;

		FUNC21(&sc->mvneta_ifmedia, ifm_target, 0, NULL);
		FUNC23(&sc->mvneta_ifmedia, ifm_target);
		FUNC20(sc->ifp, LINK_STATE_UP);

		if (FUNC31(self)) {
			if (bootverbose)
				FUNC15(self, "This device is attached to a switch\n");
			child = FUNC11(sc->dev, "mdio", -1);
			if (child == NULL) {
				FUNC17(sc->ifp);
				FUNC26(self);
				return (ENXIO);
			}
			FUNC7(sc->dev);
			FUNC7(child);
		}

		/* Configure MAC media */
		FUNC41(sc, ifm_target);
	}

	FUNC42(sc);

	FUNC10(&sc->tick_ch, 0, mvneta_tick, sc);

	error = FUNC8(self, sc->res[1],
	    INTR_TYPE_NET | INTR_MPSAFE, NULL, mvneta_intrs[0].handler, sc,
	    &sc->ih_cookie[0]);
	if (error) {
		FUNC15(self, "could not setup %s\n",
		    mvneta_intrs[0].description);
		FUNC17(sc->ifp);
		FUNC26(self);
		return (error);
	}

	return (0);
}