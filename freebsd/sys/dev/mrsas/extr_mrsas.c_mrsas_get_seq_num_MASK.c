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
typedef  scalar_t__ u_int8_t ;
struct mrsas_softc {int /*<<< orphan*/  do_timedout_reset; int /*<<< orphan*/  el_info_mem; int /*<<< orphan*/  el_info_phys_addr; int /*<<< orphan*/  mrsas_dev; } ;
struct mrsas_mfi_cmd {TYPE_1__* frame; } ;
struct mrsas_evt_log_info {int dummy; } ;
struct TYPE_8__ {TYPE_3__* sge32; } ;
struct TYPE_6__ {int /*<<< orphan*/  b; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; TYPE_4__ sgl; int /*<<< orphan*/  opcode; scalar_t__ pad_0; scalar_t__ timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; TYPE_2__ mbox; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_5__ {struct mrsas_dcmd_frame dcmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_DCMD_TIMEOUT_OCR ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_READ ; 
 int /*<<< orphan*/  MFI_MBOX_SIZE ; 
 int /*<<< orphan*/  MR_DCMD_CTRL_EVENT_GET_INFO ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_evt_log_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mrsas_softc*) ; 
 struct mrsas_mfi_cmd* FUNC5 (struct mrsas_softc*) ; 
 scalar_t__ FUNC6 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct mrsas_mfi_cmd*) ; 

__attribute__((used)) static int
FUNC8(struct mrsas_softc *sc,
    struct mrsas_evt_log_info *eli)
{
	struct mrsas_mfi_cmd *cmd;
	struct mrsas_dcmd_frame *dcmd;
	u_int8_t do_ocr = 1, retcode = 0;

	cmd = FUNC5(sc);

	if (!cmd) {
		FUNC0(sc->mrsas_dev, "Failed to get a free cmd\n");
		return -ENOMEM;
	}
	dcmd = &cmd->frame->dcmd;

	if (FUNC3(sc) != SUCCESS) {
		FUNC0(sc->mrsas_dev, "Cannot allocate evt log info cmd\n");
		FUNC7(cmd);
		return -ENOMEM;
	}
	FUNC2(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

	dcmd->cmd = MFI_CMD_DCMD;
	dcmd->cmd_status = 0x0;
	dcmd->sge_count = 1;
	dcmd->flags = MFI_FRAME_DIR_READ;
	dcmd->timeout = 0;
	dcmd->pad_0 = 0;
	dcmd->data_xfer_len = sizeof(struct mrsas_evt_log_info);
	dcmd->opcode = MR_DCMD_CTRL_EVENT_GET_INFO;
	dcmd->sgl.sge32[0].phys_addr = sc->el_info_phys_addr;
	dcmd->sgl.sge32[0].length = sizeof(struct mrsas_evt_log_info);

	retcode = FUNC6(sc, cmd);
	if (retcode == ETIMEDOUT)
		goto dcmd_timeout;

	do_ocr = 0;
	/*
	 * Copy the data back into callers buffer
	 */
	FUNC1(eli, sc->el_info_mem, sizeof(struct mrsas_evt_log_info));
	FUNC4(sc);

dcmd_timeout:
	if (do_ocr)
		sc->do_timedout_reset = MFI_DCMD_TIMEOUT_OCR;
	else
		FUNC7(cmd);

	return retcode;
}