#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;
struct nfe_softc {scalar_t__ nfe_msix; int nfe_msi; int nfe_devid; int nfe_flags; int /*<<< orphan*/ * nfe_tq; int /*<<< orphan*/ * nfe_intrhand; int /*<<< orphan*/ ** nfe_irq; int /*<<< orphan*/  nfe_dev; int /*<<< orphan*/  nfe_int_task; int /*<<< orphan*/  eaddr; int /*<<< orphan*/  nfe_miibus; scalar_t__ nfe_framesize; int /*<<< orphan*/  jrxq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  txq; int /*<<< orphan*/ * nfe_ifp; int /*<<< orphan*/  nfe_parent_tag; int /*<<< orphan*/  nfe_revid; void* nfe_intrs; int /*<<< orphan*/  nfe_irq_mask; void* nfe_nointrs; int /*<<< orphan*/  nfe_irq_status; int /*<<< orphan*/  nfe_mtx; int /*<<< orphan*/ ** nfe_res; int /*<<< orphan*/  nfe_stat_ch; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  ifm_stat_cb_t ;
typedef  int /*<<< orphan*/  ifm_change_cb_t ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int CSUM_TSO ; 
 int ENOSPC ; 
 int ENXIO ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_TSO4 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NFE_40BIT_ADDR ; 
 int NFE_CORRECT_MACADDR ; 
 int NFE_CSUM_FEATURES ; 
 int /*<<< orphan*/  NFE_DMA_MAXADDR ; 
 int NFE_HW_CSUM ; 
 int NFE_HW_VLAN ; 
 int /*<<< orphan*/  NFE_IRQ_MASK ; 
 int /*<<< orphan*/  NFE_IRQ_STATUS ; 
 void* NFE_IRQ_WANTED ; 
 int NFE_JUMBO_SUP ; 
 int NFE_MAC_ADDR_INORDER ; 
 int NFE_MIB_V1 ; 
 int NFE_MIB_V2 ; 
 int NFE_MIB_V3 ; 
 int /*<<< orphan*/  NFE_MSIX_IRQ_STATUS ; 
 int /*<<< orphan*/  NFE_MSIX_MAP0 ; 
 int /*<<< orphan*/  NFE_MSIX_MAP1 ; 
 int /*<<< orphan*/  NFE_MSI_IRQ_MASK ; 
 int /*<<< orphan*/  NFE_MSI_MAP0 ; 
 int /*<<< orphan*/  NFE_MSI_MAP1 ; 
 int NFE_MSI_MESSAGES ; 
 void* NFE_MSI_VECTOR_0_ENABLED ; 
 int NFE_PWR_MGMT ; 
 int FUNC0 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ NFE_RX_HEADERS ; 
 int NFE_TX_FLOW_CTRL ; 
 scalar_t__ NFE_TX_RING_COUNT ; 
 int /*<<< orphan*/  NFE_TX_UNK ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
#define  PCI_PRODUCT_NVIDIA_CK804_LAN1 164 
#define  PCI_PRODUCT_NVIDIA_CK804_LAN2 163 
#define  PCI_PRODUCT_NVIDIA_MCP04_LAN1 162 
#define  PCI_PRODUCT_NVIDIA_MCP04_LAN2 161 
#define  PCI_PRODUCT_NVIDIA_MCP51_LAN1 160 
#define  PCI_PRODUCT_NVIDIA_MCP51_LAN2 159 
#define  PCI_PRODUCT_NVIDIA_MCP55_LAN1 158 
#define  PCI_PRODUCT_NVIDIA_MCP55_LAN2 157 
#define  PCI_PRODUCT_NVIDIA_MCP61_LAN1 156 
#define  PCI_PRODUCT_NVIDIA_MCP61_LAN2 155 
#define  PCI_PRODUCT_NVIDIA_MCP61_LAN3 154 
#define  PCI_PRODUCT_NVIDIA_MCP61_LAN4 153 
#define  PCI_PRODUCT_NVIDIA_MCP65_LAN1 152 
#define  PCI_PRODUCT_NVIDIA_MCP65_LAN2 151 
#define  PCI_PRODUCT_NVIDIA_MCP65_LAN3 150 
#define  PCI_PRODUCT_NVIDIA_MCP65_LAN4 149 
#define  PCI_PRODUCT_NVIDIA_MCP67_LAN1 148 
#define  PCI_PRODUCT_NVIDIA_MCP67_LAN2 147 
#define  PCI_PRODUCT_NVIDIA_MCP67_LAN3 146 
#define  PCI_PRODUCT_NVIDIA_MCP67_LAN4 145 
#define  PCI_PRODUCT_NVIDIA_MCP73_LAN1 144 
#define  PCI_PRODUCT_NVIDIA_MCP73_LAN2 143 
#define  PCI_PRODUCT_NVIDIA_MCP73_LAN3 142 
#define  PCI_PRODUCT_NVIDIA_MCP73_LAN4 141 
#define  PCI_PRODUCT_NVIDIA_MCP77_LAN1 140 
#define  PCI_PRODUCT_NVIDIA_MCP77_LAN2 139 
#define  PCI_PRODUCT_NVIDIA_MCP77_LAN3 138 
#define  PCI_PRODUCT_NVIDIA_MCP77_LAN4 137 
#define  PCI_PRODUCT_NVIDIA_MCP79_LAN1 136 
#define  PCI_PRODUCT_NVIDIA_MCP79_LAN2 135 
#define  PCI_PRODUCT_NVIDIA_MCP79_LAN3 134 
#define  PCI_PRODUCT_NVIDIA_MCP79_LAN4 133 
#define  PCI_PRODUCT_NVIDIA_MCP89_LAN 132 
#define  PCI_PRODUCT_NVIDIA_NFORCE3_LAN2 131 
#define  PCI_PRODUCT_NVIDIA_NFORCE3_LAN3 130 
#define  PCI_PRODUCT_NVIDIA_NFORCE3_LAN4 129 
#define  PCI_PRODUCT_NVIDIA_NFORCE3_LAN5 128 
 int /*<<< orphan*/  PI_NET ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfe_softc*) ; 
 scalar_t__ bootverbose ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct nfe_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int msi_disable ; 
 int msix_disable ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (struct nfe_softc*,int) ; 
 int FUNC38 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int FUNC39 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC40 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC42 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC43 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfe_ifmedia_sts ; 
 scalar_t__ nfe_ifmedia_upd ; 
 int /*<<< orphan*/  nfe_init ; 
 int /*<<< orphan*/  nfe_int_task ; 
 int /*<<< orphan*/  nfe_intr ; 
 int /*<<< orphan*/  nfe_ioctl ; 
 int /*<<< orphan*/  FUNC44 (struct nfe_softc*) ; 
 int /*<<< orphan*/  nfe_start ; 
 int /*<<< orphan*/  FUNC45 (struct nfe_softc*) ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ) ; 
 int FUNC51 (int /*<<< orphan*/ ) ; 
 int FUNC52 (int /*<<< orphan*/ ) ; 
 int FUNC53 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC56 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC59(device_t dev)
{
	struct nfe_softc *sc;
	if_t ifp;
	bus_addr_t dma_addr_max;
	int error = 0, i, msic, phyloc, reg, rid;

	sc = FUNC11(dev);
	sc->nfe_dev = dev;

	FUNC35(&sc->nfe_mtx, FUNC10(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC8(&sc->nfe_stat_ch, &sc->nfe_mtx, 0);

	FUNC47(dev);

	rid = FUNC2(0);
	sc->nfe_res[0] = FUNC4(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->nfe_res[0] == NULL) {
		FUNC13(dev, "couldn't map memory resources\n");
		FUNC34(&sc->nfe_mtx);
		return (ENXIO);
	}

	if (FUNC48(dev, PCIY_EXPRESS, &reg) == 0) {
		uint16_t v, width;

		v = FUNC53(dev, reg + 0x08, 2);
		/* Change max. read request size to 4096. */
		v &= ~(7 << 12);
		v |= (5 << 12);
		FUNC55(dev, reg + 0x08, v, 2);

		v = FUNC53(dev, reg + 0x0c, 2);
		/* link capability */
		v = (v >> 4) & 0x0f;
		width = FUNC53(dev, reg + 0x12, 2);
		/* negotiated link width */
		width = (width >> 4) & 0x3f;
		if (v != width)
			FUNC13(sc->nfe_dev,
			    "warning, negotiated width of link(x%d) != "
			    "max. width of link(x%d)\n", width, v);
	}

	if (FUNC40(sc) == 0) {
		FUNC13(sc->nfe_dev,
		    "MSI/MSI-X capability black-listed, will use INTx\n"); 
		msix_disable = 1;
		msi_disable = 1;
	}

	/* Allocate interrupt */
	if (msix_disable == 0 || msi_disable == 0) {
		if (msix_disable == 0 &&
		    (msic = FUNC52(dev)) == NFE_MSI_MESSAGES)
			FUNC37(sc, msic);
		if (msi_disable == 0 && sc->nfe_msix == 0 &&
		    (msic = FUNC51(dev)) == NFE_MSI_MESSAGES &&
		    FUNC46(dev, &msic) == 0) {
			if (msic == NFE_MSI_MESSAGES) {
				if (bootverbose)
					FUNC13(dev,
					    "Using %d MSI messages\n", msic);
				sc->nfe_msi = 1;
			} else
				FUNC54(dev);
		}
	}

	if (sc->nfe_msix == 0 && sc->nfe_msi == 0) {
		rid = 0;
		sc->nfe_irq[0] = FUNC4(dev, SYS_RES_IRQ, &rid,
		    RF_SHAREABLE | RF_ACTIVE);
		if (sc->nfe_irq[0] == NULL) {
			FUNC13(dev, "couldn't allocate IRQ resources\n");
			error = ENXIO;
			goto fail;
		}
	} else {
		for (i = 0, rid = 1; i < NFE_MSI_MESSAGES; i++, rid++) {
			sc->nfe_irq[i] = FUNC4(dev,
			    SYS_RES_IRQ, &rid, RF_ACTIVE);
			if (sc->nfe_irq[i] == NULL) {
				FUNC13(dev,
				    "couldn't allocate IRQ resources for "
				    "message %d\n", rid);
				error = ENXIO;
				goto fail;
			}
		}
		/* Map interrupts to vector 0. */
		if (sc->nfe_msix != 0) {
			FUNC1(sc, NFE_MSIX_MAP0, 0);
			FUNC1(sc, NFE_MSIX_MAP1, 0);
		} else if (sc->nfe_msi != 0) {
			FUNC1(sc, NFE_MSI_MAP0, 0);
			FUNC1(sc, NFE_MSI_MAP1, 0);
		}
	}

	/* Set IRQ status/mask register. */
	sc->nfe_irq_status = NFE_IRQ_STATUS;
	sc->nfe_irq_mask = NFE_IRQ_MASK;
	sc->nfe_intrs = NFE_IRQ_WANTED;
	sc->nfe_nointrs = 0;
	if (sc->nfe_msix != 0) {
		sc->nfe_irq_status = NFE_MSIX_IRQ_STATUS;
		sc->nfe_nointrs = NFE_IRQ_WANTED;
	} else if (sc->nfe_msi != 0) {
		sc->nfe_irq_mask = NFE_MSI_IRQ_MASK;
		sc->nfe_intrs = NFE_MSI_VECTOR_0_ENABLED;
	}

	sc->nfe_devid = FUNC49(dev);
	sc->nfe_revid = FUNC50(dev);
	sc->nfe_flags = 0;

	switch (sc->nfe_devid) {
	case PCI_PRODUCT_NVIDIA_NFORCE3_LAN2:
	case PCI_PRODUCT_NVIDIA_NFORCE3_LAN3:
	case PCI_PRODUCT_NVIDIA_NFORCE3_LAN4:
	case PCI_PRODUCT_NVIDIA_NFORCE3_LAN5:
		sc->nfe_flags |= NFE_JUMBO_SUP | NFE_HW_CSUM;
		break;
	case PCI_PRODUCT_NVIDIA_MCP51_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP51_LAN2:
		sc->nfe_flags |= NFE_40BIT_ADDR | NFE_PWR_MGMT | NFE_MIB_V1;
		break;
	case PCI_PRODUCT_NVIDIA_CK804_LAN1:
	case PCI_PRODUCT_NVIDIA_CK804_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP04_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP04_LAN2:
		sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR | NFE_HW_CSUM |
		    NFE_MIB_V1;
		break;
	case PCI_PRODUCT_NVIDIA_MCP55_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP55_LAN2:
		sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR | NFE_HW_CSUM |
		    NFE_HW_VLAN | NFE_PWR_MGMT | NFE_TX_FLOW_CTRL | NFE_MIB_V2;
		break;

	case PCI_PRODUCT_NVIDIA_MCP61_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP61_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP61_LAN3:
	case PCI_PRODUCT_NVIDIA_MCP61_LAN4:
	case PCI_PRODUCT_NVIDIA_MCP67_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP67_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP67_LAN3:
	case PCI_PRODUCT_NVIDIA_MCP67_LAN4:
	case PCI_PRODUCT_NVIDIA_MCP73_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP73_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP73_LAN3:
	case PCI_PRODUCT_NVIDIA_MCP73_LAN4:
		sc->nfe_flags |= NFE_40BIT_ADDR | NFE_PWR_MGMT |
		    NFE_CORRECT_MACADDR | NFE_TX_FLOW_CTRL | NFE_MIB_V2;
		break;
	case PCI_PRODUCT_NVIDIA_MCP77_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP77_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP77_LAN3:
	case PCI_PRODUCT_NVIDIA_MCP77_LAN4:
		/* XXX flow control */
		sc->nfe_flags |= NFE_40BIT_ADDR | NFE_HW_CSUM | NFE_PWR_MGMT |
		    NFE_CORRECT_MACADDR | NFE_MIB_V3;
		break;
	case PCI_PRODUCT_NVIDIA_MCP79_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP79_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP79_LAN3:
	case PCI_PRODUCT_NVIDIA_MCP79_LAN4:
	case PCI_PRODUCT_NVIDIA_MCP89_LAN:
		/* XXX flow control */
		sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR | NFE_HW_CSUM |
		    NFE_PWR_MGMT | NFE_CORRECT_MACADDR | NFE_MIB_V3;
		break;
	case PCI_PRODUCT_NVIDIA_MCP65_LAN1:
	case PCI_PRODUCT_NVIDIA_MCP65_LAN2:
	case PCI_PRODUCT_NVIDIA_MCP65_LAN3:
	case PCI_PRODUCT_NVIDIA_MCP65_LAN4:
		sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR |
		    NFE_PWR_MGMT | NFE_CORRECT_MACADDR | NFE_TX_FLOW_CTRL |
		    NFE_MIB_V2;
		break;
	}

	FUNC44(sc);
	/* Check for reversed ethernet address */
	if ((FUNC0(sc, NFE_TX_UNK) & NFE_MAC_ADDR_INORDER) != 0)
		sc->nfe_flags |= NFE_CORRECT_MACADDR;
	FUNC43(sc, sc->eaddr);
	/*
	 * Allocate the parent bus DMA tag appropriate for PCI.
	 */
	dma_addr_max = BUS_SPACE_MAXADDR_32BIT;
	if ((sc->nfe_flags & NFE_40BIT_ADDR) != 0)
		dma_addr_max = NFE_DMA_MAXADDR;
	error = FUNC5(
	    FUNC6(sc->nfe_dev),	/* parent */
	    1, 0,				/* alignment, boundary */
	    dma_addr_max,			/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filter, filterarg */
	    BUS_SPACE_MAXSIZE_32BIT, 0,		/* maxsize, nsegments */
	    BUS_SPACE_MAXSIZE_32BIT,		/* maxsegsize */
	    0,					/* flags */
	    NULL, NULL,				/* lockfunc, lockarg */
	    &sc->nfe_parent_tag);
	if (error)
		goto fail;

	ifp = sc->nfe_ifp = FUNC17(IFT_ETHER);
	if (ifp == NULL) {
		FUNC13(dev, "can not if_gethandle()\n");
		error = ENOSPC;
		goto fail;
	}

	/*
	 * Allocate Tx and Rx rings.
	 */
	if ((error = FUNC39(sc, &sc->txq)) != 0)
		goto fail;

	if ((error = FUNC38(sc, &sc->rxq)) != 0)
		goto fail;

	FUNC36(sc, &sc->jrxq);
	/* Create sysctl node. */
	FUNC45(sc);

	FUNC31(ifp, sc);
	FUNC19(ifp, FUNC9(dev), FUNC12(dev));
	FUNC23(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
	FUNC28(ifp, nfe_ioctl);
	FUNC32(ifp, nfe_start);
	FUNC24(ifp, 0);
	FUNC20(ifp, 0);
	FUNC27(ifp, nfe_init);
	FUNC29(ifp, NFE_TX_RING_COUNT - 1);
	FUNC30(ifp);


	if (sc->nfe_flags & NFE_HW_CSUM) {
		FUNC21(ifp, IFCAP_HWCSUM | IFCAP_TSO4, 0);
		FUNC25(ifp, NFE_CSUM_FEATURES | CSUM_TSO, 0);
	}
	FUNC22(ifp, FUNC16(ifp));

	sc->nfe_framesize = FUNC18(ifp) + NFE_RX_HEADERS;
	/* VLAN capability setup. */
	FUNC21(ifp, IFCAP_VLAN_MTU, 0);
	if ((sc->nfe_flags & NFE_HW_VLAN) != 0) {
		FUNC21(ifp, IFCAP_VLAN_HWTAGGING, 0);
		if ((FUNC16(ifp) & IFCAP_HWCSUM) != 0)
			FUNC21(ifp,
			    (IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO), 0);
	}

	if (FUNC48(dev, PCIY_PMG, &reg) == 0)
		FUNC21(ifp, IFCAP_WOL_MAGIC, 0);
	FUNC22(ifp, FUNC16(ifp));

	/*
	 * Tell the upper layer(s) we support long frames.
	 * Must appear after the call to ether_ifattach() because
	 * ether_ifattach() sets ifi_hdrlen to the default value.
	 */
	FUNC26(ifp, sizeof(struct ether_vlan_header));

#ifdef DEVICE_POLLING
	if_setcapabilitiesbit(ifp, IFCAP_POLLING, 0);
#endif

	/* Do MII setup */
	phyloc = MII_PHY_ANY;
	if (sc->nfe_devid == PCI_PRODUCT_NVIDIA_MCP61_LAN1 ||
	    sc->nfe_devid == PCI_PRODUCT_NVIDIA_MCP61_LAN2 ||
	    sc->nfe_devid == PCI_PRODUCT_NVIDIA_MCP61_LAN3 ||
	    sc->nfe_devid == PCI_PRODUCT_NVIDIA_MCP61_LAN4) {
		if (FUNC42(sc) != 0)
			phyloc = 0;
	}
	error = FUNC33(dev, &sc->nfe_miibus, ifp,
	    (ifm_change_cb_t)nfe_ifmedia_upd, (ifm_stat_cb_t)nfe_ifmedia_sts,
	    BMSR_DEFCAPMASK, phyloc, MII_OFFSET_ANY, MIIF_DOPAUSE);
	if (error != 0) {
		FUNC13(dev, "attaching PHYs failed\n");
		goto fail;
	}
	FUNC14(ifp, sc->eaddr);

	FUNC3(&sc->nfe_int_task, 0, nfe_int_task, sc);
	sc->nfe_tq = FUNC56("nfe_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->nfe_tq);
	FUNC58(&sc->nfe_tq, 1, PI_NET, "%s taskq",
	    FUNC10(sc->nfe_dev));
	error = 0;
	if (sc->nfe_msi == 0 && sc->nfe_msix == 0) {
		error = FUNC7(dev, sc->nfe_irq[0],
		    INTR_TYPE_NET | INTR_MPSAFE, nfe_intr, NULL, sc,
		    &sc->nfe_intrhand[0]);
	} else {
		for (i = 0; i < NFE_MSI_MESSAGES; i++) {
			error = FUNC7(dev, sc->nfe_irq[i],
			    INTR_TYPE_NET | INTR_MPSAFE, nfe_intr, NULL, sc,
			    &sc->nfe_intrhand[i]);
			if (error != 0)
				break;
		}
	}
	if (error) {
		FUNC13(dev, "couldn't set up irq\n");
		FUNC57(sc->nfe_tq);
		sc->nfe_tq = NULL;
		FUNC15(ifp);
		goto fail;
	}

fail:
	if (error)
		FUNC41(dev);

	return (error);
}