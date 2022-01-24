#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u_char ;
struct fxp_tx {int /*<<< orphan*/  tx_map; struct fxp_cb_tx* tx_cb; } ;
struct fxp_stats {int dummy; } ;
struct TYPE_3__ {struct fxp_rx* rx_list; int /*<<< orphan*/ * rx_tail; int /*<<< orphan*/  rx_head; struct fxp_cb_tx* cbl_list; struct fxp_tx* tx_list; int /*<<< orphan*/  cbl_addr; } ;
struct fxp_softc {scalar_t__ fxp_spec; scalar_t__ revision; int* eeprom; int flags; int eeprom_size; int rfa_size; int maxtxseg; int maxsegsize; void* ifp; int /*<<< orphan*/  ih; int /*<<< orphan*/ * fxp_res; int /*<<< orphan*/  miibus; int /*<<< orphan*/  sc_media; int /*<<< orphan*/  fxp_rxmtag; TYPE_1__ fxp_desc; int /*<<< orphan*/  spare_map; int /*<<< orphan*/  fxp_txmtag; int /*<<< orphan*/  mcs_addr; struct fxp_cb_tx* mcsp; int /*<<< orphan*/  mcs_map; int /*<<< orphan*/  mcs_tag; int /*<<< orphan*/  cbl_map; int /*<<< orphan*/  cbl_tag; int /*<<< orphan*/  stats_addr; struct fxp_cb_tx* fxp_stats; int /*<<< orphan*/  fxp_smap; int /*<<< orphan*/  fxp_stag; int /*<<< orphan*/  tx_cmd; TYPE_2__* ident; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  stat_ch; } ;
struct fxp_rx {int /*<<< orphan*/  rx_map; } ;
struct fxp_rfa {int dummy; } ;
struct fxp_cb_tx {int dummy; } ;
struct fxp_cb_mcs {int dummy; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  ifm_stat_cb_t ;
typedef  int /*<<< orphan*/  ifm_change_cb_t ;
typedef  void* if_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int ich; int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CSUM_TSO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FXP_CB_COMMAND_IPCBXMIT ; 
 int /*<<< orphan*/  FXP_CB_COMMAND_XMIT ; 
 int /*<<< orphan*/  FXP_CSR_PMDR ; 
 int /*<<< orphan*/  FXP_CSR_PORT ; 
 int /*<<< orphan*/  FXP_CSR_SCB_INTRCNTL ; 
 int FXP_CSUM_FEATURES ; 
 size_t FXP_EEPROM_MAP_CNTR ; 
 size_t FXP_EEPROM_MAP_COMPAT ; 
 size_t FXP_EEPROM_MAP_IA0 ; 
 size_t FXP_EEPROM_MAP_IA1 ; 
 size_t FXP_EEPROM_MAP_IA2 ; 
 size_t FXP_EEPROM_MAP_ID ; 
 size_t FXP_EEPROM_MAP_PRI_PHY ; 
 int FXP_FLAG_82559_RXCSUM ; 
 int FXP_FLAG_CU_RESUME_BUG ; 
 int FXP_FLAG_EXT_RFA ; 
 int FXP_FLAG_EXT_TXCB ; 
 int FXP_FLAG_LONG_PKT_EN ; 
 int FXP_FLAG_MWI_ENABLE ; 
 int FXP_FLAG_NO_UCODE ; 
 int FXP_FLAG_RXBUG ; 
 int FXP_FLAG_SAVE_BAD ; 
 int FXP_FLAG_SERIAL_MEDIA ; 
 int FXP_FLAG_WOLCAP ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*) ; 
 int FXP_NRFABUFS ; 
 int FXP_NTXCB ; 
 int FXP_NTXSEG ; 
 int FXP_PHY_DEVICE_MASK ; 
 int FXP_PHY_SERIAL_ONLY ; 
 int /*<<< orphan*/  FXP_PORT_SELECTIVE_RESET ; 
 int /*<<< orphan*/  FXP_PORT_SOFTWARE_RESET ; 
 scalar_t__ FXP_REV_82550 ; 
 scalar_t__ FXP_REV_82550_C ; 
 scalar_t__ FXP_REV_82551_10 ; 
 scalar_t__ FXP_REV_82551_E ; 
 scalar_t__ FXP_REV_82551_F ; 
 scalar_t__ FXP_REV_82557 ; 
 scalar_t__ FXP_REV_82558_A4 ; 
 scalar_t__ FXP_REV_82559S_A ; 
 scalar_t__ FXP_REV_82559_A0 ; 
 int FXP_RFAX_LEN ; 
 int /*<<< orphan*/  FXP_SCB_INTR_DISABLE ; 
 int FXP_TSO_SEGSIZE ; 
 int FXP_TXCB_SZ ; 
 int /*<<< orphan*/  FUNC5 (struct fxp_softc*) ; 
 int /*<<< orphan*/  Giant ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_ETHER ; 
 int IFM_MANUAL ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MCLBYTES ; 
 int MIIF_DOPAUSE ; 
 int MIIF_NOISOLATE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int PCIM_CMD_MWRICEN ; 
 int /*<<< orphan*/  PCIR_CACHELNSZ ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 scalar_t__ bootverbose ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fxp_cb_tx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fxp_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct fxp_softc* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (void*,int*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (struct fxp_softc*,struct fxp_rx*) ; 
 int /*<<< orphan*/  FUNC22 (struct fxp_softc*) ; 
 int /*<<< orphan*/  fxp_dma_map_addr ; 
 TYPE_2__* FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ fxp_ifmedia_sts ; 
 scalar_t__ fxp_ifmedia_upd ; 
 int /*<<< orphan*/  fxp_init ; 
 int /*<<< orphan*/  FUNC24 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fxp_intr ; 
 int /*<<< orphan*/  fxp_ioctl ; 
 int /*<<< orphan*/  FUNC25 (struct fxp_softc*) ; 
 scalar_t__ FUNC26 (struct fxp_softc*,struct fxp_rx*) ; 
 int /*<<< orphan*/  FUNC27 (struct fxp_softc*) ; 
 void* fxp_res_spec_io ; 
 scalar_t__ fxp_res_spec_mem ; 
 int /*<<< orphan*/  fxp_serial_ifmedia_sts ; 
 int /*<<< orphan*/  fxp_serial_ifmedia_upd ; 
 int /*<<< orphan*/  fxp_start ; 
 int /*<<< orphan*/  FUNC28 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC29 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC30 (struct fxp_softc*,int*,int,int) ; 
 void* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (void*,int) ; 
 int /*<<< orphan*/  FUNC39 (void*,int) ; 
 int /*<<< orphan*/  FUNC40 (void*,int) ; 
 int /*<<< orphan*/  FUNC41 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (void*,int) ; 
 int /*<<< orphan*/  FUNC44 (void*) ; 
 int /*<<< orphan*/  FUNC45 (void*,struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC46 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int) ; 
 int FUNC50 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC53 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC55 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC59 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC60 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC61(device_t dev)
{
	struct fxp_softc *sc;
	struct fxp_cb_tx *tcbp;
	struct fxp_tx *txp;
	struct fxp_rx *rxp;
	if_t ifp;
	uint32_t val;
	uint16_t data;
	u_char eaddr[ETHER_ADDR_LEN];
	int error, flags, i, pmc, prefer_iomap;

	error = 0;
	sc = FUNC16(dev);
	sc->dev = dev;
	FUNC51(&sc->sc_mtx, FUNC15(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC13(&sc->stat_ch, &sc->sc_mtx, 0);
	FUNC48(&sc->sc_media, 0, fxp_serial_ifmedia_upd,
	    fxp_serial_ifmedia_sts);

	ifp = sc->ifp = FUNC31(IFT_ETHER);
	if (ifp == (void *)NULL) {
		FUNC18(dev, "can not if_alloc()\n");
		error = ENOSPC;
		goto fail;
	}

	/*
	 * Enable bus mastering.
	 */
	FUNC52(dev);

	/*
	 * Figure out which we should try first - memory mapping or i/o mapping?
	 * We default to memory mapping. Then we accept an override from the
	 * command line. Then we check to see which one is enabled.
	 */
	prefer_iomap = 0;
	FUNC60(FUNC14(dev), FUNC17(dev),
	    "prefer_iomap", &prefer_iomap);
	if (prefer_iomap)
		sc->fxp_spec = fxp_res_spec_io;
	else
		sc->fxp_spec = fxp_res_spec_mem;

	error = FUNC6(dev, sc->fxp_spec, sc->fxp_res);
	if (error) {
		if (sc->fxp_spec == fxp_res_spec_mem)
			sc->fxp_spec = fxp_res_spec_io;
		else
			sc->fxp_spec = fxp_res_spec_mem;
		error = FUNC6(dev, sc->fxp_spec, sc->fxp_res);
	}
	if (error) {
		FUNC18(dev, "could not allocate resources\n");
		error = ENXIO;
		goto fail;
	}

	if (bootverbose) {
		FUNC18(dev, "using %s space register mapping\n",
		   sc->fxp_spec == fxp_res_spec_mem ? "memory" : "I/O");
	}

	/*
	 * Put CU/RU idle state and prepare full reset.
	 */
	FUNC2(sc, FXP_CSR_PORT, FXP_PORT_SELECTIVE_RESET);
	FUNC3(10);
	/* Full reset and disable interrupts. */
	FUNC2(sc, FXP_CSR_PORT, FXP_PORT_SOFTWARE_RESET);
	FUNC3(10);
	FUNC1(sc, FXP_CSR_SCB_INTRCNTL, FXP_SCB_INTR_DISABLE);

	/*
	 * Find out how large of an SEEPROM we have.
	 */
	FUNC22(sc);
	FUNC25(sc);

	/*
	 * Find out the chip revision; lump all 82557 revs together.
	 */
	sc->ident = FUNC23(dev);
	if (sc->ident->ich > 0) {
		/* Assume ICH controllers are 82559. */
		sc->revision = FXP_REV_82559_A0;
	} else {
		data = sc->eeprom[FXP_EEPROM_MAP_CNTR];
		if ((data >> 8) == 1)
			sc->revision = FXP_REV_82557;
		else
			sc->revision = FUNC55(dev);
	}

	/*
	 * Check availability of WOL. 82559ER does not support WOL.
	 */
	if (sc->revision >= FXP_REV_82558_A4 &&
	    sc->revision != FXP_REV_82559S_A) {
		data = sc->eeprom[FXP_EEPROM_MAP_ID];
		if ((data & 0x20) != 0 &&
		    FUNC53(sc->dev, PCIY_PMG, &pmc) == 0)
			sc->flags |= FXP_FLAG_WOLCAP;
	}

	if (sc->revision == FXP_REV_82550_C) {
		/*
		 * 82550C with server extension requires microcode to
		 * receive fragmented UDP datagrams.  However if the
		 * microcode is used for client-only featured 82550C
		 * it locks up controller.
		 */
		data = sc->eeprom[FXP_EEPROM_MAP_COMPAT];
		if ((data & 0x0400) == 0)
			sc->flags |= FXP_FLAG_NO_UCODE;
	}

	/* Receiver lock-up workaround detection. */
	if (sc->revision < FXP_REV_82558_A4) {
		data = sc->eeprom[FXP_EEPROM_MAP_COMPAT];
		if ((data & 0x03) != 0x03) {
			sc->flags |= FXP_FLAG_RXBUG;
			FUNC18(dev, "Enabling Rx lock-up workaround\n");
		}
	}

	/*
	 * Determine whether we must use the 503 serial interface.
	 */
	data = sc->eeprom[FXP_EEPROM_MAP_PRI_PHY];
	if (sc->revision == FXP_REV_82557 && (data & FXP_PHY_DEVICE_MASK) != 0
	    && (data & FXP_PHY_SERIAL_ONLY))
		sc->flags |= FXP_FLAG_SERIAL_MEDIA;

	FUNC29(sc);
	/*
	 * Enable workarounds for certain chip revision deficiencies.
	 *
	 * Systems based on the ICH2/ICH2-M chip from Intel, and possibly
	 * some systems based a normal 82559 design, have a defect where
	 * the chip can cause a PCI protocol violation if it receives
	 * a CU_RESUME command when it is entering the IDLE state.  The
	 * workaround is to disable Dynamic Standby Mode, so the chip never
	 * deasserts CLKRUN#, and always remains in an active state.
	 *
	 * See Intel 82801BA/82801BAM Specification Update, Errata #30.
	 */
	if ((sc->ident->ich >= 2 && sc->ident->ich <= 3) ||
	    (sc->ident->ich == 0 && sc->revision >= FXP_REV_82559_A0)) {
		data = sc->eeprom[FXP_EEPROM_MAP_ID];
		if (data & 0x02) {			/* STB enable */
			uint16_t cksum;
			int i;

			FUNC18(dev,
			    "Disabling dynamic standby mode in EEPROM\n");
			data &= ~0x02;
			sc->eeprom[FXP_EEPROM_MAP_ID] = data;
			FUNC30(sc, &data, FXP_EEPROM_MAP_ID, 1);
			FUNC18(dev, "New EEPROM ID: 0x%x\n", data);
			cksum = 0;
			for (i = 0; i < (1 << sc->eeprom_size) - 1; i++)
				cksum += sc->eeprom[i];
			i = (1 << sc->eeprom_size) - 1;
			cksum = 0xBABA - cksum;
			FUNC30(sc, &cksum, i, 1);
			FUNC18(dev,
			    "EEPROM checksum @ 0x%x: 0x%x -> 0x%x\n",
			    i, sc->eeprom[i], cksum);
			sc->eeprom[i] = cksum;
			/*
			 * If the user elects to continue, try the software
			 * workaround, as it is better than nothing.
			 */
			sc->flags |= FXP_FLAG_CU_RESUME_BUG;
		}
	}

	/*
	 * If we are not a 82557 chip, we can enable extended features.
	 */
	if (sc->revision != FXP_REV_82557) {
		/*
		 * If MWI is enabled in the PCI configuration, and there
		 * is a valid cacheline size (8 or 16 dwords), then tell
		 * the board to turn on MWI.
		 */
		val = FUNC59(dev, PCIR_COMMAND, 2);
		if (val & PCIM_CMD_MWRICEN &&
		    FUNC59(dev, PCIR_CACHELNSZ, 1) != 0)
			sc->flags |= FXP_FLAG_MWI_ENABLE;

		/* turn on the extended TxCB feature */
		sc->flags |= FXP_FLAG_EXT_TXCB;

		/* enable reception of long frames for VLAN */
		sc->flags |= FXP_FLAG_LONG_PKT_EN;
	} else {
		/* a hack to get long VLAN frames on a 82557 */
		sc->flags |= FXP_FLAG_SAVE_BAD;
	}

	/* For 82559 or later chips, Rx checksum offload is supported. */
	if (sc->revision >= FXP_REV_82559_A0) {
		/* 82559ER does not support Rx checksum offloading. */
		if (sc->ident->device != 0x1209)
			sc->flags |= FXP_FLAG_82559_RXCSUM;
	}
	/*
	 * Enable use of extended RFDs and TCBs for 82550
	 * and later chips. Note: we need extended TXCB support
	 * too, but that's already enabled by the code above.
	 * Be careful to do this only on the right devices.
	 */
	if (sc->revision == FXP_REV_82550 || sc->revision == FXP_REV_82550_C ||
	    sc->revision == FXP_REV_82551_E || sc->revision == FXP_REV_82551_F
	    || sc->revision == FXP_REV_82551_10) {
		sc->rfa_size = sizeof (struct fxp_rfa);
		sc->tx_cmd = FXP_CB_COMMAND_IPCBXMIT;
		sc->flags |= FXP_FLAG_EXT_RFA;
		/* Use extended RFA instead of 82559 checksum mode. */
		sc->flags &= ~FXP_FLAG_82559_RXCSUM;
	} else {
		sc->rfa_size = sizeof (struct fxp_rfa) - FXP_RFAX_LEN;
		sc->tx_cmd = FXP_CB_COMMAND_XMIT;
	}

	/*
	 * Allocate DMA tags and DMA safe memory.
	 */
	sc->maxtxseg = FXP_NTXSEG;
	sc->maxsegsize = MCLBYTES;
	if (sc->flags & FXP_FLAG_EXT_RFA) {
		sc->maxtxseg--;
		sc->maxsegsize = FXP_TSO_SEGSIZE;
	}
	error = FUNC7(FUNC11(dev), 2, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    sc->maxsegsize * sc->maxtxseg + sizeof(struct ether_vlan_header),
	    sc->maxtxseg, sc->maxsegsize, 0,
	    busdma_lock_mutex, &Giant, &sc->fxp_txmtag);
	if (error) {
		FUNC18(dev, "could not create TX DMA tag\n");
		goto fail;
	}

	error = FUNC7(FUNC11(dev), 2, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    MCLBYTES, 1, MCLBYTES, 0,
	    busdma_lock_mutex, &Giant, &sc->fxp_rxmtag);
	if (error) {
		FUNC18(dev, "could not create RX DMA tag\n");
		goto fail;
	}

	error = FUNC7(FUNC11(dev), 4, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    sizeof(struct fxp_stats), 1, sizeof(struct fxp_stats), 0,
	    busdma_lock_mutex, &Giant, &sc->fxp_stag);
	if (error) {
		FUNC18(dev, "could not create stats DMA tag\n");
		goto fail;
	}

	error = FUNC10(sc->fxp_stag, (void **)&sc->fxp_stats,
	    BUS_DMA_NOWAIT | BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->fxp_smap);
	if (error) {
		FUNC18(dev, "could not allocate stats DMA memory\n");
		goto fail;
	}
	error = FUNC9(sc->fxp_stag, sc->fxp_smap, sc->fxp_stats,
	    sizeof(struct fxp_stats), fxp_dma_map_addr, &sc->stats_addr,
	    BUS_DMA_NOWAIT);
	if (error) {
		FUNC18(dev, "could not load the stats DMA buffer\n");
		goto fail;
	}

	error = FUNC7(FUNC11(dev), 4, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    FXP_TXCB_SZ, 1, FXP_TXCB_SZ, 0,
	    busdma_lock_mutex, &Giant, &sc->cbl_tag);
	if (error) {
		FUNC18(dev, "could not create TxCB DMA tag\n");
		goto fail;
	}

	error = FUNC10(sc->cbl_tag, (void **)&sc->fxp_desc.cbl_list,
	    BUS_DMA_NOWAIT | BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->cbl_map);
	if (error) {
		FUNC18(dev, "could not allocate TxCB DMA memory\n");
		goto fail;
	}

	error = FUNC9(sc->cbl_tag, sc->cbl_map,
	    sc->fxp_desc.cbl_list, FXP_TXCB_SZ, fxp_dma_map_addr,
	    &sc->fxp_desc.cbl_addr, BUS_DMA_NOWAIT);
	if (error) {
		FUNC18(dev, "could not load TxCB DMA buffer\n");
		goto fail;
	}

	error = FUNC7(FUNC11(dev), 4, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    sizeof(struct fxp_cb_mcs), 1, sizeof(struct fxp_cb_mcs), 0,
	    busdma_lock_mutex, &Giant, &sc->mcs_tag);
	if (error) {
		FUNC18(dev,
		    "could not create multicast setup DMA tag\n");
		goto fail;
	}

	error = FUNC10(sc->mcs_tag, (void **)&sc->mcsp,
	    BUS_DMA_NOWAIT | BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->mcs_map);
	if (error) {
		FUNC18(dev,
		    "could not allocate multicast setup DMA memory\n");
		goto fail;
	}
	error = FUNC9(sc->mcs_tag, sc->mcs_map, sc->mcsp,
	    sizeof(struct fxp_cb_mcs), fxp_dma_map_addr, &sc->mcs_addr,
	    BUS_DMA_NOWAIT);
	if (error) {
		FUNC18(dev,
		    "can't load the multicast setup DMA buffer\n");
		goto fail;
	}

	/*
	 * Pre-allocate the TX DMA maps and setup the pointers to
	 * the TX command blocks.
	 */
	txp = sc->fxp_desc.tx_list;
	tcbp = sc->fxp_desc.cbl_list;
	for (i = 0; i < FXP_NTXCB; i++) {
		txp[i].tx_cb = tcbp + i;
		error = FUNC8(sc->fxp_txmtag, 0, &txp[i].tx_map);
		if (error) {
			FUNC18(dev, "can't create DMA map for TX\n");
			goto fail;
		}
	}
	error = FUNC8(sc->fxp_rxmtag, 0, &sc->spare_map);
	if (error) {
		FUNC18(dev, "can't create spare DMA map\n");
		goto fail;
	}

	/*
	 * Pre-allocate our receive buffers.
	 */
	sc->fxp_desc.rx_head = *(sc->fxp_desc.rx_tail = NULL);
	for (i = 0; i < FXP_NRFABUFS; i++) {
		rxp = &sc->fxp_desc.rx_list[i];
		error = FUNC8(sc->fxp_rxmtag, 0, &rxp->rx_map);
		if (error) {
			FUNC18(dev, "can't create DMA map for RX\n");
			goto fail;
		}
		if (FUNC26(sc, rxp) != 0) {
			error = ENOMEM;
			goto fail;
		}
		FUNC21(sc, rxp);
	}

	/*
	 * Read MAC address.
	 */
	eaddr[0] = sc->eeprom[FXP_EEPROM_MAP_IA0] & 0xff;
	eaddr[1] = sc->eeprom[FXP_EEPROM_MAP_IA0] >> 8;
	eaddr[2] = sc->eeprom[FXP_EEPROM_MAP_IA1] & 0xff;
	eaddr[3] = sc->eeprom[FXP_EEPROM_MAP_IA1] >> 8;
	eaddr[4] = sc->eeprom[FXP_EEPROM_MAP_IA2] & 0xff;
	eaddr[5] = sc->eeprom[FXP_EEPROM_MAP_IA2] >> 8;
	if (bootverbose) {
		FUNC18(dev, "PCI IDs: %04x %04x %04x %04x %04x\n",
		    FUNC58(dev), FUNC54(dev),
		    FUNC57(dev), FUNC56(dev),
		    FUNC55(dev));
		FUNC18(dev, "Dynamic Standby mode is %s\n",
		    sc->eeprom[FXP_EEPROM_MAP_ID] & 0x02 ? "enabled" :
		    "disabled");
	}

	/*
	 * If this is only a 10Mbps device, then there is no MII, and
	 * the PHY will use a serial interface instead.
	 *
	 * The Seeq 80c24 AutoDUPLEX(tm) Ethernet Interface Adapter
	 * doesn't have a programming interface of any sort.  The
	 * media is sensed automatically based on how the link partner
	 * is configured.  This is, in essence, manual configuration.
	 */
	if (sc->flags & FXP_FLAG_SERIAL_MEDIA) {
		FUNC47(&sc->sc_media, IFM_ETHER|IFM_MANUAL, 0, NULL);
		FUNC49(&sc->sc_media, IFM_ETHER|IFM_MANUAL);
	} else {
		/*
		 * i82557 wedge when isolating all of their PHYs.
		 */
		flags = MIIF_NOISOLATE;
		if (sc->revision >= FXP_REV_82558_A4)
			flags |= MIIF_DOPAUSE;
		error = FUNC50(dev, &sc->miibus, ifp,
		    (ifm_change_cb_t)fxp_ifmedia_upd,
		    (ifm_stat_cb_t)fxp_ifmedia_sts, BMSR_DEFCAPMASK,
		    MII_PHY_ANY, MII_OFFSET_ANY, flags);
		if (error != 0) {
			FUNC18(dev, "attaching PHYs failed\n");
			goto fail;
		}
	}

	FUNC32(ifp, FUNC14(dev), FUNC17(dev));
	FUNC37(ifp, dev);
	FUNC41(ifp, fxp_init);
	FUNC45(ifp, sc);
	FUNC38(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
	FUNC42(ifp, fxp_ioctl);
	FUNC46(ifp, fxp_start);

	FUNC33(ifp, 0);
	FUNC35(ifp, 0);

	/* Enable checksum offload/TSO for 82550 or better chips */
	if (sc->flags & FXP_FLAG_EXT_RFA) {
		FUNC39(ifp, FXP_CSUM_FEATURES | CSUM_TSO);
		FUNC34(ifp, IFCAP_HWCSUM | IFCAP_TSO4, 0);
		FUNC36(ifp, IFCAP_HWCSUM | IFCAP_TSO4, 0);
	}

	if (sc->flags & FXP_FLAG_82559_RXCSUM) {
		FUNC34(ifp, IFCAP_RXCSUM, 0);
		FUNC36(ifp, IFCAP_RXCSUM, 0);
	}

	if (sc->flags & FXP_FLAG_WOLCAP) {
		FUNC34(ifp, IFCAP_WOL_MAGIC, 0);
		FUNC36(ifp, IFCAP_WOL_MAGIC, 0);
	}

#ifdef DEVICE_POLLING
	/* Inform the world we support polling. */
	if_setcapabilitiesbit(ifp, IFCAP_POLLING, 0);
#endif

	/*
	 * Attach the interface.
	 */
	FUNC19(ifp, eaddr);

	/*
	 * Tell the upper layer(s) we support long frames.
	 * Must appear after the call to ether_ifattach() because
	 * ether_ifattach() sets ifi_hdrlen to the default value.
	 */
	FUNC40(ifp, sizeof(struct ether_vlan_header));
	FUNC34(ifp, IFCAP_VLAN_MTU, 0);
	FUNC36(ifp, IFCAP_VLAN_MTU, 0);
	if ((sc->flags & FXP_FLAG_EXT_RFA) != 0) {
		FUNC34(ifp, IFCAP_VLAN_HWTAGGING |
		    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO, 0);
		FUNC36(ifp, IFCAP_VLAN_HWTAGGING |
		    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO, 0);
	}

	/*
	 * Let the system queue as many packets as we have available
	 * TX descriptors.
	 */
	FUNC43(ifp, FXP_NTXCB - 1);
	FUNC44(ifp);

	/*
	 * Hook our interrupt after all initialization is complete.
	 */
	error = FUNC12(dev, sc->fxp_res[1], INTR_TYPE_NET | INTR_MPSAFE,
			       NULL, fxp_intr, sc, &sc->ih);
	if (error) {
		FUNC18(dev, "could not setup irq\n");
		FUNC20(sc->ifp);
		goto fail;
	}

	/*
	 * Configure hardware to reject magic frames otherwise
	 * system will hang on recipt of magic frames.
	 */
	if ((sc->flags & FXP_FLAG_WOLCAP) != 0) {
		FUNC4(sc);
		/* Clear wakeup events. */
		FUNC1(sc, FXP_CSR_PMDR, FUNC0(sc, FXP_CSR_PMDR));
		FUNC24(sc, 0);
		FUNC28(sc);
		FUNC5(sc);
	}

fail:
	if (error)
		FUNC27(sc);
	return (error);
}