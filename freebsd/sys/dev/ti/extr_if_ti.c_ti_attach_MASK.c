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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ti_softc {int ti_copper; int /*<<< orphan*/  ti_intrhand; int /*<<< orphan*/ * ti_irq; TYPE_1__* dev; int /*<<< orphan*/  ifmedia; int /*<<< orphan*/ * ti_membuf2; int /*<<< orphan*/ * ti_membuf; int /*<<< orphan*/ * ti_res; int /*<<< orphan*/  ti_bhandle; int /*<<< orphan*/  ti_btag; struct ifnet* ti_ifp; int /*<<< orphan*/  ti_mtx; int /*<<< orphan*/  ti_watchdog; int /*<<< orphan*/  ti_dev; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_capabilities; int if_capenable; int if_flags; int if_hdrlen; TYPE_2__ if_snd; int /*<<< orphan*/  if_baudrate; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct ti_softc* if_softc; int /*<<< orphan*/  if_hwassist; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct ti_softc* si_drv1; } ;

/* Variables and functions */
 scalar_t__ ALT_DEVICEID_ACENIC_COPPER ; 
 scalar_t__ ALT_VENDORID ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int IFCAP_LINKSTATE ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_1000_SX ; 
 int IFM_1000_T ; 
 int IFM_100_TX ; 
 int IFM_10_T ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ NG_DEVICEID_GA620T ; 
 scalar_t__ NG_VENDORID ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TI_CSUM_FEATURES ; 
 scalar_t__ TI_EE_MAC_OFFSET ; 
 scalar_t__ TI_TX_RING_CNT ; 
 int TI_WINLEN ; 
 int /*<<< orphan*/  UID_ROOT ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ti_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 void* FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ti_cdevsw ; 
 scalar_t__ FUNC26 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (struct ti_softc*) ; 
 int /*<<< orphan*/  ti_get_counter ; 
 int /*<<< orphan*/  ti_ifmedia_sts ; 
 int /*<<< orphan*/  ti_ifmedia_upd ; 
 int /*<<< orphan*/  ti_init ; 
 int /*<<< orphan*/  ti_intr ; 
 int /*<<< orphan*/  ti_ioctl ; 
 int /*<<< orphan*/  FUNC29 (struct ti_softc*,int,int) ; 
 scalar_t__ FUNC30 (struct ti_softc*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_start ; 
 int /*<<< orphan*/  FUNC31 (struct ti_softc*) ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct ifnet *ifp;
	struct ti_softc *sc;
	int error = 0, rid;
	u_char eaddr[6];

	sc = FUNC9(dev);
	sc->ti_dev = dev;

	FUNC20(&sc->ti_mtx, FUNC8(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC6(&sc->ti_watchdog, &sc->ti_mtx, 0);
	FUNC16(&sc->ifmedia, IFM_IMASK, ti_ifmedia_upd, ti_ifmedia_sts);
	ifp = sc->ti_ifp = FUNC13(IFT_ETHER);
	if (ifp == NULL) {
		FUNC11(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}
	sc->ti_ifp->if_hwassist = TI_CSUM_FEATURES;
	sc->ti_ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_RXCSUM;
	sc->ti_ifp->if_capenable = sc->ti_ifp->if_capabilities;

	/*
	 * Map control/status registers.
	 */
	FUNC21(dev);

	rid = FUNC3(0);
	sc->ti_res = FUNC4(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);

	if (sc->ti_res == NULL) {
		FUNC11(dev, "couldn't map memory\n");
		error = ENXIO;
		goto fail;
	}

	sc->ti_btag = FUNC25(sc->ti_res);
	sc->ti_bhandle = FUNC24(sc->ti_res);

	/* Allocate interrupt */
	rid = 0;

	sc->ti_irq = FUNC4(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->ti_irq == NULL) {
		FUNC11(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC26(sc)) {
		FUNC11(dev, "chip initialization failed\n");
		error = ENXIO;
		goto fail;
	}

	/* Zero out the NIC's on-board SRAM. */
	FUNC29(sc, 0x2000, 0x100000 - 0x2000);

	/* Init again -- zeroing memory may have clobbered some registers. */
	if (FUNC26(sc)) {
		FUNC11(dev, "chip initialization failed\n");
		error = ENXIO;
		goto fail;
	}

	/*
	 * Get station address from the EEPROM. Note: the manual states
	 * that the MAC address is at offset 0x8c, however the data is
	 * stored as two longwords (since that's how it's loaded into
	 * the NIC). This means the MAC address is actually preceded
	 * by two zero bytes. We need to skip over those.
	 */
	if (FUNC30(sc, eaddr, TI_EE_MAC_OFFSET + 2, ETHER_ADDR_LEN)) {
		FUNC11(dev, "failed to read station address\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate working area for memory dump. */
	sc->ti_membuf = FUNC19(sizeof(uint8_t) * TI_WINLEN, M_DEVBUF, M_NOWAIT);
	sc->ti_membuf2 = FUNC19(sizeof(uint8_t) * TI_WINLEN, M_DEVBUF,
	    M_NOWAIT);
	if (sc->ti_membuf == NULL || sc->ti_membuf2 == NULL) {
		FUNC11(dev, "cannot allocate memory buffer\n");
		error = ENOMEM;
		goto fail;
	}
	if ((error = FUNC28(sc)) != 0)
		goto fail;

	/*
	 * We really need a better way to tell a 1000baseTX card
	 * from a 1000baseSX one, since in theory there could be
	 * OEMed 1000baseTX cards from lame vendors who aren't
	 * clever enough to change the PCI ID. For the moment
	 * though, the AceNIC is the only copper card available.
	 */
	if (FUNC23(dev) == ALT_VENDORID &&
	    FUNC22(dev) == ALT_DEVICEID_ACENIC_COPPER)
		sc->ti_copper = 1;
	/* Ok, it's not the only copper card available. */
	if (FUNC23(dev) == NG_VENDORID &&
	    FUNC22(dev) == NG_DEVICEID_GA620T)
		sc->ti_copper = 1;

	/* Set default tunable values. */
	FUNC31(sc);

	/* Set up ifnet structure */
	ifp->if_softc = sc;
	FUNC14(ifp, FUNC7(dev), FUNC10(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = ti_ioctl;
	ifp->if_start = ti_start;
	ifp->if_init = ti_init;
	ifp->if_get_counter = ti_get_counter;
	ifp->if_baudrate = FUNC2(1UL);
	ifp->if_snd.ifq_drv_maxlen = TI_TX_RING_CNT - 1;
	FUNC0(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC1(&ifp->if_snd);

	/* Set up ifmedia support. */
	if (sc->ti_copper) {
		/*
		 * Copper cards allow manual 10/100 mode selection,
		 * but not manual 1000baseTX mode selection. Why?
		 * Because currently there's no way to specify the
		 * master/slave setting through the firmware interface,
		 * so Alteon decided to just bag it and handle it
		 * via autonegotiation.
		 */
		FUNC15(&sc->ifmedia, IFM_ETHER|IFM_10_T, 0, NULL);
		FUNC15(&sc->ifmedia,
		    IFM_ETHER|IFM_10_T|IFM_FDX, 0, NULL);
		FUNC15(&sc->ifmedia, IFM_ETHER|IFM_100_TX, 0, NULL);
		FUNC15(&sc->ifmedia,
		    IFM_ETHER|IFM_100_TX|IFM_FDX, 0, NULL);
		FUNC15(&sc->ifmedia, IFM_ETHER|IFM_1000_T, 0, NULL);
		FUNC15(&sc->ifmedia,
		    IFM_ETHER|IFM_1000_T|IFM_FDX, 0, NULL);
	} else {
		/* Fiber cards don't support 10/100 modes. */
		FUNC15(&sc->ifmedia, IFM_ETHER|IFM_1000_SX, 0, NULL);
		FUNC15(&sc->ifmedia,
		    IFM_ETHER|IFM_1000_SX|IFM_FDX, 0, NULL);
	}
	FUNC15(&sc->ifmedia, IFM_ETHER|IFM_AUTO, 0, NULL);
	FUNC17(&sc->ifmedia, IFM_ETHER|IFM_AUTO);

	/*
	 * We're assuming here that card initialization is a sequential
	 * thing.  If it isn't, multiple cards probing at the same time
	 * could stomp on the list of softcs here.
	 */

	/* Register the device */
	sc->dev = FUNC18(&ti_cdevsw, FUNC10(dev), UID_ROOT,
	    GID_OPERATOR, 0600, "ti%d", FUNC10(dev));
	sc->dev->si_drv1 = sc;

	/*
	 * Call MI attach routine.
	 */
	FUNC12(ifp, eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWCSUM |
	    IFCAP_VLAN_HWTAGGING;
	ifp->if_capenable = ifp->if_capabilities;
	/* Tell the upper layer we support VLAN over-sized frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Driver supports link state tracking. */
	ifp->if_capabilities |= IFCAP_LINKSTATE;
	ifp->if_capenable |= IFCAP_LINKSTATE;

	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC5(dev, sc->ti_irq, INTR_TYPE_NET|INTR_MPSAFE,
	   NULL, ti_intr, sc, &sc->ti_intrhand);

	if (error) {
		FUNC11(dev, "couldn't set up irq\n");
		goto fail;
	}

fail:
	if (error)
		FUNC27(dev);

	return (error);
}