#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  size_t u_int16_t ;
struct mrsas_softc {int /*<<< orphan*/  mask_interrupts; int /*<<< orphan*/  do_timedout_reset; TYPE_9__* pd_info_mem; TYPE_5__* target_list; scalar_t__ pd_info_phys_addr; int /*<<< orphan*/  mrsas_dev; } ;
struct mrsas_pd_info {int dummy; } ;
struct mrsas_mfi_cmd {TYPE_1__* frame; } ;
struct TYPE_13__ {TYPE_3__* sge32; } ;
struct TYPE_11__ {size_t* s; TYPE_9__* b; } ;
struct mrsas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; TYPE_4__ sgl; int /*<<< orphan*/  opcode; scalar_t__ pad_0; scalar_t__ timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; TYPE_2__ mbox; } ;
struct TYPE_15__ {int /*<<< orphan*/  intf; } ;
struct TYPE_16__ {TYPE_6__ pdType; } ;
struct TYPE_17__ {TYPE_7__ ddf; } ;
struct TYPE_18__ {TYPE_8__ state; } ;
struct TYPE_14__ {int /*<<< orphan*/  interface_type; } ;
struct TYPE_12__ {int length; scalar_t__ phys_addr; } ;
struct TYPE_10__ {struct mrsas_dcmd_frame dcmd; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_DCMD_TIMEOUT_OCR ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_READ ; 
 int MFI_MBOX_SIZE ; 
 int /*<<< orphan*/  MR_DCMD_PD_GET_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 struct mrsas_mfi_cmd* FUNC2 (struct mrsas_softc*) ; 
 int FUNC3 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int FUNC4 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct mrsas_mfi_cmd*) ; 

__attribute__((used)) static void
FUNC6(struct mrsas_softc *sc, u_int16_t device_id)
{
	int retcode;
	u_int8_t do_ocr = 1;
	struct mrsas_mfi_cmd *cmd;
	struct mrsas_dcmd_frame *dcmd;

	cmd = FUNC2(sc);

	if (!cmd) {
		FUNC0(sc->mrsas_dev,
		    "Cannot alloc for get PD info cmd\n");
		return;
	}
	dcmd = &cmd->frame->dcmd;

	FUNC1(sc->pd_info_mem, 0, sizeof(struct mrsas_pd_info));
	FUNC1(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

	dcmd->mbox.s[0] = device_id;
	dcmd->cmd = MFI_CMD_DCMD;
	dcmd->cmd_status = 0xFF;
	dcmd->sge_count = 1;
	dcmd->flags = MFI_FRAME_DIR_READ;
	dcmd->timeout = 0;
	dcmd->pad_0 = 0;
	dcmd->data_xfer_len = sizeof(struct mrsas_pd_info);
	dcmd->opcode = MR_DCMD_PD_GET_INFO;
	dcmd->sgl.sge32[0].phys_addr = (u_int32_t)sc->pd_info_phys_addr;
	dcmd->sgl.sge32[0].length = sizeof(struct mrsas_pd_info);

	if (!sc->mask_interrupts)
		retcode = FUNC3(sc, cmd);
	else
		retcode = FUNC4(sc, cmd);

	if (retcode == ETIMEDOUT)
		goto dcmd_timeout;

	sc->target_list[device_id].interface_type =
		sc->pd_info_mem->state.ddf.pdType.intf;

	do_ocr = 0;

dcmd_timeout:

	if (do_ocr)
		sc->do_timedout_reset = MFI_DCMD_TIMEOUT_OCR;

	if (!sc->mask_interrupts)
		FUNC5(cmd);
}