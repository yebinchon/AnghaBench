#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct ahci_controller {int quirks; int vendorid; int subvendorid; int subdeviceid; scalar_t__ r_rid; int remap_offset; int remap_size; scalar_t__ remapped_devices; scalar_t__ r_msix_tab_rid; scalar_t__ r_msix_pba_rid; int msi; int numirqs; int /*<<< orphan*/ * r_msix_pba; int /*<<< orphan*/ * r_msix_table; void* r_mem; int /*<<< orphan*/  deviceid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; int quirks; } ;

/* Variables and functions */
 int AHCI_Q_1MSI ; 
 int AHCI_Q_ABAR0 ; 
 int AHCI_Q_NOMSI ; 
 int AHCI_Q_NOMSIX ; 
 int AHCI_Q_SATA1_UNIT0 ; 
 int AHCI_VSCAP ; 
 int FUNC0 (void*,int) ; 
 int ENXIO ; 
 int PCIC_STORAGE ; 
 int PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0 ; 
 void* FUNC1 (int) ; 
 int PCIS_STORAGE_NVM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ahci_ids ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ahci_controller* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
	struct ahci_controller *ctlr = FUNC8(dev);
	int	error, i;
	uint32_t devid = FUNC16(dev);
	uint8_t revid = FUNC17(dev);
	int msi_count, msix_count;
	uint8_t table_bar = 0, pba_bar = 0;

	msi_count = FUNC21(dev);
	msix_count = FUNC22(dev);

	i = 0;
	while (ahci_ids[i].id != 0 &&
	    (ahci_ids[i].id != devid ||
	     ahci_ids[i].rev > revid))
		i++;
	ctlr->quirks = ahci_ids[i].quirks;
	/* Limit speed for my onboard JMicron external port.
	 * It is not eSATA really, limit to SATA 1 */
	if (FUNC16(dev) == 0x2363197b &&
	    FUNC19(dev) == 0x1043 &&
	    FUNC18(dev) == 0x81e4)
		ctlr->quirks |= AHCI_Q_SATA1_UNIT0;
	FUNC24(FUNC7(dev), FUNC9(dev),
	    "quirks", &ctlr->quirks);
	ctlr->vendorid = FUNC20(dev);
	ctlr->deviceid = FUNC15(dev);
	ctlr->subvendorid = FUNC19(dev);
	ctlr->subdeviceid = FUNC18(dev);

	/* Default AHCI Base Address is BAR(5), Cavium uses BAR(0) */
	if (ctlr->quirks & AHCI_Q_ABAR0)
		ctlr->r_rid = FUNC1(0);
	else
		ctlr->r_rid = FUNC1(5);
	if (!(ctlr->r_mem = FUNC6(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE)))
		return ENXIO;

	/*
	 * Intel RAID hardware can remap NVMe devices inside its BAR.
	 * Try to detect this. Either we have to add the device
	 * here, or the user has to change the mode in the BIOS
	 * from RST to AHCI.
	 */
	if (FUNC20(dev) == 0x8086) {
		uint32_t vscap;

		vscap = FUNC0(ctlr->r_mem, AHCI_VSCAP);
		if (vscap & 1) {
			uint32_t cap = FUNC0(ctlr->r_mem, 0x800); /* Intel's REMAP CAP */
			int i;

			ctlr->remap_offset = 0x4000;
			ctlr->remap_size = 0x4000;

			/*
			 * Check each of the devices that might be remapped to
			 * make sure they are an nvme device. At the present,
			 * nvme are the only known devices remapped.
			 */
			for (i = 0; i < 3; i++) {
				if (cap & (1 << i) &&
				    (FUNC0(ctlr->r_mem, 0x880 + i * 0x80) ==
				     ((PCIC_STORAGE << 16) |
				      (PCIS_STORAGE_NVM << 8) |
				      PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0))) {
					ctlr->remapped_devices++;
				}
			}

			/* If we have any remapped device, disable MSI */
			if (ctlr->remapped_devices > 0) {
				FUNC10(dev, "Detected %d nvme remapped devices\n",
				    ctlr->remapped_devices);
				ctlr->quirks |= (AHCI_Q_NOMSIX | AHCI_Q_NOMSI);
			}
		}
	}


	if (ctlr->quirks & AHCI_Q_NOMSIX)
		msix_count = 0;

	/* Read MSI-x BAR IDs if supported */
	if (msix_count > 0) {
		error = FUNC5(dev, &table_bar, &pba_bar);
		if (error == 0) {
			ctlr->r_msix_tab_rid = table_bar;
			ctlr->r_msix_pba_rid = pba_bar;
		} else {
			/* Failed to read BARs, disable MSI-x */
			msix_count = 0;
		}
	}

	/* Allocate resources for MSI-x table and PBA */
	if (msix_count > 0) {
		/*
		 * Allocate new MSI-x table only if not
		 * allocated before.
		 */
		ctlr->r_msix_table = NULL;
		if (ctlr->r_msix_tab_rid != ctlr->r_rid) {
			/* Separate BAR for MSI-x */
			ctlr->r_msix_table = FUNC6(dev, SYS_RES_MEMORY,
			    &ctlr->r_msix_tab_rid, RF_ACTIVE);
			if (ctlr->r_msix_table == NULL) {
				FUNC3(dev);
				return (ENXIO);
			}
		}

		/*
		 * Allocate new PBA table only if not
		 * allocated before.
		 */
		ctlr->r_msix_pba = NULL;
		if ((ctlr->r_msix_pba_rid != ctlr->r_msix_tab_rid) &&
		    (ctlr->r_msix_pba_rid != ctlr->r_rid)) {
			/* Separate BAR for PBA */
			ctlr->r_msix_pba = FUNC6(dev, SYS_RES_MEMORY,
			    &ctlr->r_msix_pba_rid, RF_ACTIVE);
			if (ctlr->r_msix_pba == NULL) {
				FUNC3(dev);
				return (ENXIO);
			}
		}
	}

	FUNC14(dev);
	/* Reset controller */
	if ((error = FUNC4(dev)) != 0) {
		FUNC3(dev);
		return (error);
	}

	/* Setup interrupts. */

	/* Setup MSI register parameters */
	/* Process hints. */
	if (ctlr->quirks & AHCI_Q_NOMSI)
		ctlr->msi = 0;
	else if (ctlr->quirks & AHCI_Q_1MSI)
		ctlr->msi = 1;
	else
		ctlr->msi = 2;
	FUNC24(FUNC7(dev),
	    FUNC9(dev), "msi", &ctlr->msi);
	ctlr->numirqs = 1;
	if (msi_count == 0 && msix_count == 0)
		ctlr->msi = 0;
	if (ctlr->msi < 0)
		ctlr->msi = 0;
	else if (ctlr->msi == 1) {
		msi_count = FUNC11(1, msi_count);
		msix_count = FUNC11(1, msix_count);
	} else if (ctlr->msi > 1)
		ctlr->msi = 2;

	/* Allocate MSI/MSI-x if needed/present. */
	if (ctlr->msi > 0) {
		error = ENXIO;

		/* Try to allocate MSI-x first */
		if (msix_count > 0) {
			error = FUNC13(dev, &msix_count);
			if (error == 0)
				ctlr->numirqs = msix_count;
		}

		/*
		 * Try to allocate MSI if msi_count is greater than 0
		 * and if MSI-x allocation failed.
		 */
		if ((error != 0) && (msi_count > 0)) {
			error = FUNC12(dev, &msi_count);
			if (error == 0)
				ctlr->numirqs = msi_count;
		}

		/* Both MSI and MSI-x allocations failed */
		if (error != 0) {
			ctlr->msi = 0;
			FUNC10(dev, "Failed to allocate MSI/MSI-x, "
			    "falling back to INTx\n");
		}
	}

	error = FUNC2(dev);
	if (error != 0) {
		if (ctlr->msi > 0)
			FUNC23(dev);
		FUNC3(dev);
	}
	return error;
}