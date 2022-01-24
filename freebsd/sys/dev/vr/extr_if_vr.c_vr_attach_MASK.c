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
typedef  int uint8_t ;
struct vr_type {int vr_quirks; } ;
struct vr_softc {int vr_quirks; scalar_t__ vr_revid; int vr_res_id; int /*<<< orphan*/  vr_intrhand; int /*<<< orphan*/ * vr_irq; int /*<<< orphan*/  vr_miibus; void* vr_txthresh; int /*<<< orphan*/  vr_inttask; struct ifnet* vr_ifp; int /*<<< orphan*/ * vr_res; int /*<<< orphan*/  vr_res_type; int /*<<< orphan*/  vr_mtx; int /*<<< orphan*/  vr_stat_callout; int /*<<< orphan*/  vr_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; int /*<<< orphan*/  if_hwassist; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct vr_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC0 (struct vr_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_UCAST ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 scalar_t__ REV_ID_VT6102_A ; 
 scalar_t__ REV_ID_VT6105M_A0 ; 
 scalar_t__ REV_ID_VT6105_A0 ; 
 scalar_t__ REV_ID_VT6105_LOM ; 
 scalar_t__ REV_ID_VT6107_A1 ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct vr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VR_CSUM_FEATURES ; 
 scalar_t__ VR_EECSR ; 
 int VR_EECSR_LOAD ; 
 int /*<<< orphan*/  VR_IMR ; 
 int /*<<< orphan*/  VR_ISR ; 
 int /*<<< orphan*/  VR_MIICMD ; 
 int VR_MIICMD_AUTOPOLL ; 
 int /*<<< orphan*/  VR_MII_IMR ; 
 int VR_MODE2_MODE10T ; 
 int VR_MODE2_MRDPL ; 
 int VR_MODE2_PCEROPT ; 
 int VR_MODE3_MIION ; 
 scalar_t__ VR_PAR0 ; 
 int /*<<< orphan*/  VR_PCI_MODE2 ; 
 int /*<<< orphan*/  VR_PCI_MODE3 ; 
 scalar_t__ VR_PHYADDR ; 
 int VR_PHYADDR_MASK ; 
 int VR_Q_CSUM ; 
 int /*<<< orphan*/  FUNC11 (struct vr_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  VR_STICKHW ; 
 int VR_STICKHW_DS0 ; 
 int VR_STICKHW_DS1 ; 
 int VR_TIMEOUT ; 
 void* VR_TXTHRESH_MAX ; 
 void* VR_TXTHRESH_MIN ; 
 scalar_t__ VR_TX_RING_CNT ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct vr_softc* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (struct ifnet*,int*) ; 
 int /*<<< orphan*/  FUNC23 (struct ifnet*) ; 
 struct ifnet* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (struct vr_softc*) ; 
 int /*<<< orphan*/  vr_ifmedia_sts ; 
 int /*<<< orphan*/  vr_ifmedia_upd ; 
 int /*<<< orphan*/  vr_init ; 
 int /*<<< orphan*/  vr_int_task ; 
 int /*<<< orphan*/  vr_intr ; 
 int /*<<< orphan*/  vr_ioctl ; 
 struct vr_type* FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct vr_softc*) ; 
 int /*<<< orphan*/  vr_start ; 
 int /*<<< orphan*/  vr_sysctl_stats ; 

__attribute__((used)) static int
FUNC37(device_t dev)
{
	struct vr_softc		*sc;
	struct ifnet		*ifp;
	const struct vr_type	*t;
	uint8_t			eaddr[ETHER_ADDR_LEN];
	int			error, rid;
	int			i, phy, pmc;

	sc = FUNC17(dev);
	sc->vr_dev = dev;
	t = FUNC35(dev);
	FUNC5(t != NULL, ("Lost if_vr device match"));
	sc->vr_quirks = t->vr_quirks;
	FUNC21(dev, "Quirks: 0x%x\n", sc->vr_quirks);

	FUNC27(&sc->vr_mtx, FUNC16(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC14(&sc->vr_stat_callout, &sc->vr_mtx, 0);
	FUNC7(FUNC18(dev),
	    FUNC8(FUNC19(dev)),
	    OID_AUTO, "stats", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    vr_sysctl_stats, "I", "Statistics");

	error = 0;

	/*
	 * Map control/status registers.
	 */
	FUNC28(dev);
	sc->vr_revid = FUNC30(dev);
	FUNC21(dev, "Revision: 0x%x\n", sc->vr_revid);

	sc->vr_res_id = FUNC6(0);
	sc->vr_res_type = SYS_RES_IOPORT;
	sc->vr_res = FUNC12(dev, sc->vr_res_type,
	    &sc->vr_res_id, RF_ACTIVE);
	if (sc->vr_res == NULL) {
		FUNC21(dev, "couldn't map ports\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate interrupt. */
	rid = 0;
	sc->vr_irq = FUNC12(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->vr_irq == NULL) {
		FUNC21(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate ifnet structure. */
	ifp = sc->vr_ifp = FUNC24(IFT_ETHER);
	if (ifp == NULL) {
		FUNC21(dev, "couldn't allocate ifnet structure\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC25(ifp, FUNC15(dev), FUNC20(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = vr_ioctl;
	ifp->if_start = vr_start;
	ifp->if_init = vr_init;
	FUNC3(&ifp->if_snd, VR_TX_RING_CNT - 1);
	ifp->if_snd.ifq_maxlen = VR_TX_RING_CNT - 1;
	FUNC4(&ifp->if_snd);

	FUNC9(&sc->vr_inttask, 0, vr_int_task, sc);

	/* Configure Tx FIFO threshold. */
	sc->vr_txthresh = VR_TXTHRESH_MIN;
	if (sc->vr_revid < REV_ID_VT6105_A0) {
		/*
		 * Use store and forward mode for Rhine I/II.
		 * Otherwise they produce a lot of Tx underruns and
		 * it would take a while to get working FIFO threshold
		 * value.
		 */
		sc->vr_txthresh = VR_TXTHRESH_MAX;
	}
	if ((sc->vr_quirks & VR_Q_CSUM) != 0) {
		ifp->if_hwassist = VR_CSUM_FEATURES;
		ifp->if_capabilities |= IFCAP_HWCSUM;
		/*
		 * To update checksum field the hardware may need to
		 * store entire frames into FIFO before transmitting.
		 */
		sc->vr_txthresh = VR_TXTHRESH_MAX;
	}

	if (sc->vr_revid >= REV_ID_VT6102_A &&
	    FUNC29(dev, PCIY_PMG, &pmc) == 0)
		ifp->if_capabilities |= IFCAP_WOL_UCAST | IFCAP_WOL_MAGIC;

	/* Rhine supports oversized VLAN frame. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
#ifdef DEVICE_POLLING
	ifp->if_capabilities |= IFCAP_POLLING;
#endif

	/*
	 * Windows may put the chip in suspend mode when it
	 * shuts down. Be sure to kick it in the head to wake it
	 * up again.
	 */
	if (FUNC29(dev, PCIY_PMG, &pmc) == 0)
		FUNC10(sc, VR_STICKHW, (VR_STICKHW_DS0|VR_STICKHW_DS1));

	/*
	 * Get station address. The way the Rhine chips work,
	 * you're not allowed to directly access the EEPROM once
	 * they've been programmed a special way. Consequently,
	 * we need to read the node address from the PAR0 and PAR1
	 * registers.
	 * Reloading EEPROM also overwrites VR_CFGA, VR_CFGB,
	 * VR_CFGC and VR_CFGD such that memory mapped IO configured
	 * by driver is reset to default state.
	 */
	FUNC11(sc, VR_EECSR, VR_EECSR_LOAD);
	for (i = VR_TIMEOUT; i > 0; i--) {
		FUNC2(1);
		if ((FUNC0(sc, VR_EECSR) & VR_EECSR_LOAD) == 0)
			break;
	}
	if (i == 0)
		FUNC21(dev, "Reloading EEPROM timeout!\n");
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		eaddr[i] = FUNC0(sc, VR_PAR0 + i);

	/* Reset the adapter. */
	FUNC36(sc);
	/* Ack intr & disable further interrupts. */
	FUNC1(sc, VR_ISR, 0xFFFF);
	FUNC1(sc, VR_IMR, 0);
	if (sc->vr_revid >= REV_ID_VT6102_A)
		FUNC1(sc, VR_MII_IMR, 0);

	if (sc->vr_revid < REV_ID_VT6102_A) {
		FUNC32(dev, VR_PCI_MODE2,
		    FUNC31(dev, VR_PCI_MODE2, 1) |
		    VR_MODE2_MODE10T, 1);
	} else {
		/* Report error instead of retrying forever. */
		FUNC32(dev, VR_PCI_MODE2,
		    FUNC31(dev, VR_PCI_MODE2, 1) |
		    VR_MODE2_PCEROPT, 1);
        	/* Detect MII coding error. */
		FUNC32(dev, VR_PCI_MODE3,
		    FUNC31(dev, VR_PCI_MODE3, 1) |
		    VR_MODE3_MIION, 1);
		if (sc->vr_revid >= REV_ID_VT6105_LOM &&
		    sc->vr_revid < REV_ID_VT6105M_A0)
			FUNC32(dev, VR_PCI_MODE2,
			    FUNC31(dev, VR_PCI_MODE2, 1) |
			    VR_MODE2_MODE10T, 1);
		/* Enable Memory-Read-Multiple. */
		if (sc->vr_revid >= REV_ID_VT6107_A1 &&
		    sc->vr_revid < REV_ID_VT6105M_A0)
			FUNC32(dev, VR_PCI_MODE2,
			    FUNC31(dev, VR_PCI_MODE2, 1) |
			    VR_MODE2_MRDPL, 1);
	}
	/* Disable MII AUTOPOLL. */
	FUNC10(sc, VR_MIICMD, VR_MIICMD_AUTOPOLL);

	if (FUNC34(sc) != 0) {
		error = ENXIO;
		goto fail;
	}

	/* Do MII setup. */
	if (sc->vr_revid >= REV_ID_VT6105_A0)
		phy = 1;
	else
		phy = FUNC0(sc, VR_PHYADDR) & VR_PHYADDR_MASK;
	error = FUNC26(dev, &sc->vr_miibus, ifp, vr_ifmedia_upd,
	    vr_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY,
	    sc->vr_revid >= REV_ID_VT6102_A ? MIIF_DOPAUSE : 0);
	if (error != 0) {
		FUNC21(dev, "attaching PHYs failed\n");
		goto fail;
	}

	/* Call MI attach routine. */
	FUNC22(ifp, eaddr);
	/*
	 * Tell the upper layer(s) we support long frames.
	 * Must appear after the call to ether_ifattach() because
	 * ether_ifattach() sets ifi_hdrlen to the default value.
	 */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Hook interrupt last to avoid having to lock softc. */
	error = FUNC13(dev, sc->vr_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    vr_intr, NULL, sc, &sc->vr_intrhand);

	if (error) {
		FUNC21(dev, "couldn't set up irq\n");
		FUNC23(ifp);
		goto fail;
	}

fail:
	if (error)
		FUNC33(dev);

	return (error);
}