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
typedef  scalar_t__ uint32_t ;
struct mpt_softc {int /*<<< orphan*/  dev; scalar_t__ is_sas; int /*<<< orphan*/  fw_dmap; int /*<<< orphan*/  fw_dmat; scalar_t__ fw_image; int /*<<< orphan*/  fw_image_size; int /*<<< orphan*/ * pci_pio_reg; } ;
struct TYPE_4__ {scalar_t__ NextImageHeaderOffset; int /*<<< orphan*/  ImageSize; int /*<<< orphan*/  LoadStartAddress; } ;
struct TYPE_3__ {scalar_t__ NextImageHeaderOffset; scalar_t__ IopResetRegAddr; scalar_t__ IopResetVectorValue; int /*<<< orphan*/  ImageSize; int /*<<< orphan*/  LoadStartAddress; } ;
typedef  TYPE_1__ MpiFwHeader_t ;
typedef  TYPE_2__ MpiExtImageHeader_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int EIO ; 
 int ENXIO ; 
 scalar_t__ MPI_DIAG_DISABLE_ARM ; 
 scalar_t__ MPI_DIAG_PREVENT_IOC_BOOT ; 
 scalar_t__ MPI_DIAG_RW_ENABLE ; 
 scalar_t__ MPT_DIAG_MEM_CFG_BADFL ; 
 scalar_t__ MPT_DIAG_MEM_CFG_BASE ; 
 int /*<<< orphan*/  MPT_OFFSET_DIAGNOSTIC ; 
 int /*<<< orphan*/  MPT_OFFSET_DIAG_ADDR ; 
 int /*<<< orphan*/  MPT_OFFSET_DIAG_DATA ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int FUNC3 (struct mpt_softc*) ; 
 scalar_t__ FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*,char*,...) ; 
 scalar_t__ FUNC7 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct mpt_softc *mpt)
{
	MpiFwHeader_t *fw_hdr;
	int error;
	uint32_t ext_offset;
	uint32_t data;

	if (mpt->pci_pio_reg == NULL) {
		FUNC6(mpt, "No PIO resource!\n");
		return (ENXIO);
	}

	FUNC6(mpt, "Downloading Firmware - Image Size %d\n",
		mpt->fw_image_size);

	error = FUNC3(mpt);
	if (error != 0) {
		FUNC6(mpt, "Could not enter diagnostic mode!\n");
		return (EIO);
	}

	FUNC8(mpt, MPT_OFFSET_DIAGNOSTIC,
		  MPI_DIAG_RW_ENABLE|MPI_DIAG_DISABLE_ARM);

	fw_hdr = (MpiFwHeader_t *)mpt->fw_image;
	FUNC0(mpt->fw_dmat, mpt->fw_dmap, BUS_DMASYNC_PREWRITE);
	FUNC1(mpt, fw_hdr->LoadStartAddress, (uint32_t*)fw_hdr,
		       fw_hdr->ImageSize);
	FUNC0(mpt->fw_dmat, mpt->fw_dmap, BUS_DMASYNC_POSTWRITE);

	ext_offset = fw_hdr->NextImageHeaderOffset;
	while (ext_offset != 0) {
		MpiExtImageHeader_t *ext;

		ext = (MpiExtImageHeader_t *)((uintptr_t)fw_hdr + ext_offset);
		ext_offset = ext->NextImageHeaderOffset;
		FUNC0(mpt->fw_dmat, mpt->fw_dmap,
		    BUS_DMASYNC_PREWRITE);
		FUNC1(mpt, ext->LoadStartAddress, (uint32_t*)ext,
			       ext->ImageSize);
		FUNC0(mpt->fw_dmat, mpt->fw_dmap,
		    BUS_DMASYNC_POSTWRITE);
	}

	if (mpt->is_sas) {
		FUNC10(mpt->dev, SYS_RES_IOPORT);
	}
	/* Setup the address to jump to on reset. */
	FUNC5(mpt, MPT_OFFSET_DIAG_ADDR, fw_hdr->IopResetRegAddr);
	FUNC5(mpt, MPT_OFFSET_DIAG_DATA, fw_hdr->IopResetVectorValue);

	/*
	 * The controller sets the "flash bad" status after attempting
	 * to auto-boot from flash.  Clear the status so that the controller
	 * will continue the boot process with our newly installed firmware.
	 */
	FUNC5(mpt, MPT_OFFSET_DIAG_ADDR, MPT_DIAG_MEM_CFG_BASE);
	data = FUNC4(mpt, MPT_OFFSET_DIAG_DATA) | MPT_DIAG_MEM_CFG_BADFL;
	FUNC5(mpt, MPT_OFFSET_DIAG_ADDR, MPT_DIAG_MEM_CFG_BASE);
	FUNC5(mpt, MPT_OFFSET_DIAG_DATA, data);

	if (mpt->is_sas) {
		FUNC9(mpt->dev, SYS_RES_IOPORT);
	}

	/*
	 * Re-enable the processor and clear the boot halt flag.
	 */
	data = FUNC7(mpt, MPT_OFFSET_DIAGNOSTIC);
	data &= ~(MPI_DIAG_PREVENT_IOC_BOOT|MPI_DIAG_DISABLE_ARM);
	FUNC8(mpt, MPT_OFFSET_DIAGNOSTIC, data);

	FUNC2(mpt);
	return (0);
}