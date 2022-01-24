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
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; struct et_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct et_softc {int sc_mem_rid; int sc_expcap; int sc_flags; int sc_irq_rid; int /*<<< orphan*/  sc_irq_handle; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_timer; int /*<<< orphan*/  sc_tx_intr_nsegs; int /*<<< orphan*/  sc_rx_intr_delay; int /*<<< orphan*/  sc_rx_intr_npkts; struct ifnet* ifp; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_tick; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (struct et_softc*,int /*<<< orphan*/ ,int) ; 
 int EM_PM_GIGEPHY_ENB ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int ET_FLAG_FASTETHER ; 
 int ET_FLAG_MSI ; 
 int ET_FLAG_PCIE ; 
 int /*<<< orphan*/  ET_PM ; 
 int ET_PM_RXCLK_GATE ; 
 int ET_PM_SYSCLK_GATE ; 
 int ET_PM_TXCLK_GATE ; 
 scalar_t__ ET_TX_NDESC ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 scalar_t__ PCI_PRODUCT_LUCENT_ET1310_FAST ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct et_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct et_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct et_softc*) ; 
 int FUNC13 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct et_softc*) ; 
 int /*<<< orphan*/  et_get_counter ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  et_ifmedia_sts ; 
 int /*<<< orphan*/  et_ifmedia_upd ; 
 int /*<<< orphan*/  et_init ; 
 int /*<<< orphan*/  et_intr ; 
 int /*<<< orphan*/  et_ioctl ; 
 int /*<<< orphan*/  FUNC18 (struct et_softc*) ; 
 int /*<<< orphan*/  et_rx_intr_delay ; 
 int /*<<< orphan*/  et_rx_intr_npkts ; 
 int /*<<< orphan*/  et_start ; 
 int /*<<< orphan*/  et_timer ; 
 int /*<<< orphan*/  et_tx_intr_nsegs ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*) ; 
 struct ifnet* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ msi_disable ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC31(device_t dev)
{
	struct et_softc *sc;
	struct ifnet *ifp;
	uint8_t eaddr[ETHER_ADDR_LEN];
	uint32_t pmcfg;
	int cap, error, msic;

	sc = FUNC9(dev);
	sc->dev = dev;
	FUNC24(&sc->sc_mtx, FUNC8(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC6(&sc->sc_tick, &sc->sc_mtx, 0);

	ifp = sc->ifp = FUNC21(IFT_ETHER);
	if (ifp == NULL) {
		FUNC11(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}

	/*
	 * Initialize tunables
	 */
	sc->sc_rx_intr_npkts = et_rx_intr_npkts;
	sc->sc_rx_intr_delay = et_rx_intr_delay;
	sc->sc_tx_intr_nsegs = et_tx_intr_nsegs;
	sc->sc_timer = et_timer;

	/* Enable bus mastering */
	FUNC26(dev);

	/*
	 * Allocate IO memory
	 */
	sc->sc_mem_rid = FUNC3(0);
	sc->sc_mem_res = FUNC4(dev, SYS_RES_MEMORY,
	    &sc->sc_mem_rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC11(dev, "can't allocate IO memory\n");
		return (ENXIO);
	}

	msic = 0;
	if (FUNC27(dev, PCIY_EXPRESS, &cap) == 0) {
		sc->sc_expcap = cap;
		sc->sc_flags |= ET_FLAG_PCIE;
		msic = FUNC29(dev);
		if (bootverbose)
			FUNC11(dev, "MSI count: %d\n", msic);
	}
	if (msic > 0 && msi_disable == 0) {
		msic = 1;
		if (FUNC25(dev, &msic) == 0) {
			if (msic == 1) {
				FUNC11(dev, "Using %d MSI message\n",
				    msic);
				sc->sc_flags |= ET_FLAG_MSI;
			} else
				FUNC30(dev);
		}
	}

	/*
	 * Allocate IRQ
	 */
	if ((sc->sc_flags & ET_FLAG_MSI) == 0) {
		sc->sc_irq_rid = 0;
		sc->sc_irq_res = FUNC4(dev, SYS_RES_IRQ,
		    &sc->sc_irq_rid, RF_SHAREABLE | RF_ACTIVE);
	} else {
		sc->sc_irq_rid = 1;
		sc->sc_irq_res = FUNC4(dev, SYS_RES_IRQ,
		    &sc->sc_irq_rid, RF_ACTIVE);
	}
	if (sc->sc_irq_res == NULL) {
		FUNC11(dev, "can't allocate irq\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC28(dev) == PCI_PRODUCT_LUCENT_ET1310_FAST)
		sc->sc_flags |= ET_FLAG_FASTETHER;

	error = FUNC13(sc);
	if (error)
		goto fail;

	FUNC17(dev, eaddr);

	/* Take PHY out of COMA and enable clocks. */
	pmcfg = ET_PM_SYSCLK_GATE | ET_PM_TXCLK_GATE | ET_PM_RXCLK_GATE;
	if ((sc->sc_flags & ET_FLAG_FASTETHER) == 0)
		pmcfg |= EM_PM_GIGEPHY_ENB;
	FUNC0(sc, ET_PM, pmcfg);

	FUNC18(sc);

	error = FUNC16(sc);
	if (error)
		goto fail;

	ifp->if_softc = sc;
	FUNC22(ifp, FUNC7(dev), FUNC10(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_init = et_init;
	ifp->if_ioctl = et_ioctl;
	ifp->if_start = et_start;
	ifp->if_get_counter = et_get_counter;
	ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_snd.ifq_drv_maxlen = ET_TX_NDESC - 1;
	FUNC1(&ifp->if_snd, ET_TX_NDESC - 1);
	FUNC2(&ifp->if_snd);

	FUNC14(sc);

	error = FUNC23(dev, &sc->sc_miibus, ifp, et_ifmedia_upd,
	    et_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY,
	    MIIF_DOPAUSE);
	if (error) {
		FUNC11(dev, "attaching PHYs failed\n");
		goto fail;
	}

	FUNC19(ifp, eaddr);

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	error = FUNC5(dev, sc->sc_irq_res, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, et_intr, sc, &sc->sc_irq_handle);
	if (error) {
		FUNC20(ifp);
		FUNC11(dev, "can't setup intr\n");
		goto fail;
	}

	FUNC12(sc);

	return (0);
fail:
	FUNC15(dev);
	return (error);
}