#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct mrsas_tmp_dcmd {int /*<<< orphan*/  tmp_dcmd_phys_addr; struct MR_LD_LIST* tmp_dcmd_mem; } ;
struct mrsas_softc {int fw_supported_vd_count; int CurLdCount; int* ld_ids; int /*<<< orphan*/  mask_interrupts; int /*<<< orphan*/  do_timedout_reset; TYPE_8__* target_list; scalar_t__ max256vdSupport; int /*<<< orphan*/  mrsas_dev; } ;
struct mrsas_mfi_cmd {TYPE_1__* frame; } ;
struct TYPE_12__ {TYPE_3__* sge32; } ;
struct TYPE_10__ {int* b; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; scalar_t__ pad_0; TYPE_4__ sgl; int /*<<< orphan*/  opcode; scalar_t__ timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; TYPE_2__ mbox; } ;
struct MR_LD_LIST {int ldCount; TYPE_7__* ldList; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_16__ {int target_id; } ;
struct TYPE_13__ {int targetId; } ;
struct TYPE_14__ {TYPE_5__ ld_context; } ;
struct TYPE_15__ {scalar_t__ state; TYPE_6__ ref; } ;
struct TYPE_11__ {int length; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_9__ {struct mrsas_dcmd_frame dcmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MAX_LOGICAL_DRIVES_EXT ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_DCMD_TIMEOUT_OCR ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_READ ; 
 int /*<<< orphan*/  MFI_MBOX_SIZE ; 
 int MRSAS_MAX_PD ; 
 int /*<<< orphan*/  MR_DCMD_LD_GET_LIST ; 
 int /*<<< orphan*/  M_MRSAS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_tmp_dcmd*,int /*<<< orphan*/ ) ; 
 struct mrsas_tmp_dcmd* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mrsas_softc*,int) ; 
 scalar_t__ FUNC5 (struct mrsas_softc*,struct mrsas_tmp_dcmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mrsas_tmp_dcmd*) ; 
 struct mrsas_mfi_cmd* FUNC7 (struct mrsas_softc*) ; 
 int FUNC8 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int FUNC9 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct mrsas_softc*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static int
FUNC13(struct mrsas_softc *sc)
{
	int ld_list_size, retcode = 0, ld_index = 0, ids = 0, drv_tgt_id;
	u_int8_t do_ocr = 1;
	struct mrsas_mfi_cmd *cmd;
	struct mrsas_dcmd_frame *dcmd;
	struct MR_LD_LIST *ld_list_mem;
	bus_addr_t ld_list_phys_addr = 0;
	struct mrsas_tmp_dcmd *tcmd;

	cmd = FUNC7(sc);
	if (!cmd) {
		FUNC0(sc->mrsas_dev,
		    "Cannot alloc for get LD list cmd\n");
		return 1;
	}
	dcmd = &cmd->frame->dcmd;

	tcmd = FUNC2(sizeof(struct mrsas_tmp_dcmd), M_MRSAS, M_NOWAIT);
	ld_list_size = sizeof(struct MR_LD_LIST);
	if (FUNC5(sc, tcmd, ld_list_size) != SUCCESS) {
		FUNC0(sc->mrsas_dev,
		    "Cannot alloc dmamap for get LD list cmd\n");
		FUNC10(cmd);
		FUNC6(tcmd);
		FUNC1(tcmd, M_MRSAS);
		return (ENOMEM);
	} else {
		ld_list_mem = tcmd->tmp_dcmd_mem;
		ld_list_phys_addr = tcmd->tmp_dcmd_phys_addr;
	}
	FUNC3(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

	if (sc->max256vdSupport)
		dcmd->mbox.b[0] = 1;

	dcmd->cmd = MFI_CMD_DCMD;
	dcmd->cmd_status = 0xFF;
	dcmd->sge_count = 1;
	dcmd->flags = MFI_FRAME_DIR_READ;
	dcmd->timeout = 0;
	dcmd->data_xfer_len = sizeof(struct MR_LD_LIST);
	dcmd->opcode = MR_DCMD_LD_GET_LIST;
	dcmd->sgl.sge32[0].phys_addr = ld_list_phys_addr;
	dcmd->sgl.sge32[0].length = sizeof(struct MR_LD_LIST);
	dcmd->pad_0 = 0;

	if (!sc->mask_interrupts)
		retcode = FUNC8(sc, cmd);
	else
		retcode = FUNC9(sc, cmd);

	if (retcode == ETIMEDOUT)
		goto dcmd_timeout;

#if VD_EXT_DEBUG
	printf("Number of LDs %d\n", ld_list_mem->ldCount);
#endif

	/* Get the instance LD list */
	if (ld_list_mem->ldCount <= sc->fw_supported_vd_count) {
		sc->CurLdCount = ld_list_mem->ldCount;
		FUNC3(sc->ld_ids, 0xff, MAX_LOGICAL_DRIVES_EXT);
		for (ld_index = 0; ld_index < ld_list_mem->ldCount; ld_index++) {
			ids = ld_list_mem->ldList[ld_index].ref.ld_context.targetId;
			drv_tgt_id = ids + MRSAS_MAX_PD;
			if (ld_list_mem->ldList[ld_index].state != 0) {
				sc->ld_ids[ids] = ld_list_mem->ldList[ld_index].ref.ld_context.targetId;
				if (sc->target_list[drv_tgt_id].target_id ==
					0xffff)
					FUNC4(sc, drv_tgt_id);
			} else {
				if (sc->target_list[drv_tgt_id].target_id !=
					0xffff)
					FUNC11(sc,
						drv_tgt_id);
			}
		}

		do_ocr = 0;
	}
dcmd_timeout:
	FUNC6(tcmd);
	FUNC1(tcmd, M_MRSAS);

	if (do_ocr)
		sc->do_timedout_reset = MFI_DCMD_TIMEOUT_OCR;
	if (!sc->mask_interrupts)
		FUNC10(cmd);

	return (retcode);
}