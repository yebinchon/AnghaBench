#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int u_int8_t ;
struct mrsas_softc {int pd_seq_map_id; int /*<<< orphan*/  do_timedout_reset; int /*<<< orphan*/  mrsas_dev; struct mrsas_mfi_cmd* jbod_seq_cmd; int /*<<< orphan*/ * jbodmap_phys_addr; scalar_t__* jbodmap_mem; } ;
struct mrsas_mfi_cmd {TYPE_1__* frame; } ;
struct TYPE_8__ {struct MR_PD_CFG_SEQ_NUM_SYNC* b; } ;
struct TYPE_7__ {TYPE_2__* sge32; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int /*<<< orphan*/  flags; TYPE_4__ mbox; TYPE_3__ sgl; int /*<<< orphan*/  opcode; void* data_xfer_len; scalar_t__ pad_0; scalar_t__ timeout; int /*<<< orphan*/  cmd; } ;
struct MR_PD_CFG_SEQ_NUM_SYNC {int count; } ;
struct MR_PD_CFG_SEQ {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {void* length; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_5__ {struct mrsas_dcmd_frame dcmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int MAX_PHYSICAL_DEVICES ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_DCMD_TIMEOUT_OCR ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_READ ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_WRITE ; 
 void* MFI_MBOX_SIZE ; 
 struct MR_PD_CFG_SEQ_NUM_SYNC MRSAS_DCMD_MBOX_PEND_FLAG ; 
 int /*<<< orphan*/  MR_DCMD_SYSTEM_PD_MAP_GET_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct MR_PD_CFG_SEQ_NUM_SYNC*,int /*<<< orphan*/ ,void*) ; 
 struct mrsas_mfi_cmd* FUNC2 (struct mrsas_softc*) ; 
 scalar_t__ FUNC3 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int FUNC4 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct mrsas_mfi_cmd*) ; 

int
FUNC6(struct mrsas_softc *sc, boolean_t pend)
{
	int retcode = 0;
	u_int8_t do_ocr = 1;
	struct mrsas_mfi_cmd *cmd;
	struct mrsas_dcmd_frame *dcmd;
	uint32_t pd_seq_map_sz;
	struct MR_PD_CFG_SEQ_NUM_SYNC *pd_sync;
	bus_addr_t pd_seq_h;

	pd_seq_map_sz = sizeof(struct MR_PD_CFG_SEQ_NUM_SYNC) +
	    (sizeof(struct MR_PD_CFG_SEQ) *
	    (MAX_PHYSICAL_DEVICES - 1));

	cmd = FUNC2(sc);
	if (!cmd) {
		FUNC0(sc->mrsas_dev,
		    "Cannot alloc for ld map info cmd.\n");
		return 1;
	}
	dcmd = &cmd->frame->dcmd;

	pd_sync = (void *)sc->jbodmap_mem[(sc->pd_seq_map_id & 1)];
	pd_seq_h = sc->jbodmap_phys_addr[(sc->pd_seq_map_id & 1)];
	if (!pd_sync) {
		FUNC0(sc->mrsas_dev,
		    "Failed to alloc mem for jbod map info.\n");
		FUNC5(cmd);
		return (ENOMEM);
	}
	FUNC1(pd_sync, 0, pd_seq_map_sz);
	FUNC1(dcmd->mbox.b, 0, MFI_MBOX_SIZE);
	dcmd->cmd = MFI_CMD_DCMD;
	dcmd->cmd_status = 0xFF;
	dcmd->sge_count = 1;
	dcmd->timeout = 0;
	dcmd->pad_0 = 0;
	dcmd->data_xfer_len = (pd_seq_map_sz);
	dcmd->opcode = (MR_DCMD_SYSTEM_PD_MAP_GET_INFO);
	dcmd->sgl.sge32[0].phys_addr = (pd_seq_h);
	dcmd->sgl.sge32[0].length = (pd_seq_map_sz);

	if (pend) {
		dcmd->mbox.b[0] = MRSAS_DCMD_MBOX_PEND_FLAG;
		dcmd->flags = (MFI_FRAME_DIR_WRITE);
		sc->jbod_seq_cmd = cmd;
		if (FUNC3(sc, cmd)) {
			FUNC0(sc->mrsas_dev,
			    "Fail to send sync map info command.\n");
			return 1;
		} else
			return 0;
	} else
		dcmd->flags = MFI_FRAME_DIR_READ;

	retcode = FUNC4(sc, cmd);
	if (retcode == ETIMEDOUT)
		goto dcmd_timeout;

	if (pd_sync->count > MAX_PHYSICAL_DEVICES) {
		FUNC0(sc->mrsas_dev,
		    "driver supports max %d JBOD, but FW reports %d\n",
		    MAX_PHYSICAL_DEVICES, pd_sync->count);
		retcode = -EINVAL;
	}
	if (!retcode)
		sc->pd_seq_map_id++;
	do_ocr = 0;

dcmd_timeout:
	if (do_ocr)
		sc->do_timedout_reset = MFI_DCMD_TIMEOUT_OCR;

	return (retcode);
}