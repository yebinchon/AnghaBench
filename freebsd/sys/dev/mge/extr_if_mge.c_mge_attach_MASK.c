#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct mii_softc {int /*<<< orphan*/  mii_phy; } ;
struct mge_softc {int phy_attached; int switch_attached; int rx_ic_time; int tx_ic_time; int mge_intr_cnt; int /*<<< orphan*/ * ih_cookie; int /*<<< orphan*/ * res; int /*<<< orphan*/  mge_ifmedia; TYPE_1__* mii; int /*<<< orphan*/  miibus; struct ifnet* ifp; int /*<<< orphan*/  wd_callout; scalar_t__ mge_hw_csum; scalar_t__ tx_desc_used_count; scalar_t__ tx_desc_used_idx; scalar_t__ rx_desc_curr; scalar_t__ tx_desc_curr; int /*<<< orphan*/  receive_lock; int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/  node; struct mge_softc* phy_sc; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_3__ if_snd; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_hwassist; struct mge_softc* if_softc; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  description; int /*<<< orphan*/ * handler; } ;
struct TYPE_5__ {int /*<<< orphan*/  mii_phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_HWCSUM ; 
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_1000_T ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 struct mii_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MGE_CHECKSUM_FEATURES ; 
 int /*<<< orphan*/  MGE_REG_PHYDEV ; 
 int /*<<< orphan*/  MGE_SWITCH_PHYDEV ; 
 scalar_t__ MGE_TX_DESC_NUM ; 
 int /*<<< orphan*/  FUNC3 (struct mge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,void**) ; 
 struct ifnet* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (struct mge_softc*) ; 
 int FUNC24 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct mge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mge_ifmedia_sts ; 
 int /*<<< orphan*/  mge_ifmedia_upd ; 
 int /*<<< orphan*/  mge_init ; 
 TYPE_2__* mge_intrs ; 
 int /*<<< orphan*/  mge_ioctl ; 
 int /*<<< orphan*/  mge_start ; 
 int /*<<< orphan*/  FUNC27 (struct mge_softc*) ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  res_spec ; 
 int switch_attached ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  sx_smi ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct mge_softc *sc;
	struct mii_softc *miisc;
	struct ifnet *ifp;
	uint8_t hwaddr[ETHER_ADDR_LEN];
	int i, error, phy;

	sc = FUNC11(dev);
	sc->dev = dev;
	sc->node = FUNC30(dev);
	phy = 0;

	if (FUNC16(sc->node, sc->dev, &phy, (void **)&sc->phy_sc) == 0) {
		FUNC13(dev, "PHY%i attached, phy_sc points to %s\n", phy,
		    FUNC10(sc->phy_sc->dev));
		sc->phy_attached = 1;
	} else {
		FUNC13(dev, "PHY not attached.\n");
		sc->phy_attached = 0;
		sc->phy_sc = sc;
	}

	if (FUNC15(sc->node, "mrvl,sw", 1) != 0) {
		FUNC13(dev, "Switch attached.\n");
		sc->switch_attached = 1;
		/* additional variable available across instances */
		switch_attached = 1;
	} else {
		sc->switch_attached = 0;
	}

	if (FUNC12(dev) == 0) {
		FUNC31(&sx_smi, "mge_tick() SMI access threads interlock");
	}

	/* Set chip version-dependent parameters */
	FUNC27(sc);

	/* Initialize mutexes */
	FUNC29(&sc->transmit_lock, FUNC10(dev), "mge TX lock",
	    MTX_DEF);
	FUNC29(&sc->receive_lock, FUNC10(dev), "mge RX lock",
	    MTX_DEF);

	/* Allocate IO and IRQ resources */
	error = FUNC4(dev, res_spec, sc->res);
	if (error) {
		FUNC13(dev, "could not allocate resources\n");
		FUNC25(dev);
		return (ENXIO);
	}

	/* Allocate DMA, buffers, buffer descriptors */
	error = FUNC24(sc);
	if (error) {
		FUNC25(dev);
		return (ENXIO);
	}

	sc->tx_desc_curr = 0;
	sc->rx_desc_curr = 0;
	sc->tx_desc_used_idx = 0;
	sc->tx_desc_used_count = 0;

	/* Configure defaults for interrupts coalescing */
	sc->rx_ic_time = 768;
	sc->tx_ic_time = 768;
	FUNC23(sc);

	/* Allocate network interface */
	ifp = sc->ifp = FUNC17(IFT_ETHER);
	if (ifp == NULL) {
		FUNC13(dev, "if_alloc() failed\n");
		FUNC25(dev);
		return (ENOMEM);
	}

	FUNC19(ifp, FUNC9(dev), FUNC12(dev));
	ifp->if_softc = sc;
	ifp->if_flags = IFF_SIMPLEX | IFF_MULTICAST | IFF_BROADCAST;
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	if (sc->mge_hw_csum) {
		ifp->if_capabilities |= IFCAP_HWCSUM;
		ifp->if_hwassist = MGE_CHECKSUM_FEATURES;
	}
	ifp->if_capenable = ifp->if_capabilities;

#ifdef DEVICE_POLLING
	/* Advertise that polling is supported */
	ifp->if_capabilities |= IFCAP_POLLING;
#endif

	ifp->if_init = mge_init;
	ifp->if_start = mge_start;
	ifp->if_ioctl = mge_ioctl;

	ifp->if_snd.ifq_drv_maxlen = MGE_TX_DESC_NUM - 1;
	FUNC0(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC1(&ifp->if_snd);

	FUNC26(sc, hwaddr);
	FUNC14(ifp, hwaddr);
	FUNC7(&sc->wd_callout, 0);

	/* Attach PHY(s) */
	if (sc->phy_attached) {
		error = FUNC28(dev, &sc->miibus, ifp, mge_ifmedia_upd,
		    mge_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
		if (error) {
			FUNC13(dev, "MII failed to find PHY\n");
			FUNC18(ifp);
			sc->ifp = NULL;
			FUNC25(dev);
			return (error);
		}
		sc->mii = FUNC11(sc->miibus);

		/* Tell the MAC where to find the PHY so autoneg works */
		miisc = FUNC2(&sc->mii->mii_phys);
		FUNC3(sc, MGE_REG_PHYDEV, miisc->mii_phy);
	} else {
		/* no PHY, so use hard-coded values */
		FUNC21(&sc->mge_ifmedia, 0,
		    mge_ifmedia_upd,
		    mge_ifmedia_sts);
		FUNC20(&sc->mge_ifmedia,
		    IFM_ETHER | IFM_1000_T | IFM_FDX,
		    0, NULL);
		FUNC22(&sc->mge_ifmedia,
		    IFM_ETHER | IFM_1000_T | IFM_FDX);
	}

	/* Attach interrupt handlers */
	/* TODO: review flags, in part. mark RX as INTR_ENTROPY ? */
	for (i = 1; i <= sc->mge_intr_cnt; ++i) {
		error = FUNC6(dev, sc->res[i],
		    INTR_TYPE_NET | INTR_MPSAFE,
		    NULL, *mge_intrs[(sc->mge_intr_cnt == 1 ? 0 : i)].handler,
		    sc, &sc->ih_cookie[i - 1]);
		if (error) {
			FUNC13(dev, "could not setup %s\n",
			    mge_intrs[(sc->mge_intr_cnt == 1 ? 0 : i)].description);
			FUNC25(dev);
			return (error);
		}
	}

	if (sc->switch_attached) {
		device_t child;
		FUNC3(sc, MGE_REG_PHYDEV, MGE_SWITCH_PHYDEV);
		child = FUNC8(dev, "mdio", -1);
		FUNC5(dev);
	}

	return (0);
}