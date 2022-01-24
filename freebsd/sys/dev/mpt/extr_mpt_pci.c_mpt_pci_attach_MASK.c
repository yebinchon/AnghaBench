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
struct mpt_softc {int is_fc; int is_1078; int is_sas; int is_spi; scalar_t__ verbose; scalar_t__ disabled; int /*<<< orphan*/ * eh; int /*<<< orphan*/  ih; int /*<<< orphan*/ * pci_irq; scalar_t__ msi_enable; int /*<<< orphan*/ * pci_reg; void* pci_sh; void* pci_st; void* pci_pio_sh; void* pci_pio_st; int /*<<< orphan*/ * pci_pio_reg; int /*<<< orphan*/  mpt_ini_id; int /*<<< orphan*/  role; int /*<<< orphan*/  raid_queue_depth; int /*<<< orphan*/  raid_mwce_setting; int /*<<< orphan*/  raid_resync_rate; int /*<<< orphan*/  unit; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
#define  MPI_MANUFACTPAGE_DEVICEID_FC909 152 
#define  MPI_MANUFACTPAGE_DEVICEID_FC909_FB 151 
#define  MPI_MANUFACTPAGE_DEVICEID_FC919 150 
#define  MPI_MANUFACTPAGE_DEVICEID_FC919X 149 
#define  MPI_MANUFACTPAGE_DEVICEID_FC919X_LAN_FB 148 
#define  MPI_MANUFACTPAGE_DEVICEID_FC919_LAN_FB 147 
#define  MPI_MANUFACTPAGE_DEVICEID_FC929 146 
#define  MPI_MANUFACTPAGE_DEVICEID_FC929X 145 
#define  MPI_MANUFACTPAGE_DEVICEID_FC929X_LAN_FB 144 
#define  MPI_MANUFACTPAGE_DEVICEID_FC929_LAN_FB 143 
#define  MPI_MANUFACTPAGE_DEVICEID_FC949E 142 
#define  MPI_MANUFACTPAGE_DEVICEID_FC949X 141 
#define  MPI_MANUFACTPAGE_DEVID_53C1030 140 
#define  MPI_MANUFACTPAGE_DEVID_53C1030ZC 139 
#define  MPI_MANUFACTPAGE_DEVID_SAS1064 138 
#define  MPI_MANUFACTPAGE_DEVID_SAS1064A 137 
#define  MPI_MANUFACTPAGE_DEVID_SAS1064E 136 
#define  MPI_MANUFACTPAGE_DEVID_SAS1066 135 
#define  MPI_MANUFACTPAGE_DEVID_SAS1066E 134 
#define  MPI_MANUFACTPAGE_DEVID_SAS1068 133 
#define  MPI_MANUFACTPAGE_DEVID_SAS1068A_FB 132 
#define  MPI_MANUFACTPAGE_DEVID_SAS1068E 131 
#define  MPI_MANUFACTPAGE_DEVID_SAS1068E_FB 130 
#define  MPI_MANUFACTPAGE_DEVID_SAS1078 129 
#define  MPI_MANUFACTPAGE_DEVID_SAS1078DE_FB 128 
 int /*<<< orphan*/  MPT_IFLAGS ; 
 int /*<<< orphan*/  MPT_INI_ID_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 scalar_t__ MPT_PRT_NONE ; 
 scalar_t__ MPT_PRT_WARN ; 
 int /*<<< orphan*/  MPT_RAID_MWCE_DEFAULT ; 
 int /*<<< orphan*/  MPT_RAID_QUEUE_DEPTH_DEFAULT ; 
 int /*<<< orphan*/  MPT_RAID_RESYNC_RATE_DEFAULT ; 
 int /*<<< orphan*/  MPT_ROLE_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PCIM_BIOS_ENABLE ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MWRICEN ; 
 int PCIM_CMD_PERRESPEN ; 
 int PCIM_CMD_SERRESPEN ; 
 int FUNC4 (int) ; 
 int PCIR_BIOS ; 
 int PCIR_COMMAND ; 
 scalar_t__ FUNC5 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mpt_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mpt_softc*) ; 
 scalar_t__ FUNC14 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct mpt_softc*) ; 
 int /*<<< orphan*/  mpt_pci_intr ; 
 int /*<<< orphan*/  mpt_pci_shutdown ; 
 int /*<<< orphan*/  FUNC18 (struct mpt_softc*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct mpt_softc*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC30 (int /*<<< orphan*/ *) ; 
 void* FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_post_sync ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct mpt_softc *mpt;
	int		  iqd;
	uint32_t	  val;
	int		  mpt_io_bar, mpt_mem_bar;

	mpt  = (struct mpt_softc*)FUNC8(dev);

	switch (FUNC27(dev)) {
	case MPI_MANUFACTPAGE_DEVICEID_FC909_FB:
	case MPI_MANUFACTPAGE_DEVICEID_FC909:
	case MPI_MANUFACTPAGE_DEVICEID_FC919:
	case MPI_MANUFACTPAGE_DEVICEID_FC919_LAN_FB:
	case MPI_MANUFACTPAGE_DEVICEID_FC929:
	case MPI_MANUFACTPAGE_DEVICEID_FC929_LAN_FB:
	case MPI_MANUFACTPAGE_DEVICEID_FC929X:
	case MPI_MANUFACTPAGE_DEVICEID_FC929X_LAN_FB:
	case MPI_MANUFACTPAGE_DEVICEID_FC919X:
	case MPI_MANUFACTPAGE_DEVICEID_FC919X_LAN_FB:
	case MPI_MANUFACTPAGE_DEVICEID_FC949E:
	case MPI_MANUFACTPAGE_DEVICEID_FC949X:
		mpt->is_fc = 1;
		break;
	case MPI_MANUFACTPAGE_DEVID_SAS1078:
	case MPI_MANUFACTPAGE_DEVID_SAS1078DE_FB:
		mpt->is_1078 = 1;
		/* FALLTHROUGH */
	case MPI_MANUFACTPAGE_DEVID_SAS1064:
	case MPI_MANUFACTPAGE_DEVID_SAS1064A:
	case MPI_MANUFACTPAGE_DEVID_SAS1064E:
	case MPI_MANUFACTPAGE_DEVID_SAS1066:
	case MPI_MANUFACTPAGE_DEVID_SAS1066E:
	case MPI_MANUFACTPAGE_DEVID_SAS1068:
	case MPI_MANUFACTPAGE_DEVID_SAS1068A_FB:
	case MPI_MANUFACTPAGE_DEVID_SAS1068E:
	case MPI_MANUFACTPAGE_DEVID_SAS1068E_FB:
		mpt->is_sas = 1;
		break;
	default:
		mpt->is_spi = 1;
		break;
	}
	mpt->dev = dev;
	mpt->unit = FUNC9(dev);
	mpt->raid_resync_rate = MPT_RAID_RESYNC_RATE_DEFAULT;
	mpt->raid_mwce_setting = MPT_RAID_MWCE_DEFAULT;
	mpt->raid_queue_depth = MPT_RAID_QUEUE_DEPTH_DEFAULT;
	mpt->verbose = MPT_PRT_NONE;
	mpt->role = MPT_ROLE_NONE;
	mpt->mpt_ini_id = MPT_INI_ID_NONE;
#ifdef __sparc64__
	if (mpt->is_spi)
		mpt->mpt_ini_id = OF_getscsinitid(dev);
#endif
	FUNC22(mpt);
	if (mpt->verbose == MPT_PRT_NONE) {
		mpt->verbose = MPT_PRT_WARN;
		/* Print INFO level (if any) if bootverbose is set */
		mpt->verbose += (bootverbose != 0)? 1 : 0;
	}

	/*
	 * Make sure that SERR, PERR, WRITE INVALIDATE and BUSMASTER are set.
	 */
	val = FUNC28(dev, PCIR_COMMAND, 2);
	val |= PCIM_CMD_SERRESPEN | PCIM_CMD_PERRESPEN |
	    PCIM_CMD_BUSMASTEREN | PCIM_CMD_MWRICEN;
	FUNC29(dev, PCIR_COMMAND, val, 2);

	/*
	 * Make sure we've disabled the ROM.
	 */
	val = FUNC28(dev, PCIR_BIOS, 4);
	val &= ~PCIM_BIOS_ENABLE;
	FUNC29(dev, PCIR_BIOS, val, 4);

#if 0
	/*
	 * Is this part a dual?
	 * If so, link with our partner (around yet)
	 */
	switch (pci_get_device(dev)) {
	case MPI_MANUFACTPAGE_DEVICEID_FC929:
	case MPI_MANUFACTPAGE_DEVICEID_FC929_LAN_FB:
	case MPI_MANUFACTPAGE_DEVICEID_FC949E:
	case MPI_MANUFACTPAGE_DEVICEID_FC949X:
	case MPI_MANUFACTPAGE_DEVID_53C1030:
	case MPI_MANUFACTPAGE_DEVID_53C1030ZC:
		mpt_link_peer(mpt);
		break;
	default:
		break;
	}
#endif

	/*
	 * Figure out which are the I/O and MEM Bars
	 */
	val = FUNC28(dev, FUNC4(0), 4);
	if (FUNC5(val)) {
		/* BAR0 is IO, BAR1 is memory */
		mpt_io_bar = 0;
		mpt_mem_bar = 1;
	} else {
		/* BAR0 is memory, BAR1 is IO */
		mpt_mem_bar = 0;
		mpt_io_bar = 1;
	}

	/*
	 * Set up register access.  PIO mode is required for
	 * certain reset operations (but must be disabled for
	 * some cards otherwise).
	 */
	mpt_io_bar = FUNC4(mpt_io_bar);
	mpt->pci_pio_reg = FUNC6(dev, SYS_RES_IOPORT,
	    &mpt_io_bar, RF_ACTIVE);
	if (mpt->pci_pio_reg == NULL) {
		if (bootverbose) {
			FUNC10(dev,
			    "unable to map registers in PIO mode\n");
		}
	} else {
		mpt->pci_pio_st = FUNC31(mpt->pci_pio_reg);
		mpt->pci_pio_sh = FUNC30(mpt->pci_pio_reg);
	}

	mpt_mem_bar = FUNC4(mpt_mem_bar);
	mpt->pci_reg = FUNC6(dev, SYS_RES_MEMORY,
	    &mpt_mem_bar, RF_ACTIVE);
	if (mpt->pci_reg == NULL) {
		if (bootverbose || mpt->is_sas || mpt->pci_pio_reg == NULL) {
			FUNC10(dev,
			    "Unable to memory map registers.\n");
		}
		if (mpt->is_sas || mpt->pci_pio_reg == NULL) {
			FUNC10(dev, "Giving Up.\n");
			goto bad;
		}
		if (bootverbose) {
			FUNC10(dev, "Falling back to PIO mode.\n");
		}
		mpt->pci_st = mpt->pci_pio_st;
		mpt->pci_sh = mpt->pci_pio_sh;
	} else {
		mpt->pci_st = FUNC31(mpt->pci_reg);
		mpt->pci_sh = FUNC30(mpt->pci_reg);
	}

	/* Get a handle to the interrupt */
	iqd = 0;
	if (mpt->msi_enable) {
		/*
		 * First try to alloc an MSI-X message.  If that
		 * fails, then try to alloc an MSI message instead.
		 */
		val = 1;
		if (FUNC25(dev, &val) == 0)
			iqd = 1;
		val = 1;
		if (iqd == 0 && FUNC24(dev, &val) == 0)
			iqd = 1;
	}
	mpt->pci_irq = FUNC6(dev, SYS_RES_IRQ, &iqd,
	    RF_ACTIVE | (iqd != 0 ? 0 : RF_SHAREABLE));
	if (mpt->pci_irq == NULL) {
		FUNC10(dev, "could not allocate interrupt\n");
		goto bad;
	}

	FUNC2(mpt);

	/* Disable interrupts at the part */
	FUNC13(mpt);

	/* Register the interrupt handler */
	if (FUNC7(dev, mpt->pci_irq, MPT_IFLAGS, NULL, mpt_pci_intr,
	    mpt, &mpt->ih)) {
		FUNC10(dev, "could not setup interrupt\n");
		goto bad;
	}

	/* Allocate dma memory */
	if (FUNC14(mpt)) {
		FUNC18(mpt, "Could not allocate DMA memory\n");
		goto bad;
	}

#if 0
	/*
	 * Save the PCI config register values
 	 *
	 * Hard resets are known to screw up the BAR for diagnostic
	 * memory accesses (Mem1).
	 *
	 * Using Mem1 is known to make the chip stop responding to 
	 * configuration space transfers, so we need to save it now
	 */

	mpt_read_config_regs(mpt);
#endif

	/*
	 * Disable PIO until we need it
	 */
	if (mpt->is_sas) {
		FUNC26(dev, SYS_RES_IOPORT);
	}

	/* Initialize the hardware */
	if (mpt->disabled == 0) {
		if (FUNC11(mpt) != 0) {
			goto bad;
		}
	} else {
		FUNC18(mpt, "device disabled at user request\n");
		goto bad;
	}

	mpt->eh = FUNC0(shutdown_post_sync, mpt_pci_shutdown,
	    dev, SHUTDOWN_PRI_LAST);

	if (mpt->eh == NULL) {
		FUNC18(mpt, "shutdown event registration failed\n");
		FUNC13(mpt);
		(void) FUNC12(mpt);
		FUNC21(mpt, /*reinit*/FALSE);
		FUNC19(mpt);
		goto bad;
	}
	return (0);

bad:
	FUNC15(mpt);
	FUNC16(mpt);
#if 0
	mpt_unlink_peer(mpt);
#endif

	FUNC1(mpt);

	/*
	 * but return zero to preserve unit numbering
	 */
	return (0);
}