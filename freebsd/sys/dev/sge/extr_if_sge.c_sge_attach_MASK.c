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
struct sge_softc {int sge_res_id; int sge_flags; int /*<<< orphan*/  sge_intrhand; int /*<<< orphan*/ * sge_irq; int /*<<< orphan*/  sge_miibus; struct ifnet* sge_ifp; int /*<<< orphan*/  sge_rev; int /*<<< orphan*/ * sge_res; int /*<<< orphan*/  sge_res_type; int /*<<< orphan*/  sge_mtx; int /*<<< orphan*/  sge_stat_ch; int /*<<< orphan*/  sge_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct sge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int CSUM_TSO ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SGE_CSUM_FEATURES ; 
 int SGE_FLAG_FASTETHER ; 
 int SGE_FLAG_SIS190 ; 
 scalar_t__ SGE_TX_RING_CNT ; 
 scalar_t__ SIS_DEVICEID_190 ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sge_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 struct ifnet* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct sge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct sge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sge_ifmedia_sts ; 
 int /*<<< orphan*/  sge_ifmedia_upd ; 
 int /*<<< orphan*/  sge_init ; 
 int /*<<< orphan*/  sge_intr ; 
 int /*<<< orphan*/  sge_ioctl ; 
 int /*<<< orphan*/  FUNC25 (struct sge_softc*) ; 
 int /*<<< orphan*/  sge_start ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct sge_softc *sc;
	struct ifnet *ifp;
	uint8_t eaddr[ETHER_ADDR_LEN];
	int error = 0, rid;

	sc = FUNC8(dev);
	sc->sge_dev = dev;

	FUNC16(&sc->sge_mtx, FUNC7(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
        FUNC5(&sc->sge_stat_ch, &sc->sge_mtx, 0);

	/*
	 * Map control/status registers.
	 */
	FUNC17(dev);

	/* Allocate resources. */
	sc->sge_res_id = FUNC2(0);
	sc->sge_res_type = SYS_RES_MEMORY;
	sc->sge_res = FUNC3(dev, sc->sge_res_type,
	    &sc->sge_res_id, RF_ACTIVE);
	if (sc->sge_res == NULL) {
		FUNC10(dev, "couldn't allocate resource\n");
		error = ENXIO;
		goto fail;
	}

	rid = 0;
	sc->sge_irq = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sge_irq == NULL) {
		FUNC10(dev, "couldn't allocate IRQ resources\n");
		error = ENXIO;
		goto fail;
	}
	sc->sge_rev = FUNC19(dev);
	if (FUNC18(dev) == SIS_DEVICEID_190)
		sc->sge_flags |= SGE_FLAG_FASTETHER | SGE_FLAG_SIS190;
	/* Reset the adapter. */
	FUNC25(sc);

	/* Get MAC address from the EEPROM. */
	if ((FUNC20(dev, 0x73, 1) & 0x01) != 0)
		FUNC23(sc, eaddr);
	else
		FUNC24(sc, eaddr);

	if ((error = FUNC22(sc)) != 0)
		goto fail;

	ifp = sc->sge_ifp = FUNC13(IFT_ETHER);
	if (ifp == NULL) {
		FUNC10(dev, "cannot allocate ifnet structure.\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC14(ifp, FUNC6(dev), FUNC9(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = sge_ioctl;
	ifp->if_start = sge_start;
	ifp->if_init = sge_init;
	ifp->if_snd.ifq_drv_maxlen = SGE_TX_RING_CNT - 1;
	FUNC0(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC1(&ifp->if_snd);
	ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_RXCSUM | IFCAP_TSO4;
	ifp->if_hwassist = SGE_CSUM_FEATURES | CSUM_TSO;
	ifp->if_capenable = ifp->if_capabilities;
	/*
	 * Do MII setup.
	 */
	error = FUNC15(dev, &sc->sge_miibus, ifp, sge_ifmedia_upd,
	    sge_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC10(dev, "attaching PHYs failed\n");
		goto fail;
	}

	/*
	 * Call MI attach routine.
	 */
	FUNC11(ifp, eaddr);

	/* VLAN setup. */
	ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWCSUM |
	    IFCAP_VLAN_HWTSO | IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC4(dev, sc->sge_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, sge_intr, sc, &sc->sge_intrhand);
	if (error) {
		FUNC10(dev, "couldn't set up irq\n");
		FUNC12(ifp);
		goto fail;
	}

fail:
	if (error)
		FUNC21(dev);

	return (error);
}