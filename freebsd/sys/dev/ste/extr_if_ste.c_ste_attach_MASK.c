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
typedef  int /*<<< orphan*/  uint16_t ;
struct ste_softc {int ste_flags; int ste_res_id; int /*<<< orphan*/  ste_intrhand; int /*<<< orphan*/ * ste_irq; int /*<<< orphan*/  ste_tx_thresh; int /*<<< orphan*/  ste_miibus; struct ifnet* ste_ifp; int /*<<< orphan*/  ste_mtx; int /*<<< orphan*/  ste_callout; int /*<<< orphan*/ * ste_res; int /*<<< orphan*/  ste_res_type; int /*<<< orphan*/  ste_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct ste_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 scalar_t__ DL_DEVICEID_DL10050 ; 
 scalar_t__ DL_VENDORID ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int /*<<< orphan*/  IFCAP_WOL_MAGIC ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  STE_EEADDR_NODE0 ; 
 int STE_FLAG_ONE_PHY ; 
 int /*<<< orphan*/  STE_TXSTART_THRESH ; 
 scalar_t__ STE_TX_LIST_CNT ; 
 scalar_t__ ST_DEVICEID_ST201_1 ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ste_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ste_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 struct ifnet* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (struct ste_softc*) ; 
 int /*<<< orphan*/  ste_ifmedia_sts ; 
 int /*<<< orphan*/  ste_ifmedia_upd ; 
 int /*<<< orphan*/  ste_init ; 
 int /*<<< orphan*/  ste_intr ; 
 int /*<<< orphan*/  ste_ioctl ; 
 scalar_t__ FUNC25 (struct ste_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct ste_softc*) ; 
 int /*<<< orphan*/  ste_start ; 
 int /*<<< orphan*/  FUNC27 (struct ste_softc*) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct ste_softc *sc;
	struct ifnet *ifp;
	uint16_t eaddr[ETHER_ADDR_LEN / 2];
	int error = 0, phy, pmc, prefer_iomap, rid;

	sc = FUNC8(dev);
	sc->ste_dev = dev;

	/*
	 * Only use one PHY since this chip reports multiple
	 * Note on the DFE-550 the PHY is at 1 on the DFE-580
	 * it is at 0 & 1.  It is rev 0x12.
	 */
	if (FUNC21(dev) == DL_VENDORID &&
	    FUNC19(dev) == DL_DEVICEID_DL10050 &&
	    FUNC20(dev) == 0x12 )
		sc->ste_flags |= STE_FLAG_ONE_PHY;

	FUNC16(&sc->ste_mtx, FUNC7(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	/*
	 * Map control/status registers.
	 */
	FUNC17(dev);

	/*
	 * Prefer memory space register mapping over IO space but use
	 * IO space for a device that is known to have issues on memory
	 * mapping.
	 */
	prefer_iomap = 0;
	if (FUNC19(dev) == ST_DEVICEID_ST201_1)
		prefer_iomap = 1;
	else
		FUNC22(FUNC6(sc->ste_dev),
		    FUNC9(sc->ste_dev), "prefer_iomap",
		    &prefer_iomap);
	if (prefer_iomap == 0) {
		sc->ste_res_id = FUNC2(1);
		sc->ste_res_type = SYS_RES_MEMORY;
		sc->ste_res = FUNC3(dev, sc->ste_res_type,
		    &sc->ste_res_id, RF_ACTIVE);
	}
	if (prefer_iomap || sc->ste_res == NULL) {
		sc->ste_res_id = FUNC2(0);
		sc->ste_res_type = SYS_RES_IOPORT;
		sc->ste_res = FUNC3(dev, sc->ste_res_type,
		    &sc->ste_res_id, RF_ACTIVE);
	}
	if (sc->ste_res == NULL) {
		FUNC10(dev, "couldn't map ports/memory\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate interrupt */
	rid = 0;
	sc->ste_irq = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->ste_irq == NULL) {
		FUNC10(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	FUNC5(&sc->ste_callout, &sc->ste_mtx, 0);

	/* Reset the adapter. */
	FUNC26(sc);

	/*
	 * Get station address from the EEPROM.
	 */
	if (FUNC25(sc, eaddr, STE_EEADDR_NODE0, ETHER_ADDR_LEN / 2)) {
		FUNC10(dev, "failed to read station address\n");
		error = ENXIO;
		goto fail;
	}
	FUNC27(sc);

	if ((error = FUNC24(sc)) != 0)
		goto fail;

	ifp = sc->ste_ifp = FUNC13(IFT_ETHER);
	if (ifp == NULL) {
		FUNC10(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}

	/* Do MII setup. */
	phy = MII_PHY_ANY;
	if ((sc->ste_flags & STE_FLAG_ONE_PHY) != 0)
		phy = 0;
	error = FUNC15(dev, &sc->ste_miibus, ifp, ste_ifmedia_upd,
		ste_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC10(dev, "attaching PHYs failed\n");
		goto fail;
	}

	ifp->if_softc = sc;
	FUNC14(ifp, FUNC6(dev), FUNC9(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = ste_ioctl;
	ifp->if_start = ste_start;
	ifp->if_init = ste_init;
	FUNC0(&ifp->if_snd, STE_TX_LIST_CNT - 1);
	ifp->if_snd.ifq_drv_maxlen = STE_TX_LIST_CNT - 1;
	FUNC1(&ifp->if_snd);

	sc->ste_tx_thresh = STE_TXSTART_THRESH;

	/*
	 * Call MI attach routine.
	 */
	FUNC11(ifp, (uint8_t *)eaddr);

	/*
	 * Tell the upper layer(s) we support long frames.
	 */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	if (FUNC18(dev, PCIY_PMG, &pmc) == 0)
		ifp->if_capabilities |= IFCAP_WOL_MAGIC;
	ifp->if_capenable = ifp->if_capabilities;
#ifdef DEVICE_POLLING
	ifp->if_capabilities |= IFCAP_POLLING;
#endif

	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC4(dev, sc->ste_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, ste_intr, sc, &sc->ste_intrhand);

	if (error) {
		FUNC10(dev, "couldn't set up irq\n");
		FUNC12(ifp);
		goto fail;
	}

fail:
	if (error)
		FUNC23(dev);

	return (error);
}