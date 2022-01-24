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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct ale_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct ale_softc {int ale_rev; int ale_flags; int ale_chip_rev; int ale_dma_rd_burst; int ale_dma_wr_burst; int /*<<< orphan*/ * ale_tq; int /*<<< orphan*/ * ale_intrhand; int /*<<< orphan*/ * ale_irq; int /*<<< orphan*/  ale_dev; int /*<<< orphan*/  ale_eaddr; int /*<<< orphan*/  ale_phyaddr; int /*<<< orphan*/  ale_miibus; struct ifnet* ale_ifp; int /*<<< orphan*/  ale_irq_spec; int /*<<< orphan*/ * ale_res; int /*<<< orphan*/  ale_res_spec; int /*<<< orphan*/  ale_int_task; int /*<<< orphan*/  ale_mtx; int /*<<< orphan*/  ale_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ALE_CSUM_FEATURES ; 
 int ALE_FLAG_FASTETHER ; 
 int ALE_FLAG_JUMBO ; 
 int ALE_FLAG_MSI ; 
 int ALE_FLAG_MSIX ; 
 int ALE_FLAG_PCIE ; 
 int ALE_FLAG_PMCAP ; 
 int ALE_FLAG_RXCSUM_BUG ; 
 int ALE_FLAG_TXCMB_BUG ; 
 int ALE_FLAG_TXCSUM_BUG ; 
 int /*<<< orphan*/  ALE_MASTER_CFG ; 
 int ALE_MSIX_MESSAGES ; 
 int ALE_MSI_MESSAGES ; 
 int /*<<< orphan*/  ALE_PHY_ADDR ; 
 int /*<<< orphan*/  ALE_PHY_STATUS ; 
 int /*<<< orphan*/  ALE_SRAM_RX_FIFO_LEN ; 
 int /*<<< orphan*/  ALE_SRAM_TX_FIFO_LEN ; 
 scalar_t__ ALE_TX_RING_CNT ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC0 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int CSUM_TSO ; 
 int DMA_CFG_RD_BURST_128 ; 
 int DMA_CFG_RD_BURST_SHIFT ; 
 int DMA_CFG_WR_BURST_128 ; 
 int DMA_CFG_WR_BURST_SHIFT ; 
 int ENXIO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
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
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int PHY_STATUS_100M ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ale_softc*) ; 
 int /*<<< orphan*/  ale_init ; 
 int /*<<< orphan*/  ale_int_task ; 
 int /*<<< orphan*/  ale_intr ; 
 int /*<<< orphan*/  ale_ioctl ; 
 int /*<<< orphan*/  ale_irq_spec_legacy ; 
 int /*<<< orphan*/  ale_irq_spec_msi ; 
 int /*<<< orphan*/  ale_irq_spec_msix ; 
 int /*<<< orphan*/  ale_mediachange ; 
 int /*<<< orphan*/  ale_mediastatus ; 
 int /*<<< orphan*/  FUNC7 (struct ale_softc*) ; 
 int /*<<< orphan*/  ale_res_spec_mem ; 
 int /*<<< orphan*/  FUNC8 (struct ale_softc*) ; 
 int /*<<< orphan*/  ale_start ; 
 int /*<<< orphan*/  FUNC9 (struct ale_softc*) ; 
 scalar_t__ bootverbose ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ale_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct ale_softc* FUNC15 (int /*<<< orphan*/ ) ; 
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
 int FUNC28 (int /*<<< orphan*/ ) ; 
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
	struct ale_softc *sc;
	struct ifnet *ifp;
	uint16_t burst;
	int error, i, msic, msixc, pmc;
	uint32_t rxf_len, txf_len;

	error = 0;
	sc = FUNC15(dev);
	sc->ale_dev = dev;

	FUNC23(&sc->ale_mtx, FUNC14(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC12(&sc->ale_tick_ch, &sc->ale_mtx, 0);
	FUNC3(&sc->ale_int_task, 0, ale_int_task, sc);

	/* Map the device. */
	FUNC26(dev);
	sc->ale_res_spec = ale_res_spec_mem;
	sc->ale_irq_spec = ale_irq_spec_legacy;
	error = FUNC10(dev, sc->ale_res_spec, sc->ale_res);
	if (error != 0) {
		FUNC17(dev, "cannot allocate memory resources.\n");
		goto fail;
	}

	/* Set PHY address. */
	sc->ale_phyaddr = ALE_PHY_ADDR;

	/* Reset PHY. */
	FUNC7(sc);

	/* Reset the ethernet controller. */
	FUNC8(sc);

	/* Get PCI and chip id/revision. */
	sc->ale_rev = FUNC28(dev);
	if (sc->ale_rev >= 0xF0) {
		/* L2E Rev. B. AR8114 */
		sc->ale_flags |= ALE_FLAG_FASTETHER;
	} else {
		if ((FUNC0(sc, ALE_PHY_STATUS) & PHY_STATUS_100M) != 0) {
			/* L1E AR8121 */
			sc->ale_flags |= ALE_FLAG_JUMBO;
		} else {
			/* L2E Rev. A. AR8113 */
			sc->ale_flags |= ALE_FLAG_FASTETHER;
		}
	}
	/*
	 * All known controllers seems to require 4 bytes alignment
	 * of Tx buffers to make Tx checksum offload with custom
	 * checksum generation method work.
	 */
	sc->ale_flags |= ALE_FLAG_TXCSUM_BUG;
	/*
	 * All known controllers seems to have issues on Rx checksum
	 * offload for fragmented IP datagrams.
	 */
	sc->ale_flags |= ALE_FLAG_RXCSUM_BUG;
	/*
	 * Don't use Tx CMB. It is known to cause RRS update failure
	 * under certain circumstances. Typical phenomenon of the
	 * issue would be unexpected sequence number encountered in
	 * Rx handler.
	 */
	sc->ale_flags |= ALE_FLAG_TXCMB_BUG;
	sc->ale_chip_rev = FUNC0(sc, ALE_MASTER_CFG) >>
	    MASTER_CHIP_REV_SHIFT;
	if (bootverbose) {
		FUNC17(dev, "PCI device revision : 0x%04x\n",
		    sc->ale_rev);
		FUNC17(dev, "Chip id/revision : 0x%04x\n",
		    sc->ale_chip_rev);
	}
	txf_len = FUNC0(sc, ALE_SRAM_TX_FIFO_LEN);
	rxf_len = FUNC0(sc, ALE_SRAM_RX_FIFO_LEN);
	/*
	 * Uninitialized hardware returns an invalid chip id/revision
	 * as well as 0xFFFFFFFF for Tx/Rx fifo length.
	 */
	if (sc->ale_chip_rev == 0xFFFF || txf_len == 0xFFFFFFFF ||
	    rxf_len == 0xFFFFFFF) {
		FUNC17(dev,"chip revision : 0x%04x, %u Tx FIFO "
		    "%u Rx FIFO -- not initialized?\n", sc->ale_chip_rev,
		    txf_len, rxf_len);
		error = ENXIO;
		goto fail;
	}
	FUNC17(dev, "%u Tx FIFO, %u Rx FIFO\n", txf_len, rxf_len);

	/* Allocate IRQ resources. */
	msixc = FUNC30(dev);
	msic = FUNC29(dev);
	if (bootverbose) {
		FUNC17(dev, "MSIX count : %d\n", msixc);
		FUNC17(dev, "MSI count : %d\n", msic);
	}

	/* Prefer MSIX over MSI. */
	if (msix_disable == 0 || msi_disable == 0) {
		if (msix_disable == 0 && msixc == ALE_MSIX_MESSAGES &&
		    FUNC25(dev, &msixc) == 0) {
			if (msixc == ALE_MSIX_MESSAGES) {
				FUNC17(dev, "Using %d MSIX messages.\n",
				    msixc);
				sc->ale_flags |= ALE_FLAG_MSIX;
				sc->ale_irq_spec = ale_irq_spec_msix;
			} else
				FUNC32(dev);
		}
		if (msi_disable == 0 && (sc->ale_flags & ALE_FLAG_MSIX) == 0 &&
		    msic == ALE_MSI_MESSAGES &&
		    FUNC24(dev, &msic) == 0) {
			if (msic == ALE_MSI_MESSAGES) {
				FUNC17(dev, "Using %d MSI messages.\n",
				    msic);
				sc->ale_flags |= ALE_FLAG_MSI;
				sc->ale_irq_spec = ale_irq_spec_msi;
			} else
				FUNC32(dev);
		}
	}

	error = FUNC10(dev, sc->ale_irq_spec, sc->ale_irq);
	if (error != 0) {
		FUNC17(dev, "cannot allocate IRQ resources.\n");
		goto fail;
	}

	/* Get DMA parameters from PCIe device control register. */
	if (FUNC27(dev, PCIY_EXPRESS, &i) == 0) {
		sc->ale_flags |= ALE_FLAG_PCIE;
		burst = FUNC31(dev, i + 0x08, 2);
		/* Max read request size. */
		sc->ale_dma_rd_burst = ((burst >> 12) & 0x07) <<
		    DMA_CFG_RD_BURST_SHIFT;
		/* Max payload size. */
		sc->ale_dma_wr_burst = ((burst >> 5) & 0x07) <<
		    DMA_CFG_WR_BURST_SHIFT;
		if (bootverbose) {
			FUNC17(dev, "Read request size : %d bytes.\n",
			    128 << ((burst >> 12) & 0x07));
			FUNC17(dev, "TLP payload size : %d bytes.\n",
			    128 << ((burst >> 5) & 0x07));
		}
	} else {
		sc->ale_dma_rd_burst = DMA_CFG_RD_BURST_128;
		sc->ale_dma_wr_burst = DMA_CFG_WR_BURST_128;
	}

	/* Create device sysctl node. */
	FUNC9(sc);

	if ((error = FUNC5(sc)) != 0)
		goto fail;

	/* Load station address. */
	FUNC6(sc);

	ifp = sc->ale_ifp = FUNC20(IFT_ETHER);
	if (ifp == NULL) {
		FUNC17(dev, "cannot allocate ifnet structure.\n");
		error = ENXIO;
		goto fail;
	}

	ifp->if_softc = sc;
	FUNC21(ifp, FUNC13(dev), FUNC16(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = ale_ioctl;
	ifp->if_start = ale_start;
	ifp->if_init = ale_init;
	ifp->if_snd.ifq_drv_maxlen = ALE_TX_RING_CNT - 1;
	FUNC1(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC2(&ifp->if_snd);
	ifp->if_capabilities = IFCAP_RXCSUM | IFCAP_TXCSUM | IFCAP_TSO4;
	ifp->if_hwassist = ALE_CSUM_FEATURES | CSUM_TSO;
	if (FUNC27(dev, PCIY_PMG, &pmc) == 0) {
		sc->ale_flags |= ALE_FLAG_PMCAP;
		ifp->if_capabilities |= IFCAP_WOL_MAGIC | IFCAP_WOL_MCAST;
	}
	ifp->if_capenable = ifp->if_capabilities;

	/* Set up MII bus. */
	error = FUNC22(dev, &sc->ale_miibus, ifp, ale_mediachange,
	    ale_mediastatus, BMSR_DEFCAPMASK, sc->ale_phyaddr, MII_OFFSET_ANY,
	    MIIF_DOPAUSE);
	if (error != 0) {
		FUNC17(dev, "attaching PHYs failed\n");
		goto fail;
	}

	FUNC18(ifp, sc->ale_eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
	    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO;
	ifp->if_capenable = ifp->if_capabilities;
	/*
	 * Even though controllers supported by ale(3) have Rx checksum
	 * offload bug the workaround for fragmented frames seemed to
	 * work so far. However it seems Rx checksum offload does not
	 * work under certain conditions. So disable Rx checksum offload
	 * until I find more clue about it but allow users to override it.
	 */
	ifp->if_capenable &= ~IFCAP_RXCSUM;

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Create local taskq. */
	sc->ale_tq = FUNC33("ale_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->ale_tq);
	if (sc->ale_tq == NULL) {
		FUNC17(dev, "could not create taskqueue.\n");
		FUNC19(ifp);
		error = ENXIO;
		goto fail;
	}
	FUNC35(&sc->ale_tq, 1, PI_NET, "%s taskq",
	    FUNC14(sc->ale_dev));

	if ((sc->ale_flags & ALE_FLAG_MSIX) != 0)
		msic = ALE_MSIX_MESSAGES;
	else if ((sc->ale_flags & ALE_FLAG_MSI) != 0)
		msic = ALE_MSI_MESSAGES;
	else
		msic = 1;
	for (i = 0; i < msic; i++) {
		error = FUNC11(dev, sc->ale_irq[i],
		    INTR_TYPE_NET | INTR_MPSAFE, ale_intr, NULL, sc,
		    &sc->ale_intrhand[i]);
		if (error != 0)
			break;
	}
	if (error != 0) {
		FUNC17(dev, "could not set up interrupt handler.\n");
		FUNC34(sc->ale_tq);
		sc->ale_tq = NULL;
		FUNC19(ifp);
		goto fail;
	}

fail:
	if (error != 0)
		FUNC4(dev);

	return (error);
}