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
typedef  int uint16_t ;
struct vte_softc {int vte_res_id; scalar_t__ vte_res_type; int /*<<< orphan*/  vte_intrhand; int /*<<< orphan*/ * vte_irq; int /*<<< orphan*/  vte_eaddr; int /*<<< orphan*/  vte_miibus; struct ifnet* vte_ifp; int /*<<< orphan*/  vte_mtx; int /*<<< orphan*/ * vte_res; int /*<<< orphan*/  vte_ident; int /*<<< orphan*/  vte_tick_ch; int /*<<< orphan*/  vte_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct vte_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC0 (struct vte_softc*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 void* FUNC3 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 scalar_t__ SYS_RES_IOPORT ; 
 scalar_t__ SYS_RES_IRQ ; 
 scalar_t__ SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VTE_MACID ; 
 int VTE_MACID_MASK ; 
 int /*<<< orphan*/  VTE_MACID_REV ; 
 int VTE_MACID_REV_MASK ; 
 int VTE_MACID_REV_SHIFT ; 
 int VTE_MACID_SHIFT ; 
 scalar_t__ VTE_TX_RING_CNT ; 
 scalar_t__ bootverbose ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vte_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct vte_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 struct ifnet* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vte_get_counter ; 
 int /*<<< orphan*/  FUNC23 (struct vte_softc*) ; 
 int /*<<< orphan*/  vte_init ; 
 int /*<<< orphan*/  vte_intr ; 
 int /*<<< orphan*/  vte_ioctl ; 
 int /*<<< orphan*/  vte_mediachange ; 
 int /*<<< orphan*/  vte_mediastatus ; 
 int /*<<< orphan*/  FUNC24 (struct vte_softc*) ; 
 int /*<<< orphan*/  vte_start ; 
 int /*<<< orphan*/  FUNC25 (struct vte_softc*) ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct vte_softc *sc;
	struct ifnet *ifp;
	uint16_t macid;
	int error, rid;

	error = 0;
	sc = FUNC9(dev);
	sc->vte_dev = dev;

	FUNC18(&sc->vte_mtx, FUNC8(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC6(&sc->vte_tick_ch, &sc->vte_mtx, 0);
	sc->vte_ident = FUNC22(dev);

	/* Map the device. */
	FUNC19(dev);
	sc->vte_res_id = FUNC3(1);
	sc->vte_res_type = SYS_RES_MEMORY;
	sc->vte_res = FUNC4(dev, sc->vte_res_type,
	    &sc->vte_res_id, RF_ACTIVE);
	if (sc->vte_res == NULL) {
		sc->vte_res_id = FUNC3(0);
		sc->vte_res_type = SYS_RES_IOPORT;
		sc->vte_res = FUNC4(dev, sc->vte_res_type,
		    &sc->vte_res_id, RF_ACTIVE);
		if (sc->vte_res == NULL) {
			FUNC11(dev, "cannot map memory/ports.\n");
			FUNC17(&sc->vte_mtx);
			return (ENXIO);
		}
	}
	if (bootverbose) {
		FUNC11(dev, "using %s space register mapping\n",
		    sc->vte_res_type == SYS_RES_MEMORY ? "memory" : "I/O");
		FUNC11(dev, "MAC Identifier : 0x%04x\n",
		    FUNC0(sc, VTE_MACID));
		macid = FUNC0(sc, VTE_MACID_REV);
		FUNC11(dev, "MAC Id. 0x%02x, Rev. 0x%02x\n",
		    (macid & VTE_MACID_MASK) >> VTE_MACID_SHIFT,
		    (macid & VTE_MACID_REV_MASK) >> VTE_MACID_REV_SHIFT);
	}

	rid = 0;
	sc->vte_irq = FUNC4(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->vte_irq == NULL) {
		FUNC11(dev, "cannot allocate IRQ resources.\n");
		error = ENXIO;
		goto fail;
	}

	/* Reset the ethernet controller. */
	FUNC24(sc);

	if ((error = FUNC21(sc)) != 0)
		goto fail;

	/* Create device sysctl node. */
	FUNC25(sc);

	/* Load station address. */
	FUNC23(sc);

	ifp = sc->vte_ifp = FUNC14(IFT_ETHER);
	if (ifp == NULL) {
		FUNC11(dev, "cannot allocate ifnet structure.\n");
		error = ENXIO;
		goto fail;
	}

	ifp->if_softc = sc;
	FUNC15(ifp, FUNC7(dev), FUNC10(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = vte_ioctl;
	ifp->if_start = vte_start;
	ifp->if_init = vte_init;
	ifp->if_get_counter = vte_get_counter;
	ifp->if_snd.ifq_drv_maxlen = VTE_TX_RING_CNT - 1;
	FUNC1(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC2(&ifp->if_snd);

	/*
	 * Set up MII bus.
	 * BIOS would have initialized VTE_MPSCCR to catch PHY
	 * status changes so driver may be able to extract
	 * configured PHY address.  Since it's common to see BIOS
	 * fails to initialize the register(including the sample
	 * board I have), let mii(4) probe it.  This is more
	 * reliable than relying on BIOS's initialization.
	 *
	 * Advertising flow control capability to mii(4) was
	 * intentionally disabled due to severe problems in TX
	 * pause frame generation.  See vte_rxeof() for more
	 * details.
	 */
	error = FUNC16(dev, &sc->vte_miibus, ifp, vte_mediachange,
	    vte_mediastatus, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC11(dev, "attaching PHYs failed\n");
		goto fail;
	}

	FUNC12(ifp, sc->vte_eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	/* Tell the upper layer we support VLAN over-sized frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	error = FUNC5(dev, sc->vte_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, vte_intr, sc, &sc->vte_intrhand);
	if (error != 0) {
		FUNC11(dev, "could not set up interrupt handler.\n");
		FUNC13(ifp);
		goto fail;
	}

fail:
	if (error != 0)
		FUNC20(dev);

	return (error);
}