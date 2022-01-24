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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bge_softc {int bge_mfw_flags; scalar_t__ bge_asicrev; int bge_flags; scalar_t__ bge_chipid; int bge_expcap; int bge_pcixcap; int bge_msicap; int /*<<< orphan*/  bge_expmrq; int /*<<< orphan*/  bge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BGE_32BITTIME_66MHZ ; 
 int /*<<< orphan*/  BGE_APE_LOCK_GRC ; 
 scalar_t__ BGE_ASICREV_BCM5700 ; 
 scalar_t__ BGE_ASICREV_BCM5701 ; 
 scalar_t__ BGE_ASICREV_BCM5703 ; 
 scalar_t__ BGE_ASICREV_BCM5704 ; 
 scalar_t__ BGE_ASICREV_BCM5720 ; 
 scalar_t__ BGE_ASICREV_BCM5752 ; 
 scalar_t__ BGE_ASICREV_BCM5785 ; 
 scalar_t__ BGE_ASICREV_BCM5906 ; 
 scalar_t__ BGE_CHIPID_BCM5704_A0 ; 
 scalar_t__ BGE_CHIPID_BCM5750_A0 ; 
 scalar_t__ BGE_CHIPID_BCM57765_A0 ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BGE_CPMU_CLCK_ORIDE ; 
 int BGE_FASTBOOT_PC ; 
 int BGE_FLAG_5717_PLUS ; 
 int BGE_FLAG_CPMU_PRESENT ; 
 int BGE_FLAG_EADDR ; 
 int BGE_FLAG_MSI ; 
 int BGE_FLAG_PCIE ; 
 int BGE_FLAG_PCIX ; 
 int BGE_FLAG_TBI ; 
 int BGE_HIF_SWAP_OPTIONS ; 
 scalar_t__ FUNC1 (struct bge_softc*) ; 
 scalar_t__ FUNC2 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*) ; 
 scalar_t__ FUNC4 (struct bge_softc*) ; 
 scalar_t__ FUNC5 (struct bge_softc*) ; 
 int BGE_MACMODE_APE_RX_EN ; 
 int BGE_MACMODE_APE_TX_EN ; 
 int BGE_MACMODE_HALF_DUPLEX ; 
 int BGE_MACMODE_PORTMODE ; 
 int BGE_MAC_MODE ; 
 int BGE_MARBMODE_ENABLE ; 
 int BGE_MARB_MODE ; 
 int BGE_MFW_ON_APE ; 
 int BGE_MISCCFG_GPHY_PD_OVERRIDE ; 
 int BGE_MISCCFG_RESET_CORE_CLOCKS ; 
 int BGE_MISC_CFG ; 
 int BGE_MODE_CTL ; 
 int BGE_MSIMODE_ENABLE ; 
 int BGE_MSI_MODE ; 
 int BGE_NVRAMSWARB_GNT1 ; 
 int BGE_NVRAMSWARB_SET1 ; 
 int BGE_NVRAM_SWARB ; 
 int BGE_PCIMISCCTL_INDIRECT_ACCESS ; 
 int BGE_PCIMISCCTL_MASK_PCI_INTR ; 
 int BGE_PCIMISCCTL_PCISTATE_RW ; 
 int BGE_PCISTATE_ALLOW_APE_CTLSPC_WR ; 
 int BGE_PCISTATE_ALLOW_APE_PSPACE_WR ; 
 int BGE_PCISTATE_ALLOW_APE_SHMEM_WR ; 
 int BGE_PCISTATE_RETRY_SAME_DMA ; 
 int BGE_PCISTATE_ROM_ENABLE ; 
 int BGE_PCISTATE_ROM_RETRY_ENABLE ; 
 int BGE_PCI_CACHESZ ; 
 int BGE_PCI_CMD ; 
 int BGE_PCI_MISC_CTL ; 
 int BGE_PCI_PCISTATE ; 
 int BGE_SERDES_CFG ; 
 int BGE_SRAM_FW_MB ; 
 int BGE_SRAM_FW_MB_MAGIC ; 
 int BGE_TIMEOUT ; 
 int BGE_VCPU_EXT_CTRL ; 
 int BGE_VCPU_EXT_CTRL_HALT_CPU ; 
 int BGE_VCPU_STATUS ; 
 int BGE_VCPU_STATUS_DRV_RESET ; 
 int BGE_VCPU_STATUS_INIT_DONE ; 
 int /*<<< orphan*/  CPMU_CLCK_ORIDE_MAC_ORIDE_EN ; 
 int FUNC6 (struct bge_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bge_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int PCIEM_CTL_NOSNOOP_ENABLE ; 
 int PCIEM_CTL_RELAXED_ORD_ENABLE ; 
 int PCIEM_STA_CORRECTABLE_ERROR ; 
 int PCIEM_STA_FATAL_ERROR ; 
 int PCIEM_STA_NON_FATAL_ERROR ; 
 int PCIEM_STA_UNSUPPORTED_REQ ; 
 int /*<<< orphan*/  PCIER_DEVICE_CTL ; 
 int /*<<< orphan*/  PCIER_DEVICE_STA ; 
 int PCIM_MSICTRL_MSI_ENABLE ; 
 int /*<<< orphan*/  PCIR_MSI_CTRL ; 
 int PCIXM_COMMAND_ERO ; 
 int PCIXM_COMMAND_MAX_READ ; 
 int PCIXM_COMMAND_MAX_READ_2048 ; 
 int PCIXM_COMMAND_MAX_SPLITS ; 
 int /*<<< orphan*/  PCIXR_COMMAND ; 
 int /*<<< orphan*/  FUNC9 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct bge_softc*) ; 
 int FUNC12 (struct bge_softc*,int) ; 
 void FUNC13 (struct bge_softc*,int,int) ; 
 void FUNC14 (struct bge_softc*,int,int) ; 
 void FUNC15 (struct bge_softc*,int,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC20(struct bge_softc *sc)
{
	device_t dev;
	uint32_t cachesize, command, mac_mode, mac_mode_mask, reset, val;
	void (*write_op)(struct bge_softc *, int, int);
	uint16_t devctl;
	int i;

	dev = sc->bge_dev;

	mac_mode_mask = BGE_MACMODE_HALF_DUPLEX | BGE_MACMODE_PORTMODE;
	if ((sc->bge_mfw_flags & BGE_MFW_ON_APE) != 0)
		mac_mode_mask |= BGE_MACMODE_APE_RX_EN | BGE_MACMODE_APE_TX_EN;
	mac_mode = FUNC6(sc, BGE_MAC_MODE) & mac_mode_mask;

	if (FUNC5(sc) && !FUNC2(sc) &&
	    (sc->bge_asicrev != BGE_ASICREV_BCM5906)) {
		if (sc->bge_flags & BGE_FLAG_PCIE)
			write_op = bge_writemem_direct;
		else
			write_op = bge_writemem_ind;
	} else
		write_op = bge_writereg_ind;

	if (sc->bge_asicrev != BGE_ASICREV_BCM5700 &&
	    sc->bge_asicrev != BGE_ASICREV_BCM5701) {
		FUNC7(sc, BGE_NVRAM_SWARB, BGE_NVRAMSWARB_SET1);
		for (i = 0; i < 8000; i++) {
			if (FUNC6(sc, BGE_NVRAM_SWARB) &
			    BGE_NVRAMSWARB_GNT1)
				break;
			FUNC8(20);
		}
		if (i == 8000) {
			if (bootverbose)
				FUNC16(dev, "NVRAM lock timedout!\n");
		}
	}
	/* Take APE lock when performing reset. */
	FUNC9(sc, BGE_APE_LOCK_GRC);

	/* Save some important PCI state. */
	cachesize = FUNC17(dev, BGE_PCI_CACHESZ, 4);
	command = FUNC17(dev, BGE_PCI_CMD, 4);

	FUNC19(dev, BGE_PCI_MISC_CTL,
	    BGE_PCIMISCCTL_INDIRECT_ACCESS | BGE_PCIMISCCTL_MASK_PCI_INTR |
	    BGE_HIF_SWAP_OPTIONS | BGE_PCIMISCCTL_PCISTATE_RW, 4);

	/* Disable fastboot on controllers that support it. */
	if (sc->bge_asicrev == BGE_ASICREV_BCM5752 ||
	    FUNC4(sc)) {
		if (bootverbose)
			FUNC16(dev, "Disabling fastboot\n");
		FUNC7(sc, BGE_FASTBOOT_PC, 0x0);
	}

	/*
	 * Write the magic number to SRAM at offset 0xB50.
	 * When firmware finishes its initialization it will
	 * write ~BGE_SRAM_FW_MB_MAGIC to the same location.
	 */
	FUNC14(sc, BGE_SRAM_FW_MB, BGE_SRAM_FW_MB_MAGIC);

	reset = BGE_MISCCFG_RESET_CORE_CLOCKS | BGE_32BITTIME_66MHZ;

	/* XXX: Broadcom Linux driver. */
	if (sc->bge_flags & BGE_FLAG_PCIE) {
		if (sc->bge_asicrev != BGE_ASICREV_BCM5785 &&
		    (sc->bge_flags & BGE_FLAG_5717_PLUS) == 0) {
			if (FUNC6(sc, 0x7E2C) == 0x60)	/* PCIE 1.0 */
				FUNC7(sc, 0x7E2C, 0x20);
		}
		if (sc->bge_chipid != BGE_CHIPID_BCM5750_A0) {
			/* Prevent PCIE link training during global reset */
			FUNC7(sc, BGE_MISC_CFG, 1 << 29);
			reset |= 1 << 29;
		}
	}

	if (sc->bge_asicrev == BGE_ASICREV_BCM5906) {
		val = FUNC6(sc, BGE_VCPU_STATUS);
		FUNC7(sc, BGE_VCPU_STATUS,
		    val | BGE_VCPU_STATUS_DRV_RESET);
		val = FUNC6(sc, BGE_VCPU_EXT_CTRL);
		FUNC7(sc, BGE_VCPU_EXT_CTRL,
		    val & ~BGE_VCPU_EXT_CTRL_HALT_CPU);
	}

	/*
	 * Set GPHY Power Down Override to leave GPHY
	 * powered up in D0 uninitialized.
	 */
	if (FUNC1(sc) &&
	    (sc->bge_flags & BGE_FLAG_CPMU_PRESENT) == 0)
		reset |= BGE_MISCCFG_GPHY_PD_OVERRIDE;

	/* Issue global reset */
	write_op(sc, BGE_MISC_CFG, reset);

	if (sc->bge_flags & BGE_FLAG_PCIE)
		FUNC8(100 * 1000);
	else
		FUNC8(1000);

	/* XXX: Broadcom Linux driver. */
	if (sc->bge_flags & BGE_FLAG_PCIE) {
		if (sc->bge_chipid == BGE_CHIPID_BCM5750_A0) {
			FUNC8(500000); /* wait for link training to complete */
			val = FUNC17(dev, 0xC4, 4);
			FUNC19(dev, 0xC4, val | (1 << 15), 4);
		}
		devctl = FUNC17(dev,
		    sc->bge_expcap + PCIER_DEVICE_CTL, 2);
		/* Clear enable no snoop and disable relaxed ordering. */
		devctl &= ~(PCIEM_CTL_RELAXED_ORD_ENABLE |
		    PCIEM_CTL_NOSNOOP_ENABLE);
		FUNC19(dev, sc->bge_expcap + PCIER_DEVICE_CTL,
		    devctl, 2);
		FUNC18(dev, sc->bge_expmrq);
		/* Clear error status. */
		FUNC19(dev, sc->bge_expcap + PCIER_DEVICE_STA,
		    PCIEM_STA_CORRECTABLE_ERROR |
		    PCIEM_STA_NON_FATAL_ERROR | PCIEM_STA_FATAL_ERROR |
		    PCIEM_STA_UNSUPPORTED_REQ, 2);
	}

	/* Reset some of the PCI state that got zapped by reset. */
	FUNC19(dev, BGE_PCI_MISC_CTL,
	    BGE_PCIMISCCTL_INDIRECT_ACCESS | BGE_PCIMISCCTL_MASK_PCI_INTR |
	    BGE_HIF_SWAP_OPTIONS | BGE_PCIMISCCTL_PCISTATE_RW, 4);
	val = BGE_PCISTATE_ROM_ENABLE | BGE_PCISTATE_ROM_RETRY_ENABLE;
	if (sc->bge_chipid == BGE_CHIPID_BCM5704_A0 &&
	    (sc->bge_flags & BGE_FLAG_PCIX) != 0)
		val |= BGE_PCISTATE_RETRY_SAME_DMA;
	if ((sc->bge_mfw_flags & BGE_MFW_ON_APE) != 0)
		val |= BGE_PCISTATE_ALLOW_APE_CTLSPC_WR |
		    BGE_PCISTATE_ALLOW_APE_SHMEM_WR |
		    BGE_PCISTATE_ALLOW_APE_PSPACE_WR;
	FUNC19(dev, BGE_PCI_PCISTATE, val, 4);
	FUNC19(dev, BGE_PCI_CACHESZ, cachesize, 4);
	FUNC19(dev, BGE_PCI_CMD, command, 4);
	/*
	 * Disable PCI-X relaxed ordering to ensure status block update
	 * comes first then packet buffer DMA. Otherwise driver may
	 * read stale status block.
	 */
	if (sc->bge_flags & BGE_FLAG_PCIX) {
		devctl = FUNC17(dev,
		    sc->bge_pcixcap + PCIXR_COMMAND, 2);
		devctl &= ~PCIXM_COMMAND_ERO;
		if (sc->bge_asicrev == BGE_ASICREV_BCM5703) {
			devctl &= ~PCIXM_COMMAND_MAX_READ;
			devctl |= PCIXM_COMMAND_MAX_READ_2048;
		} else if (sc->bge_asicrev == BGE_ASICREV_BCM5704) {
			devctl &= ~(PCIXM_COMMAND_MAX_SPLITS |
			    PCIXM_COMMAND_MAX_READ);
			devctl |= PCIXM_COMMAND_MAX_READ_2048;
		}
		FUNC19(dev, sc->bge_pcixcap + PCIXR_COMMAND,
		    devctl, 2);
	}
	/* Re-enable MSI, if necessary, and enable the memory arbiter. */
	if (FUNC2(sc)) {
		/* This chip disables MSI on reset. */
		if (sc->bge_flags & BGE_FLAG_MSI) {
			val = FUNC17(dev,
			    sc->bge_msicap + PCIR_MSI_CTRL, 2);
			FUNC19(dev,
			    sc->bge_msicap + PCIR_MSI_CTRL,
			    val | PCIM_MSICTRL_MSI_ENABLE, 2);
			val = FUNC6(sc, BGE_MSI_MODE);
			FUNC7(sc, BGE_MSI_MODE,
			    val | BGE_MSIMODE_ENABLE);
		}
		val = FUNC6(sc, BGE_MARB_MODE);
		FUNC7(sc, BGE_MARB_MODE, BGE_MARBMODE_ENABLE | val);
	} else
		FUNC7(sc, BGE_MARB_MODE, BGE_MARBMODE_ENABLE);

	/* Fix up byte swapping. */
	FUNC7(sc, BGE_MODE_CTL, FUNC11(sc));

	val = FUNC6(sc, BGE_MAC_MODE);
	val = (val & ~mac_mode_mask) | mac_mode;
	FUNC7(sc, BGE_MAC_MODE, val);
	FUNC8(40);

	FUNC10(sc, BGE_APE_LOCK_GRC);

	if (sc->bge_asicrev == BGE_ASICREV_BCM5906) {
		for (i = 0; i < BGE_TIMEOUT; i++) {
			val = FUNC6(sc, BGE_VCPU_STATUS);
			if (val & BGE_VCPU_STATUS_INIT_DONE)
				break;
			FUNC8(100);
		}
		if (i == BGE_TIMEOUT) {
			FUNC16(dev, "reset timed out\n");
			return (1);
		}
	} else {
		/*
		 * Poll until we see the 1's complement of the magic number.
		 * This indicates that the firmware initialization is complete.
		 * We expect this to fail if no chip containing the Ethernet
		 * address is fitted though.
		 */
		for (i = 0; i < BGE_TIMEOUT; i++) {
			FUNC8(10);
			val = FUNC12(sc, BGE_SRAM_FW_MB);
			if (val == ~BGE_SRAM_FW_MB_MAGIC)
				break;
		}

		if ((sc->bge_flags & BGE_FLAG_EADDR) && i == BGE_TIMEOUT)
			FUNC16(dev,
			    "firmware handshake timed out, found 0x%08x\n",
			    val);
		/* BCM57765 A0 needs additional time before accessing. */
		if (sc->bge_chipid == BGE_CHIPID_BCM57765_A0)
			FUNC8(10 * 1000);	/* XXX */
	}

	/*
	 * The 5704 in TBI mode apparently needs some special
	 * adjustment to insure the SERDES drive level is set
	 * to 1.2V.
	 */
	if (sc->bge_asicrev == BGE_ASICREV_BCM5704 &&
	    sc->bge_flags & BGE_FLAG_TBI) {
		val = FUNC6(sc, BGE_SERDES_CFG);
		val = (val & ~0xFFF) | 0x880;
		FUNC7(sc, BGE_SERDES_CFG, val);
	}

	/* XXX: Broadcom Linux driver. */
	if (sc->bge_flags & BGE_FLAG_PCIE &&
	    !FUNC3(sc) &&
	    sc->bge_chipid != BGE_CHIPID_BCM5750_A0 &&
	    sc->bge_asicrev != BGE_ASICREV_BCM5785) {
		/* Enable Data FIFO protection. */
		val = FUNC6(sc, 0x7C00);
		FUNC7(sc, 0x7C00, val | (1 << 25));
	}

	if (sc->bge_asicrev == BGE_ASICREV_BCM5720)
		FUNC0(sc, BGE_CPMU_CLCK_ORIDE,
		    CPMU_CLCK_ORIDE_MAC_ORIDE_EN);

	return (0);
}