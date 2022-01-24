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
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_2__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct alc_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct alc_softc {int alc_flags; int alc_chip_rev; int alc_dma_rd_burst; int alc_dma_wr_burst; int alc_expcap; int alc_pmcap; int /*<<< orphan*/ * alc_tq; int /*<<< orphan*/ * alc_intrhand; int /*<<< orphan*/ * alc_irq; int /*<<< orphan*/  alc_dev; int /*<<< orphan*/  alc_eaddr; int /*<<< orphan*/  alc_phyaddr; int /*<<< orphan*/  alc_miibus; struct ifnet* alc_ifp; int /*<<< orphan*/  alc_irq_spec; int /*<<< orphan*/  alc_rcb; int /*<<< orphan*/  alc_rev; TYPE_1__* alc_ident; int /*<<< orphan*/ * alc_res; int /*<<< orphan*/  alc_res_spec; int /*<<< orphan*/  alc_int_task; int /*<<< orphan*/  alc_mtx; int /*<<< orphan*/  alc_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int deviceid; } ;

/* Variables and functions */
 int ALC_CSUM_FEATURES ; 
 int ALC_FLAG_APS ; 
 int ALC_FLAG_AR816X_FAMILY ; 
 int ALC_FLAG_CMB_BUG ; 
 int ALC_FLAG_E2X00 ; 
 int ALC_FLAG_FASTETHER ; 
 int ALC_FLAG_JUMBO ; 
 int ALC_FLAG_LINK_WAR ; 
 int ALC_FLAG_MSI ; 
 int ALC_FLAG_MSIX ; 
 int ALC_FLAG_PCIE ; 
 int ALC_FLAG_PM ; 
 int ALC_FLAG_SMB_BUG ; 
 int /*<<< orphan*/  ALC_MASTER_CFG ; 
 int ALC_MSIX_MESSAGES ; 
 int ALC_MSI_MESSAGES ; 
 int /*<<< orphan*/  ALC_PHY_ADDR ; 
 int /*<<< orphan*/  ALC_SRAM_RX_FIFO_LEN ; 
 int /*<<< orphan*/  ALC_SRAM_TX_FIFO_LEN ; 
 scalar_t__ ALC_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int FUNC1 (struct alc_softc*,scalar_t__) ; 
 int FUNC2 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int CSUM_TSO ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
#define  DEVICEID_ATHEROS_AR8132 139 
#define  DEVICEID_ATHEROS_AR8151 138 
#define  DEVICEID_ATHEROS_AR8151_V2 137 
#define  DEVICEID_ATHEROS_AR8152_B 136 
#define  DEVICEID_ATHEROS_AR8152_B2 135 
#define  DEVICEID_ATHEROS_AR8161 134 
#define  DEVICEID_ATHEROS_AR8162 133 
#define  DEVICEID_ATHEROS_AR8171 132 
#define  DEVICEID_ATHEROS_AR8172 131 
#define  DEVICEID_ATHEROS_E2200 130 
#define  DEVICEID_ATHEROS_E2400 129 
#define  DEVICEID_ATHEROS_E2500 128 
 int /*<<< orphan*/  DMA_CFG_RCB_64 ; 
 int ENXIO ; 
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
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MASTER_CHIP_REV_SHIFT ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PCIEM_CTL_MAX_PAYLOAD ; 
 int PCIEM_CTL_MAX_READ_REQUEST ; 
 scalar_t__ PCIER_DEVICE_CTL ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct alc_softc*) ; 
 int /*<<< orphan*/  VENDORID_ATHEROS ; 
 int /*<<< orphan*/  alc ; 
 int /*<<< orphan*/  FUNC7 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct alc_softc*) ; 
 int* alc_dma_burst ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct alc_softc*) ; 
 int /*<<< orphan*/  alc_init ; 
 int /*<<< orphan*/  FUNC12 (struct alc_softc*) ; 
 int /*<<< orphan*/  alc_int_task ; 
 int /*<<< orphan*/  alc_intr ; 
 int /*<<< orphan*/  alc_ioctl ; 
 int /*<<< orphan*/  alc_irq_spec_legacy ; 
 int /*<<< orphan*/  alc_irq_spec_msi ; 
 int /*<<< orphan*/  alc_irq_spec_msix ; 
 int /*<<< orphan*/  alc_mediachange ; 
 int /*<<< orphan*/  alc_mediastatus ; 
 int /*<<< orphan*/  FUNC13 (struct alc_softc*) ; 
 int /*<<< orphan*/  alc_res_spec_mem ; 
 int /*<<< orphan*/  FUNC14 (struct alc_softc*) ; 
 int /*<<< orphan*/  alc_start ; 
 int /*<<< orphan*/  FUNC15 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct alc_softc*) ; 
 scalar_t__ bootverbose ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct alc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 struct alc_softc* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ifnet*) ; 
 struct ifnet* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ msi_disable ; 
 scalar_t__ msix_disable ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int FUNC38 (int /*<<< orphan*/ ) ; 
 int FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC41 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC44(device_t dev)
{
	struct alc_softc *sc;
	struct ifnet *ifp;
	int base, error, i, msic, msixc;
	uint16_t burst;

	error = 0;
	sc = FUNC22(dev);
	sc->alc_dev = dev;
	sc->alc_rev = FUNC35(dev);

	FUNC30(&sc->alc_mtx, FUNC21(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC19(&sc->alc_tick_ch, &sc->alc_mtx, 0);
	FUNC6(&sc->alc_int_task, 0, alc_int_task, sc);
	sc->alc_ident = FUNC10(dev);

	/* Map the device. */
	FUNC33(dev);
	sc->alc_res_spec = alc_res_spec_mem;
	sc->alc_irq_spec = alc_irq_spec_legacy;
	error = FUNC17(dev, sc->alc_res_spec, sc->alc_res);
	if (error != 0) {
		FUNC24(dev, "cannot allocate memory resources.\n");
		goto fail;
	}

	/* Set PHY address. */
	sc->alc_phyaddr = ALC_PHY_ADDR;

	/*
	 * One odd thing is AR8132 uses the same PHY hardware(F1
	 * gigabit PHY) of AR8131. So atphy(4) of AR8132 reports
	 * the PHY supports 1000Mbps but that's not true. The PHY
	 * used in AR8132 can't establish gigabit link even if it
	 * shows the same PHY model/revision number of AR8131.
	 */
	switch (sc->alc_ident->deviceid) {
	case DEVICEID_ATHEROS_E2200:
	case DEVICEID_ATHEROS_E2400:
	case DEVICEID_ATHEROS_E2500:
		sc->alc_flags |= ALC_FLAG_E2X00;
		/* FALLTHROUGH */
	case DEVICEID_ATHEROS_AR8161:
		if (FUNC37(dev) == VENDORID_ATHEROS &&
		    FUNC36(dev) == 0x0091 && sc->alc_rev == 0)
			sc->alc_flags |= ALC_FLAG_LINK_WAR;
		/* FALLTHROUGH */
	case DEVICEID_ATHEROS_AR8171:
		sc->alc_flags |= ALC_FLAG_AR816X_FAMILY;
		break;
	case DEVICEID_ATHEROS_AR8162:
	case DEVICEID_ATHEROS_AR8172:
		sc->alc_flags |= ALC_FLAG_FASTETHER | ALC_FLAG_AR816X_FAMILY;
		break;
	case DEVICEID_ATHEROS_AR8152_B:
	case DEVICEID_ATHEROS_AR8152_B2:
		sc->alc_flags |= ALC_FLAG_APS;
		/* FALLTHROUGH */
	case DEVICEID_ATHEROS_AR8132:
		sc->alc_flags |= ALC_FLAG_FASTETHER;
		break;
	case DEVICEID_ATHEROS_AR8151:
	case DEVICEID_ATHEROS_AR8151_V2:
		sc->alc_flags |= ALC_FLAG_APS;
		/* FALLTHROUGH */
	default:
		break;
	}
	sc->alc_flags |= ALC_FLAG_JUMBO;

	/*
	 * It seems that AR813x/AR815x has silicon bug for SMB. In
	 * addition, Atheros said that enabling SMB wouldn't improve
	 * performance. However I think it's bad to access lots of
	 * registers to extract MAC statistics.
	 */
	sc->alc_flags |= ALC_FLAG_SMB_BUG;
	/*
	 * Don't use Tx CMB. It is known to have silicon bug.
	 */
	sc->alc_flags |= ALC_FLAG_CMB_BUG;
	sc->alc_chip_rev = FUNC2(sc, ALC_MASTER_CFG) >>
	    MASTER_CHIP_REV_SHIFT;
	if (bootverbose) {
		FUNC24(dev, "PCI device revision : 0x%04x\n",
		    sc->alc_rev);
		FUNC24(dev, "Chip id/revision : 0x%04x\n",
		    sc->alc_chip_rev);
		if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
			FUNC24(dev, "AR816x revision : 0x%x\n",
			    FUNC0(sc->alc_rev));
	}
	FUNC24(dev, "%u Tx FIFO, %u Rx FIFO\n",
	    FUNC2(sc, ALC_SRAM_TX_FIFO_LEN) * 8,
	    FUNC2(sc, ALC_SRAM_RX_FIFO_LEN) * 8);

	/* Initialize DMA parameters. */
	sc->alc_dma_rd_burst = 0;
	sc->alc_dma_wr_burst = 0;
	sc->alc_rcb = DMA_CFG_RCB_64;
	if (FUNC34(dev, PCIY_EXPRESS, &base) == 0) {
		sc->alc_flags |= ALC_FLAG_PCIE;
		sc->alc_expcap = base;
		burst = FUNC1(sc, base + PCIER_DEVICE_CTL);
		sc->alc_dma_rd_burst =
		    (burst & PCIEM_CTL_MAX_READ_REQUEST) >> 12;
		sc->alc_dma_wr_burst = (burst & PCIEM_CTL_MAX_PAYLOAD) >> 5;
		if (bootverbose) {
			FUNC24(dev, "Read request size : %u bytes.\n",
			    alc_dma_burst[sc->alc_dma_rd_burst]);
			FUNC24(dev, "TLP payload size : %u bytes.\n",
			    alc_dma_burst[sc->alc_dma_wr_burst]);
		}
		if (alc_dma_burst[sc->alc_dma_rd_burst] > 1024)
			sc->alc_dma_rd_burst = 3;
		if (alc_dma_burst[sc->alc_dma_wr_burst] > 1024)
			sc->alc_dma_wr_burst = 3;
		/*
		 * Force maximum payload size to 128 bytes for
		 * E2200/E2400/E2500.
		 * Otherwise it triggers DMA write error.
		 */
		if ((sc->alc_flags & ALC_FLAG_E2X00) != 0)
			sc->alc_dma_wr_burst = 0;
		FUNC12(sc);
	}

	/* Reset PHY. */
	FUNC13(sc);

	/* Reset the ethernet controller. */
	FUNC15(sc);
	FUNC14(sc);

	/* Allocate IRQ resources. */
	msixc = FUNC39(dev);
	msic = FUNC38(dev);
	if (bootverbose) {
		FUNC24(dev, "MSIX count : %d\n", msixc);
		FUNC24(dev, "MSI count : %d\n", msic);
	}
	if (msixc > 1)
		msixc = 1;
	if (msic > 1)
		msic = 1;
	/*
	 * Prefer MSIX over MSI.
	 * AR816x controller has a silicon bug that MSI interrupt
	 * does not assert if PCIM_CMD_INTxDIS bit of command
	 * register is set.  pci(4) was taught to handle that case.
	 */
	if (msix_disable == 0 || msi_disable == 0) {
		if (msix_disable == 0 && msixc > 0 &&
		    FUNC32(dev, &msixc) == 0) {
			if (msic == 1) {
				FUNC24(dev,
				    "Using %d MSIX message(s).\n", msixc);
				sc->alc_flags |= ALC_FLAG_MSIX;
				sc->alc_irq_spec = alc_irq_spec_msix;
			} else
				FUNC40(dev);
		}
		if (msi_disable == 0 && (sc->alc_flags & ALC_FLAG_MSIX) == 0 &&
		    msic > 0 && FUNC31(dev, &msic) == 0) {
			if (msic == 1) {
				FUNC24(dev,
				    "Using %d MSI message(s).\n", msic);
				sc->alc_flags |= ALC_FLAG_MSI;
				sc->alc_irq_spec = alc_irq_spec_msi;
			} else
				FUNC40(dev);
		}
	}

	error = FUNC17(dev, sc->alc_irq_spec, sc->alc_irq);
	if (error != 0) {
		FUNC24(dev, "cannot allocate IRQ resources.\n");
		goto fail;
	}

	/* Create device sysctl node. */
	FUNC16(sc);

	if ((error = FUNC9(sc)) != 0)
		goto fail;

	/* Load station address. */
	FUNC11(sc);

	ifp = sc->alc_ifp = FUNC27(IFT_ETHER);
	if (ifp == NULL) {
		FUNC24(dev, "cannot allocate ifnet structure.\n");
		error = ENXIO;
		goto fail;
	}

	ifp->if_softc = sc;
	FUNC28(ifp, FUNC20(dev), FUNC23(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = alc_ioctl;
	ifp->if_start = alc_start;
	ifp->if_init = alc_init;
	ifp->if_snd.ifq_drv_maxlen = ALC_TX_RING_CNT - 1;
	FUNC4(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
	FUNC5(&ifp->if_snd);
	ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_TSO4;
	ifp->if_hwassist = ALC_CSUM_FEATURES | CSUM_TSO;
	if (FUNC34(dev, PCIY_PMG, &base) == 0) {
		ifp->if_capabilities |= IFCAP_WOL_MAGIC | IFCAP_WOL_MCAST;
		sc->alc_flags |= ALC_FLAG_PM;
		sc->alc_pmcap = base;
	}
	ifp->if_capenable = ifp->if_capabilities;

	/* Set up MII bus. */
	error = FUNC29(dev, &sc->alc_miibus, ifp, alc_mediachange,
	    alc_mediastatus, BMSR_DEFCAPMASK, sc->alc_phyaddr, MII_OFFSET_ANY,
	    MIIF_DOPAUSE);
	if (error != 0) {
		FUNC24(dev, "attaching PHYs failed\n");
		goto fail;
	}

	FUNC25(ifp, sc->alc_eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
	    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO;
	ifp->if_capenable = ifp->if_capabilities;
	/*
	 * XXX
	 * It seems enabling Tx checksum offloading makes more trouble.
	 * Sometimes the controller does not receive any frames when
	 * Tx checksum offloading is enabled. I'm not sure whether this
	 * is a bug in Tx checksum offloading logic or I got broken
	 * sample boards. To safety, don't enable Tx checksum offloading
	 * by default but give chance to users to toggle it if they know
	 * their controllers work without problems.
	 * Fortunately, Tx checksum offloading for AR816x family
	 * seems to work.
	 */
	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) == 0) {
		ifp->if_capenable &= ~IFCAP_TXCSUM;
		ifp->if_hwassist &= ~ALC_CSUM_FEATURES;
	}

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* Create local taskq. */
	sc->alc_tq = FUNC41("alc_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->alc_tq);
	if (sc->alc_tq == NULL) {
		FUNC24(dev, "could not create taskqueue.\n");
		FUNC26(ifp);
		error = ENXIO;
		goto fail;
	}
	FUNC43(&sc->alc_tq, 1, PI_NET, "%s taskq",
	    FUNC21(sc->alc_dev));

	FUNC7(sc);
	if ((sc->alc_flags & ALC_FLAG_MSIX) != 0)
		msic = ALC_MSIX_MESSAGES;
	else if ((sc->alc_flags & ALC_FLAG_MSI) != 0)
		msic = ALC_MSI_MESSAGES;
	else
		msic = 1;
	for (i = 0; i < msic; i++) {
		error = FUNC18(dev, sc->alc_irq[i],
		    INTR_TYPE_NET | INTR_MPSAFE, alc_intr, NULL, sc,
		    &sc->alc_intrhand[i]);
		if (error != 0)
			break;
	}
	if (error != 0) {
		FUNC24(dev, "could not set up interrupt handler.\n");
		FUNC42(sc->alc_tq);
		sc->alc_tq = NULL;
		FUNC26(ifp);
		goto fail;
	}

	/* Attach driver debugnet methods. */
	FUNC3(ifp, alc);

fail:
	if (error != 0)
		FUNC8(dev);

	return (error);
}