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
typedef  int /*<<< orphan*/  u_char ;
struct vge_softc {int vge_flags; int vge_expcap; int vge_pmcap; int vge_phyaddr; int /*<<< orphan*/  vge_intrhand; int /*<<< orphan*/ * vge_irq; int /*<<< orphan*/  vge_miibus; struct ifnet* vge_ifp; int /*<<< orphan*/ * vge_res; int /*<<< orphan*/  vge_mtx; int /*<<< orphan*/  vge_watchdog; int /*<<< orphan*/  vge_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct vge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VGE_CHIPCFG0 ; 
 int /*<<< orphan*/  VGE_CHIPCFG0_PACPI ; 
 int /*<<< orphan*/  VGE_CSUM_FEATURES ; 
 int /*<<< orphan*/  VGE_EECSR ; 
 int VGE_EECSR_RELOAD ; 
 int /*<<< orphan*/  VGE_EE_EADDR ; 
 int VGE_FLAG_JUMBO ; 
 int VGE_FLAG_MSI ; 
 int VGE_FLAG_PCIE ; 
 int VGE_FLAG_PMCAP ; 
 int /*<<< orphan*/  VGE_MIICFG ; 
 int VGE_MIICFG_PHYADDR ; 
 int VGE_TIMEOUT ; 
 scalar_t__ VGE_TX_DESC_CNT ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct vge_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 struct ifnet* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ msi_disable ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (struct vge_softc*) ; 
 int /*<<< orphan*/  vge_ifmedia_sts ; 
 int /*<<< orphan*/  vge_ifmedia_upd ; 
 int /*<<< orphan*/  vge_init ; 
 int /*<<< orphan*/  vge_intr ; 
 int /*<<< orphan*/  vge_ioctl ; 
 int /*<<< orphan*/  FUNC29 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC30 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct vge_softc*) ; 
 int /*<<< orphan*/  vge_start ; 
 int /*<<< orphan*/  FUNC32 (struct vge_softc*) ; 

__attribute__((used)) static int
FUNC33(device_t dev)
{
	u_char eaddr[ETHER_ADDR_LEN];
	struct vge_softc *sc;
	struct ifnet *ifp;
	int error = 0, cap, i, msic, rid;

	sc = FUNC12(dev);
	sc->vge_dev = dev;

	FUNC20(&sc->vge_mtx, FUNC11(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC9(&sc->vge_watchdog, &sc->vge_mtx, 0);

	/*
	 * Map control/status registers.
	 */
	FUNC22(dev);

	rid = FUNC6(1);
	sc->vge_res = FUNC7(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);

	if (sc->vge_res == NULL) {
		FUNC14(dev, "couldn't map ports/memory\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC23(dev, PCIY_EXPRESS, &cap) == 0) {
		sc->vge_flags |= VGE_FLAG_PCIE;
		sc->vge_expcap = cap;
	} else
		sc->vge_flags |= VGE_FLAG_JUMBO;
	if (FUNC23(dev, PCIY_PMG, &cap) == 0) {
		sc->vge_flags |= VGE_FLAG_PMCAP;
		sc->vge_pmcap = cap;
	}
	rid = 0;
	msic = FUNC24(dev);
	if (msi_disable == 0 && msic > 0) {
		msic = 1;
		if (FUNC21(dev, &msic) == 0) {
			if (msic == 1) {
				sc->vge_flags |= VGE_FLAG_MSI;
				FUNC14(dev, "Using %d MSI message\n",
				    msic);
				rid = 1;
			} else
				FUNC25(dev);
		}
	}

	/* Allocate interrupt */
	sc->vge_irq = FUNC7(dev, SYS_RES_IRQ, &rid,
	    ((sc->vge_flags & VGE_FLAG_MSI) ? 0 : RF_SHAREABLE) | RF_ACTIVE);
	if (sc->vge_irq == NULL) {
		FUNC14(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	/* Reset the adapter. */
	FUNC31(sc);
	/* Reload EEPROM. */
	FUNC2(sc, VGE_EECSR, VGE_EECSR_RELOAD);
	for (i = 0; i < VGE_TIMEOUT; i++) {
		FUNC3(5);
		if ((FUNC1(sc, VGE_EECSR) & VGE_EECSR_RELOAD) == 0)
			break;
	}
	if (i == VGE_TIMEOUT)
		FUNC14(dev, "EEPROM reload timed out\n");
	/*
	 * Clear PACPI as EEPROM reload will set the bit. Otherwise
	 * MAC will receive magic packet which in turn confuses
	 * controller.
	 */
	FUNC0(sc, VGE_CHIPCFG0, VGE_CHIPCFG0_PACPI);

	/*
	 * Get station address from the EEPROM.
	 */
	FUNC30(sc, (caddr_t)eaddr, VGE_EE_EADDR, 3, 0);
	/*
	 * Save configured PHY address.
	 * It seems the PHY address of PCIe controllers just
	 * reflects media jump strapping status so we assume the
	 * internal PHY address of PCIe controller is at 1.
	 */
	if ((sc->vge_flags & VGE_FLAG_PCIE) != 0)
		sc->vge_phyaddr = 1;
	else
		sc->vge_phyaddr = FUNC1(sc, VGE_MIICFG) &
		    VGE_MIICFG_PHYADDR;
	/* Clear WOL and take hardware from powerdown. */
	FUNC26(sc);
	FUNC32(sc);
	error = FUNC28(sc);
	if (error)
		goto fail;

	ifp = sc->vge_ifp = FUNC17(IFT_ETHER);
	if (ifp == NULL) {
		FUNC14(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}

	FUNC29(sc);
	/* Do MII setup */
	error = FUNC19(dev, &sc->vge_miibus, ifp, vge_ifmedia_upd,
	    vge_ifmedia_sts, BMSR_DEFCAPMASK, sc->vge_phyaddr, MII_OFFSET_ANY,
	    MIIF_DOPAUSE);
	if (error != 0) {
		FUNC14(dev, "attaching PHYs failed\n");
		goto fail;
	}

	ifp->if_softc = sc;
	FUNC18(ifp, FUNC10(dev), FUNC13(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = vge_ioctl;
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	ifp->if_start = vge_start;
	ifp->if_hwassist = VGE_CSUM_FEATURES;
	ifp->if_capabilities |= IFCAP_HWCSUM | IFCAP_VLAN_HWCSUM |
	    IFCAP_VLAN_HWTAGGING;
	if ((sc->vge_flags & VGE_FLAG_PMCAP) != 0)
		ifp->if_capabilities |= IFCAP_WOL;
	ifp->if_capenable = ifp->if_capabilities;
#ifdef DEVICE_POLLING
	ifp->if_capabilities |= IFCAP_POLLING;
#endif
	ifp->if_init = vge_init;
	FUNC4(&ifp->if_snd, VGE_TX_DESC_CNT - 1);
	ifp->if_snd.ifq_drv_maxlen = VGE_TX_DESC_CNT - 1;
	FUNC5(&ifp->if_snd);

	/*
	 * Call MI attach routine.
	 */
	FUNC15(ifp, eaddr);

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC8(dev, sc->vge_irq, INTR_TYPE_NET|INTR_MPSAFE,
	    NULL, vge_intr, sc, &sc->vge_intrhand);

	if (error) {
		FUNC14(dev, "couldn't set up irq\n");
		FUNC16(ifp);
		goto fail;
	}

fail:
	if (error)
		FUNC27(dev);

	return (error);
}