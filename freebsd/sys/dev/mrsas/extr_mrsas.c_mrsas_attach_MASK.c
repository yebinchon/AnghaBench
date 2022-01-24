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
typedef  int uint32_t ;
struct TYPE_2__ {struct mrsas_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct mrsas_softc {int device_id; int mrsas_gen3_ctrl; int is_ventura; int is_aero; int msix_enable; int /*<<< orphan*/ * reg_res; void* reg_res_id; int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  stream_lock; int /*<<< orphan*/  raidmap_lock; int /*<<< orphan*/  mfi_cmd_pool_lock; int /*<<< orphan*/  mpt_cmd_pool_lock; int /*<<< orphan*/  ioctl_lock; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  pci_lock; int /*<<< orphan*/  aen_lock; int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  ocr_chan; scalar_t__ ocr_thread_active; TYPE_1__ mrsas_ich; int /*<<< orphan*/  ocr_thread; scalar_t__ UnevenSpanSupport; int /*<<< orphan*/  adprecovery; scalar_t__ io_cmds_highwater; int /*<<< orphan*/  sge_holes; int /*<<< orphan*/  prp_count; int /*<<< orphan*/  target_reset_outstanding; int /*<<< orphan*/  fw_outstanding; int /*<<< orphan*/  mrsas_mfi_cmd_list_head; int /*<<< orphan*/  mrsas_mpt_cmd_list_head; int /*<<< orphan*/  bus_handle; int /*<<< orphan*/  bus_tag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
#define  MRSAS_AERO_10E0 147 
#define  MRSAS_AERO_10E1 146 
#define  MRSAS_AERO_10E2 145 
#define  MRSAS_AERO_10E3 144 
#define  MRSAS_AERO_10E4 143 
#define  MRSAS_AERO_10E5 142 
#define  MRSAS_AERO_10E6 141 
#define  MRSAS_AERO_10E7 140 
#define  MRSAS_CRUSADER 139 
#define  MRSAS_CRUSADER_4PORT 138 
#define  MRSAS_CUTLASS_52 137 
#define  MRSAS_CUTLASS_53 136 
#define  MRSAS_FURY 135 
#define  MRSAS_HARPOON 134 
 int /*<<< orphan*/  MRSAS_HBA_OPERATIONAL ; 
#define  MRSAS_INTRUDER 133 
#define  MRSAS_INTRUDER_24 132 
#define  MRSAS_INVADER 131 
#define  MRSAS_TOMCAT 130 
#define  MRSAS_VENTURA 129 
#define  MRSAS_VENTURA_4PORT 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_PORTEN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 struct mrsas_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct mrsas_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  mrsas_ich_startup ; 
 int FUNC14 (struct mrsas_softc*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct mrsas_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrsas_ocr_thread ; 
 int FUNC16 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct mrsas_softc *sc = FUNC5(dev);
	uint32_t cmd, error;

	FUNC8(sc, 0, sizeof(struct mrsas_softc));

	/* Look up our softc and initialize its fields. */
	sc->mrsas_dev = dev;
	sc->device_id = FUNC21(dev);

	switch (sc->device_id) {
	case MRSAS_INVADER:
	case MRSAS_FURY:
	case MRSAS_INTRUDER:
	case MRSAS_INTRUDER_24:
	case MRSAS_CUTLASS_52:
	case MRSAS_CUTLASS_53:
		sc->mrsas_gen3_ctrl = 1;
		break;
	case MRSAS_VENTURA:
	case MRSAS_CRUSADER:
	case MRSAS_HARPOON:
	case MRSAS_TOMCAT:
	case MRSAS_VENTURA_4PORT:
	case MRSAS_CRUSADER_4PORT:
		sc->is_ventura = true;
		break;
	case MRSAS_AERO_10E1:
	case MRSAS_AERO_10E5:
		FUNC7(dev, "Adapter is in configurable secure mode\n");
	case MRSAS_AERO_10E2:
	case MRSAS_AERO_10E6:
		sc->is_aero = true;
		break;
	case MRSAS_AERO_10E0:
	case MRSAS_AERO_10E3:
	case MRSAS_AERO_10E4:
	case MRSAS_AERO_10E7:
		FUNC7(dev, "Adapter is in non-secure mode\n");
		return SUCCESS;

	}

	FUNC13(sc);

	/*
	 * Set up PCI and registers
	 */
	cmd = FUNC22(dev, PCIR_COMMAND, 2);
	if ((cmd & PCIM_CMD_PORTEN) == 0) {
		return (ENXIO);
	}
	/* Force the busmaster enable bit on. */
	cmd |= PCIM_CMD_BUSMASTEREN;
	FUNC24(dev, PCIR_COMMAND, cmd, 2);

	/* For Ventura/Aero system registers are mapped to BAR0 */
	if (sc->is_ventura || sc->is_aero)
		sc->reg_res_id = FUNC0(0);	/* BAR0 offset */
	else
		sc->reg_res_id = FUNC0(1);	/* BAR1 offset */

	if ((sc->reg_res = FUNC2(dev, SYS_RES_MEMORY,
	    &(sc->reg_res_id), RF_ACTIVE))
	    == NULL) {
		FUNC7(dev, "Cannot allocate PCI registers\n");
		goto attach_fail;
	}
	sc->bus_tag = FUNC26(sc->reg_res);
	sc->bus_handle = FUNC25(sc->reg_res);

	/* Intialize mutexes */
	FUNC20(&sc->sim_lock, "mrsas_sim_lock", NULL, MTX_DEF);
	FUNC20(&sc->pci_lock, "mrsas_pci_lock", NULL, MTX_DEF);
	FUNC20(&sc->io_lock, "mrsas_io_lock", NULL, MTX_DEF);
	FUNC20(&sc->aen_lock, "mrsas_aen_lock", NULL, MTX_DEF);
	FUNC20(&sc->ioctl_lock, "mrsas_ioctl_lock", NULL, MTX_SPIN);
	FUNC20(&sc->mpt_cmd_pool_lock, "mrsas_mpt_cmd_pool_lock", NULL, MTX_DEF);
	FUNC20(&sc->mfi_cmd_pool_lock, "mrsas_mfi_cmd_pool_lock", NULL, MTX_DEF);
	FUNC20(&sc->raidmap_lock, "mrsas_raidmap_lock", NULL, MTX_DEF);
	FUNC20(&sc->stream_lock, "mrsas_stream_lock", NULL, MTX_DEF);

	/* Intialize linked list */
	FUNC1(&sc->mrsas_mpt_cmd_list_head);
	FUNC1(&sc->mrsas_mfi_cmd_list_head);

	FUNC9(&sc->fw_outstanding, 0);
	FUNC9(&sc->target_reset_outstanding, 0);
	FUNC9(&sc->prp_count, 0);
	FUNC9(&sc->sge_holes, 0);

	sc->io_cmds_highwater = 0;

	sc->adprecovery = MRSAS_HBA_OPERATIONAL;
	sc->UnevenSpanSupport = 0;

	sc->msix_enable = 0;

	/* Initialize Firmware */
	if (FUNC14(sc) != SUCCESS) {
		goto attach_fail_fw;
	}
	/* Register mrsas to CAM layer */
	if ((FUNC10(sc) != SUCCESS)) {
		goto attach_fail_cam;
	}
	/* Register IRQs */
	if (FUNC16(sc) != SUCCESS) {
		goto attach_fail_irq;
	}
	error = FUNC15(mrsas_ocr_thread, sc,
	    &sc->ocr_thread, 0, 0, "mrsas_ocr%d",
	    FUNC6(sc->mrsas_dev));
	if (error) {
		FUNC7(sc->mrsas_dev, "Error %d starting OCR thread\n", error);
		goto attach_fail_ocr_thread;
	}
	/*
	 * After FW initialization and OCR thread creation
	 * we will defer the cdev creation, AEN setup on ICH callback
	 */
	sc->mrsas_ich.ich_func = mrsas_ich_startup;
	sc->mrsas_ich.ich_arg = sc;
	if (FUNC4(&sc->mrsas_ich) != 0) {
		FUNC7(sc->mrsas_dev, "Config hook is already established\n");
	}
	FUNC17(sc);
	return SUCCESS;

attach_fail_ocr_thread:
	if (sc->ocr_thread_active)
		FUNC27(&sc->ocr_chan);
attach_fail_irq:
	FUNC18(sc);
attach_fail_cam:
	FUNC11(sc);
attach_fail_fw:
	/* if MSIX vector is allocated and FW Init FAILED then release MSIX */
	if (sc->msix_enable == 1)
		FUNC23(sc->mrsas_dev);
	FUNC12(sc);
	FUNC19(&sc->sim_lock);
	FUNC19(&sc->aen_lock);
	FUNC19(&sc->pci_lock);
	FUNC19(&sc->io_lock);
	FUNC19(&sc->ioctl_lock);
	FUNC19(&sc->mpt_cmd_pool_lock);
	FUNC19(&sc->mfi_cmd_pool_lock);
	FUNC19(&sc->raidmap_lock);
	FUNC19(&sc->stream_lock);
attach_fail:
	if (sc->reg_res) {
		FUNC3(sc->mrsas_dev, SYS_RES_MEMORY,
		    sc->reg_res_id, sc->reg_res);
	}
	return (ENXIO);
}