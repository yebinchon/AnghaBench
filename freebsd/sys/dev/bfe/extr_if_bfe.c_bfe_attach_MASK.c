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
struct TYPE_3__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_capabilities; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct bfe_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct bfe_softc {int /*<<< orphan*/  bfe_intrhand; int /*<<< orphan*/ * bfe_irq; int /*<<< orphan*/  bfe_enaddr; int /*<<< orphan*/  bfe_phyaddr; int /*<<< orphan*/  bfe_miibus; struct ifnet* bfe_ifp; int /*<<< orphan*/ * bfe_res; int /*<<< orphan*/  bfe_dev; int /*<<< orphan*/  bfe_mtx; int /*<<< orphan*/  bfe_stat_co; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  BFE_TX_QLEN ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct bfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC7 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bfe_softc*) ; 
 int /*<<< orphan*/  bfe_ifmedia_sts ; 
 int /*<<< orphan*/  bfe_ifmedia_upd ; 
 int /*<<< orphan*/  bfe_init ; 
 int /*<<< orphan*/  bfe_intr ; 
 int /*<<< orphan*/  bfe_ioctl ; 
 int /*<<< orphan*/  bfe_start ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct bfe_softc* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_bfe_stats ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct ifnet *ifp = NULL;
	struct bfe_softc *sc;
	int error = 0, rid;

	sc = FUNC16(dev);
	FUNC25(&sc->bfe_mtx, FUNC15(dev), MTX_NETWORK_LOCK,
			MTX_DEF);
	FUNC13(&sc->bfe_stat_co, &sc->bfe_mtx, 0);

	sc->bfe_dev = dev;

	/*
	 * Map control/status registers.
	 */
	FUNC26(dev);

	rid = FUNC4(0);
	sc->bfe_res = FUNC11(dev, SYS_RES_MEMORY, &rid,
			RF_ACTIVE);
	if (sc->bfe_res == NULL) {
		FUNC20(dev, "couldn't map memory\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate interrupt */
	rid = 0;

	sc->bfe_irq = FUNC11(dev, SYS_RES_IRQ, &rid,
			RF_SHAREABLE | RF_ACTIVE);
	if (sc->bfe_irq == NULL) {
		FUNC20(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC9(sc) != 0) {
		FUNC20(dev, "failed to allocate DMA resources\n");
		error = ENXIO;
		goto fail;
	}

	FUNC5(FUNC17(dev),
	    FUNC6(FUNC18(dev)), OID_AUTO,
	    "stats", CTLTYPE_INT | CTLFLAG_RW, sc, 0, sysctl_bfe_stats,
	    "I", "Statistics");

	/* Set up ifnet structure */
	ifp = sc->bfe_ifp = FUNC22(IFT_ETHER);
	if (ifp == NULL) {
		FUNC20(dev, "failed to if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC23(ifp, FUNC14(dev), FUNC19(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = bfe_ioctl;
	ifp->if_start = bfe_start;
	ifp->if_init = bfe_init;
	FUNC2(&ifp->if_snd, BFE_TX_QLEN);
	ifp->if_snd.ifq_drv_maxlen = BFE_TX_QLEN;
	FUNC3(&ifp->if_snd);

	FUNC10(sc);

	/* Reset the chip and turn on the PHY */
	FUNC0(sc);
	FUNC7(sc);
	FUNC1(sc);

	error = FUNC24(dev, &sc->bfe_miibus, ifp, bfe_ifmedia_upd,
	    bfe_ifmedia_sts, BMSR_DEFCAPMASK, sc->bfe_phyaddr, MII_OFFSET_ANY,
	    0);
	if (error != 0) {
		FUNC20(dev, "attaching PHYs failed\n");
		goto fail;
	}

	FUNC21(ifp, sc->bfe_enaddr);

	/*
	 * Tell the upper layer(s) we support long frames.
	 */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable |= IFCAP_VLAN_MTU;

	/*
	 * Hook interrupt last to avoid having to lock softc
	 */
	error = FUNC12(dev, sc->bfe_irq, INTR_TYPE_NET | INTR_MPSAFE,
			NULL, bfe_intr, sc, &sc->bfe_intrhand);

	if (error) {
		FUNC20(dev, "couldn't set up irq\n");
		goto fail;
	}
fail:
	if (error != 0)
		FUNC8(dev);
	return (error);
}