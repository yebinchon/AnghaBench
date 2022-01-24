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
struct nge_softc {scalar_t__ nge_res_type; int nge_res_id; int /*<<< orphan*/  nge_intrhand; int /*<<< orphan*/ * nge_irq; int /*<<< orphan*/  nge_miibus; int /*<<< orphan*/  nge_flags; int /*<<< orphan*/  nge_dev; struct ifnet* nge_ifp; int /*<<< orphan*/ * nge_res; int /*<<< orphan*/  nge_mtx; int /*<<< orphan*/  nge_stat_ch; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; int /*<<< orphan*/  if_hwassist; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct nge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  eaddr ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC0 (struct nge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*,int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  NGE_CFG ; 
 int NGE_CFG_TBI_EN ; 
 int /*<<< orphan*/  NGE_CSUM_FEATURES ; 
 int /*<<< orphan*/  NGE_EE_NODEADDR ; 
 int /*<<< orphan*/  NGE_FLAG_TBI ; 
 int /*<<< orphan*/  NGE_GPIO ; 
 int NGE_GPIO_GP1_OUTENB ; 
 int NGE_GPIO_GP2_OUTENB ; 
 int NGE_GPIO_GP3_IN ; 
 int NGE_GPIO_GP3_OUTENB ; 
 int NGE_GPIO_GP4_IN ; 
 int NGE_GPIO_GP4_OUT ; 
 int /*<<< orphan*/  FUNC4 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nge_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ NGE_TX_RING_CNT ; 
 int /*<<< orphan*/  PCIM_CMD_MWRICEN ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 void* SYS_RES_IOPORT ; 
 scalar_t__ SYS_RES_IRQ ; 
 scalar_t__ SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct nge_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct nge_softc*) ; 
 int /*<<< orphan*/  nge_init ; 
 int /*<<< orphan*/  nge_intr ; 
 int /*<<< orphan*/  nge_ioctl ; 
 int /*<<< orphan*/  nge_mediachange ; 
 int /*<<< orphan*/  nge_mediastatus ; 
 int /*<<< orphan*/  FUNC23 (struct nge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct nge_softc*) ; 
 int /*<<< orphan*/  nge_start ; 
 int /*<<< orphan*/  FUNC25 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC30(device_t dev)
{
	uint8_t eaddr[ETHER_ADDR_LEN];
	uint16_t ea[ETHER_ADDR_LEN/2], ea_temp, reg;
	struct nge_softc *sc;
	struct ifnet *ifp;
	int error, i, rid;

	error = 0;
	sc = FUNC13(dev);
	sc->nge_dev = dev;

	FUNC5(sc, FUNC12(dev));
	FUNC10(&sc->nge_stat_ch, &sc->nge_mtx, 0);

	/*
	 * Map control/status registers.
	 */
	FUNC26(dev);

#ifdef NGE_USEIOSPACE
	sc->nge_res_type = SYS_RES_IOPORT;
	sc->nge_res_id = PCIR_BAR(0);
#else
	sc->nge_res_type = SYS_RES_MEMORY;
	sc->nge_res_id = FUNC6(1);
#endif
	sc->nge_res = FUNC8(dev, sc->nge_res_type,
	    &sc->nge_res_id, RF_ACTIVE);

	if (sc->nge_res == NULL) {
		if (sc->nge_res_type == SYS_RES_MEMORY) {
			sc->nge_res_type = SYS_RES_IOPORT;
			sc->nge_res_id = FUNC6(0);
		} else {
			sc->nge_res_type = SYS_RES_MEMORY;
			sc->nge_res_id = FUNC6(1);
		}
		sc->nge_res = FUNC8(dev, sc->nge_res_type,
		    &sc->nge_res_id, RF_ACTIVE);
		if (sc->nge_res == NULL) {
			FUNC15(dev, "couldn't allocate %s resources\n",
			    sc->nge_res_type == SYS_RES_MEMORY ? "memory" :
			    "I/O");
			FUNC4(sc);
			return (ENXIO);
		}
	}

	/* Allocate interrupt */
	rid = 0;
	sc->nge_irq = FUNC8(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->nge_irq == NULL) {
		FUNC15(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	/* Enable MWI. */
	reg = FUNC28(dev, PCIR_COMMAND, 2);
	reg |= PCIM_CMD_MWRICEN;
	FUNC29(dev, PCIR_COMMAND, reg, 2);

	/* Reset the adapter. */
	FUNC24(sc);

	/*
	 * Get station address from the EEPROM.
	 */
	FUNC23(sc, (caddr_t)ea, NGE_EE_NODEADDR, 3);
	for (i = 0; i < ETHER_ADDR_LEN / 2; i++)
		ea[i] = FUNC19(ea[i]);
	ea_temp = ea[0];
	ea[0] = ea[2];
	ea[2] = ea_temp;
	FUNC7(ea, eaddr, sizeof(eaddr));

	if (FUNC22(sc) != 0) {
		error = ENXIO;
		goto fail;
	}

	FUNC25(sc);

	ifp = sc->nge_ifp = FUNC17(IFT_ETHER);
	if (ifp == NULL) {
		FUNC15(dev, "can not allocate ifnet structure\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC18(ifp, FUNC11(dev), FUNC14(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = nge_ioctl;
	ifp->if_start = nge_start;
	ifp->if_init = nge_init;
	ifp->if_snd.ifq_drv_maxlen = NGE_TX_RING_CNT - 1;
	FUNC2(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC3(&ifp->if_snd);
	ifp->if_hwassist = NGE_CSUM_FEATURES;
	ifp->if_capabilities = IFCAP_HWCSUM;
	/*
	 * It seems that some hardwares doesn't provide 3.3V auxiliary
	 * supply(3VAUX) to drive PME such that checking PCI power
	 * management capability is necessary.
	 */
	if (FUNC27(sc->nge_dev, PCIY_PMG, &i) == 0)
		ifp->if_capabilities |= IFCAP_WOL;
	ifp->if_capenable = ifp->if_capabilities;

	if ((FUNC0(sc, NGE_CFG) & NGE_CFG_TBI_EN) != 0) {
		sc->nge_flags |= NGE_FLAG_TBI;
		FUNC15(dev, "Using TBI\n");
		/* Configure GPIO. */
		FUNC1(sc, NGE_GPIO, FUNC0(sc, NGE_GPIO)
		    | NGE_GPIO_GP4_OUT
		    | NGE_GPIO_GP1_OUTENB | NGE_GPIO_GP2_OUTENB
		    | NGE_GPIO_GP3_OUTENB
		    | NGE_GPIO_GP3_IN | NGE_GPIO_GP4_IN);
	}

	/*
	 * Do MII setup.
	 */
	error = FUNC20(dev, &sc->nge_miibus, ifp, nge_mediachange,
	    nge_mediastatus, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC15(dev, "attaching PHYs failed\n");
		goto fail;
	}

	/*
	 * Call MI attach routine.
	 */
	FUNC16(ifp, eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING;
	ifp->if_capabilities |= IFCAP_VLAN_HWCSUM;
	ifp->if_capenable = ifp->if_capabilities;
#ifdef DEVICE_POLLING
	ifp->if_capabilities |= IFCAP_POLLING;
#endif
	/*
	 * Tell the upper layer(s) we support long frames.
	 * Must appear after the call to ether_ifattach() because
	 * ether_ifattach() sets ifi_hdrlen to the default value.
	 */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/*
	 * Hookup IRQ last.
	 */
	error = FUNC9(dev, sc->nge_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, nge_intr, sc, &sc->nge_intrhand);
	if (error) {
		FUNC15(dev, "couldn't set up irq\n");
		goto fail;
	}

fail:
	if (error != 0)
		FUNC21(dev);
	return (error);
}