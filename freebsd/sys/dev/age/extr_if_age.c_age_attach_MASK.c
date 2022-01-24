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
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct age_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct age_softc {int age_chip_rev; int age_flags; int age_dma_rd_burst; int age_dma_wr_burst; int /*<<< orphan*/ * age_tq; int /*<<< orphan*/ * age_intrhand; int /*<<< orphan*/ * age_irq; int /*<<< orphan*/  age_dev; int /*<<< orphan*/  age_eaddr; int /*<<< orphan*/  age_phyaddr; int /*<<< orphan*/  age_miibus; struct ifnet* age_ifp; int /*<<< orphan*/  age_irq_spec; int /*<<< orphan*/  age_rev; int /*<<< orphan*/ * age_res; int /*<<< orphan*/  age_res_spec; int /*<<< orphan*/  age_link_task; int /*<<< orphan*/  age_int_task; int /*<<< orphan*/  age_mtx; int /*<<< orphan*/  age_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AGE_CSUM_FEATURES ; 
 int AGE_FLAG_MSI ; 
 int AGE_FLAG_MSIX ; 
 int AGE_FLAG_PCIE ; 
 int AGE_FLAG_PMCAP ; 
 int /*<<< orphan*/  AGE_MASTER_CFG ; 
 int AGE_MSIX_MESSAGES ; 
 int AGE_MSI_MESSAGES ; 
 int /*<<< orphan*/  AGE_PHY_ADDR ; 
 int /*<<< orphan*/  AGE_SRAM_RX_FIFO_LEN ; 
 int /*<<< orphan*/  AGE_SRAM_TX_FIFO_LEN ; 
 scalar_t__ AGE_TX_RING_CNT ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC0 (struct age_softc*,int /*<<< orphan*/ ) ; 
 int CSUM_TSO ; 
 int DMA_CFG_RD_BURST_128 ; 
 int DMA_CFG_RD_BURST_SHIFT ; 
 int DMA_CFG_WR_BURST_128 ; 
 int DMA_CFG_WR_BURST_SHIFT ; 
 int ENXIO ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MASTER_CHIP_REV_SHIFT ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct age_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct age_softc*) ; 
 int /*<<< orphan*/  age_init ; 
 int /*<<< orphan*/  age_int_task ; 
 int /*<<< orphan*/  age_intr ; 
 int /*<<< orphan*/  age_ioctl ; 
 int /*<<< orphan*/  age_irq_spec_legacy ; 
 int /*<<< orphan*/  age_irq_spec_msi ; 
 int /*<<< orphan*/  age_irq_spec_msix ; 
 int /*<<< orphan*/  age_link_task ; 
 int /*<<< orphan*/  age_mediachange ; 
 int /*<<< orphan*/  age_mediastatus ; 
 int /*<<< orphan*/  FUNC7 (struct age_softc*) ; 
 int /*<<< orphan*/  age_res_spec_mem ; 
 int /*<<< orphan*/  FUNC8 (struct age_softc*) ; 
 int /*<<< orphan*/  age_start ; 
 int /*<<< orphan*/  FUNC9 (struct age_softc*) ; 
 scalar_t__ bootverbose ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct age_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct age_softc* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*) ; 
 struct ifnet* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ msi_disable ; 
 scalar_t__ msix_disable ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC33 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC36(device_t dev)
{
	struct age_softc *sc;
	struct ifnet *ifp;
	uint16_t burst;
	int error, i, msic, msixc, pmc;

	error = 0;
	sc = FUNC15(dev);
	sc->age_dev = dev;

	FUNC23(&sc->age_mtx, FUNC14(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC12(&sc->age_tick_ch, &sc->age_mtx, 0);
	FUNC3(&sc->age_int_task, 0, age_int_task, sc);
	FUNC3(&sc->age_link_task, 0, age_link_task, sc);

	/* Map the device. */
	FUNC26(dev);
	sc->age_res_spec = age_res_spec_mem;
	sc->age_irq_spec = age_irq_spec_legacy;
	error = FUNC10(dev, sc->age_res_spec, sc->age_res);
	if (error != 0) {
		FUNC17(dev, "cannot allocate memory resources.\n");
		goto fail;
	}

	/* Set PHY address. */
	sc->age_phyaddr = AGE_PHY_ADDR;

	/* Reset PHY. */
	FUNC7(sc);

	/* Reset the ethernet controller. */
	FUNC8(sc);

	/* Get PCI and chip id/revision. */
	sc->age_rev = FUNC28(dev);
	sc->age_chip_rev = FUNC0(sc, AGE_MASTER_CFG) >>
	    MASTER_CHIP_REV_SHIFT;
	if (bootverbose) {
		FUNC17(dev, "PCI device revision : 0x%04x\n",
		    sc->age_rev);
		FUNC17(dev, "Chip id/revision : 0x%04x\n",
		    sc->age_chip_rev);
	}

	/*
	 * XXX
	 * Unintialized hardware returns an invalid chip id/revision
	 * as well as 0xFFFFFFFF for Tx/Rx fifo length. It seems that
	 * unplugged cable results in putting hardware into automatic
	 * power down mode which in turn returns invalld chip revision.
	 */
	if (sc->age_chip_rev == 0xFFFF) {
		FUNC17(dev,"invalid chip revision : 0x%04x -- "
		    "not initialized?\n", sc->age_chip_rev);
		error = ENXIO;
		goto fail;
	}

	FUNC17(dev, "%d Tx FIFO, %d Rx FIFO\n",
	    FUNC0(sc, AGE_SRAM_TX_FIFO_LEN),
	    FUNC0(sc, AGE_SRAM_RX_FIFO_LEN));

	/* Allocate IRQ resources. */
	msixc = FUNC30(dev);
	msic = FUNC29(dev);
	if (bootverbose) {
		FUNC17(dev, "MSIX count : %d\n", msixc);
		FUNC17(dev, "MSI count : %d\n", msic);
	}

	/* Prefer MSIX over MSI. */
	if (msix_disable == 0 || msi_disable == 0) {
		if (msix_disable == 0 && msixc == AGE_MSIX_MESSAGES &&
		    FUNC25(dev, &msixc) == 0) {
			if (msic == AGE_MSIX_MESSAGES) {
				FUNC17(dev, "Using %d MSIX messages.\n",
				    msixc);
				sc->age_flags |= AGE_FLAG_MSIX;
				sc->age_irq_spec = age_irq_spec_msix;
			} else
				FUNC32(dev);
		}
		if (msi_disable == 0 && (sc->age_flags & AGE_FLAG_MSIX) == 0 &&
		    msic == AGE_MSI_MESSAGES &&
		    FUNC24(dev, &msic) == 0) {
			if (msic == AGE_MSI_MESSAGES) {
				FUNC17(dev, "Using %d MSI messages.\n",
				    msic);
				sc->age_flags |= AGE_FLAG_MSI;
				sc->age_irq_spec = age_irq_spec_msi;
			} else
				FUNC32(dev);
		}
	}

	error = FUNC10(dev, sc->age_irq_spec, sc->age_irq);
	if (error != 0) {
		FUNC17(dev, "cannot allocate IRQ resources.\n");
		goto fail;
	}


	/* Get DMA parameters from PCIe device control register. */
	if (FUNC27(dev, PCIY_EXPRESS, &i) == 0) {
		sc->age_flags |= AGE_FLAG_PCIE;
		burst = FUNC31(dev, i + 0x08, 2);
		/* Max read request size. */
		sc->age_dma_rd_burst = ((burst >> 12) & 0x07) <<
		    DMA_CFG_RD_BURST_SHIFT;
		/* Max payload size. */
		sc->age_dma_wr_burst = ((burst >> 5) & 0x07) <<
		    DMA_CFG_WR_BURST_SHIFT;
		if (bootverbose) {
			FUNC17(dev, "Read request size : %d bytes.\n",
			    128 << ((burst >> 12) & 0x07));
			FUNC17(dev, "TLP payload size : %d bytes.\n",
			    128 << ((burst >> 5) & 0x07));
		}
	} else {
		sc->age_dma_rd_burst = DMA_CFG_RD_BURST_128;
		sc->age_dma_wr_burst = DMA_CFG_WR_BURST_128;
	}

	/* Create device sysctl node. */
	FUNC9(sc);

	if ((error = FUNC5(sc)) != 0)
		goto fail;

	/* Load station address. */
	FUNC6(sc);

	ifp = sc->age_ifp = FUNC20(IFT_ETHER);
	if (ifp == NULL) {
		FUNC17(dev, "cannot allocate ifnet structure.\n");
		error = ENXIO;
		goto fail;
	}

	ifp->if_softc = sc;
	FUNC21(ifp, FUNC13(dev), FUNC16(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = age_ioctl;
	ifp->if_start = age_start;
	ifp->if_init = age_init;
	ifp->if_snd.ifq_drv_maxlen = AGE_TX_RING_CNT - 1;
	FUNC1(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC2(&ifp->if_snd);
	ifp->if_capabilities = IFCAP_HWCSUM | IFCAP_TSO4;
	ifp->if_hwassist = AGE_CSUM_FEATURES | CSUM_TSO;
	if (FUNC27(dev, PCIY_PMG, &pmc) == 0) {
		sc->age_flags |= AGE_FLAG_PMCAP;
		ifp->if_capabilities |= IFCAP_WOL_MAGIC | IFCAP_WOL_MCAST;
	}
	ifp->if_capenable = ifp->if_capabilities;

	/* Set up MII bus. */
	error = FUNC22(dev, &sc->age_miibus, ifp, age_mediachange,
	    age_mediastatus, BMSR_DEFCAPMASK, sc->age_phyaddr, MII_OFFSET_ANY,
	    0);
	if (error != 0) {
		FUNC17(dev, "attaching PHYs failed\n");
		goto fail;
	}

	FUNC18(ifp, sc->age_eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
	    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO;
	ifp->if_capenable = ifp->if_capabilities;

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Create local taskq. */
	sc->age_tq = FUNC33("age_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->age_tq);
	if (sc->age_tq == NULL) {
		FUNC17(dev, "could not create taskqueue.\n");
		FUNC19(ifp);
		error = ENXIO;
		goto fail;
	}
	FUNC35(&sc->age_tq, 1, PI_NET, "%s taskq",
	    FUNC14(sc->age_dev));

	if ((sc->age_flags & AGE_FLAG_MSIX) != 0)
		msic = AGE_MSIX_MESSAGES;
	else if ((sc->age_flags & AGE_FLAG_MSI) != 0)
		msic = AGE_MSI_MESSAGES;
	else
		msic = 1;
	for (i = 0; i < msic; i++) {
		error = FUNC11(dev, sc->age_irq[i],
		    INTR_TYPE_NET | INTR_MPSAFE, age_intr, NULL, sc,
		    &sc->age_intrhand[i]);
		if (error != 0)
			break;
	}
	if (error != 0) {
		FUNC17(dev, "could not set up interrupt handler.\n");
		FUNC34(sc->age_tq);
		sc->age_tq = NULL;
		FUNC19(ifp);
		goto fail;
	}

fail:
	if (error != 0)
		FUNC4(dev);

	return (error);
}