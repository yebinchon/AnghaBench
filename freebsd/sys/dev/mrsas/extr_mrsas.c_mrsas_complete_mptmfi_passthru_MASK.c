#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct mrsas_softc {int fast_path_io; int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  raidmap_lock; int /*<<< orphan*/  use_seqnum_jbod_fp; int /*<<< orphan*/  pd_seq_map_id; int /*<<< orphan*/ * jbod_seq_cmd; int /*<<< orphan*/  mrsas_aen_triggered; int /*<<< orphan*/  map_id; int /*<<< orphan*/ * map_update_cmd; } ;
struct mrsas_mfi_cmd {TYPE_3__* frame; int /*<<< orphan*/  sync_cmd; int /*<<< orphan*/ * ccb_ptr; scalar_t__ retry_for_fw_reset; } ;
struct mrsas_header {int cmd_status; int cmd; } ;
struct TYPE_4__ {int* b; } ;
struct TYPE_5__ {int /*<<< orphan*/  opcode; TYPE_1__ mbox; } ;
struct TYPE_6__ {TYPE_2__ dcmd; struct mrsas_header hdr; } ;

/* Variables and functions */
#define  MFI_CMD_ABORT 134 
#define  MFI_CMD_DCMD 133 
#define  MFI_CMD_INVALID 132 
#define  MFI_CMD_LD_SCSI_IO 131 
#define  MFI_CMD_PD_SCSI_IO 130 
#define  MFI_CMD_SMP 129 
#define  MFI_CMD_STP 128 
 int MFI_STAT_NOT_FOUND ; 
 int MFI_STAT_OK ; 
 int /*<<< orphan*/  MR_DCMD_CTRL_EVENT_GET ; 
 int /*<<< orphan*/  MR_DCMD_CTRL_EVENT_GET_INFO ; 
 int /*<<< orphan*/  MR_DCMD_CTRL_EVENT_WAIT ; 
 int /*<<< orphan*/  MR_DCMD_LD_MAP_GET_INFO ; 
 int /*<<< orphan*/  MR_DCMD_SYSTEM_PD_MAP_GET_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mrsas_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd,
    u_int8_t status)
{
	struct mrsas_header *hdr = &cmd->frame->hdr;
	u_int8_t cmd_status = cmd->frame->hdr.cmd_status;

	/* Reset the retry counter for future re-tries */
	cmd->retry_for_fw_reset = 0;

	if (cmd->ccb_ptr)
		cmd->ccb_ptr = NULL;

	switch (hdr->cmd) {
	case MFI_CMD_INVALID:
		FUNC1(sc->mrsas_dev, "MFI_CMD_INVALID command.\n");
		break;
	case MFI_CMD_PD_SCSI_IO:
	case MFI_CMD_LD_SCSI_IO:
		/*
		 * MFI_CMD_PD_SCSI_IO and MFI_CMD_LD_SCSI_IO could have been
		 * issued either through an IO path or an IOCTL path. If it
		 * was via IOCTL, we will send it to internal completion.
		 */
		if (cmd->sync_cmd) {
			cmd->sync_cmd = 0;
			FUNC7(sc, cmd);
			break;
		}
	case MFI_CMD_SMP:
	case MFI_CMD_STP:
	case MFI_CMD_DCMD:
		/* Check for LD map update */
		if ((cmd->frame->dcmd.opcode == MR_DCMD_LD_MAP_GET_INFO) &&
		    (cmd->frame->dcmd.mbox.b[1] == 1)) {
			sc->fast_path_io = 0;
			FUNC8(&sc->raidmap_lock);
			sc->map_update_cmd = NULL;
			if (cmd_status != 0) {
				if (cmd_status != MFI_STAT_NOT_FOUND)
					FUNC1(sc->mrsas_dev, "map sync failed, status=%x\n", cmd_status);
				else {
					FUNC5(cmd);
					FUNC9(&sc->raidmap_lock);
					break;
				}
			} else
				sc->map_id++;
			FUNC5(cmd);
			if (FUNC0(sc))
				sc->fast_path_io = 0;
			else
				sc->fast_path_io = 1;
			FUNC6(sc);
			FUNC9(&sc->raidmap_lock);
			break;
		}
		if (cmd->frame->dcmd.opcode == MR_DCMD_CTRL_EVENT_GET_INFO ||
		    cmd->frame->dcmd.opcode == MR_DCMD_CTRL_EVENT_GET) {
			sc->mrsas_aen_triggered = 0;
		}
		/* FW has an updated PD sequence */
		if ((cmd->frame->dcmd.opcode ==
		    MR_DCMD_SYSTEM_PD_MAP_GET_INFO) &&
		    (cmd->frame->dcmd.mbox.b[0] == 1)) {

			FUNC8(&sc->raidmap_lock);
			sc->jbod_seq_cmd = NULL;
			FUNC5(cmd);

			if (cmd_status == MFI_STAT_OK) {
				sc->pd_seq_map_id++;
				/* Re-register a pd sync seq num cmd */
				if (FUNC2(sc, true))
					sc->use_seqnum_jbod_fp = 0;
			} else {
				sc->use_seqnum_jbod_fp = 0;
				FUNC1(sc->mrsas_dev,
				    "Jbod map sync failed, status=%x\n", cmd_status);
			}
			FUNC9(&sc->raidmap_lock);
			break;
		}
		/* See if got an event notification */
		if (cmd->frame->dcmd.opcode == MR_DCMD_CTRL_EVENT_WAIT)
			FUNC4(sc, cmd);
		else
			FUNC7(sc, cmd);
		break;
	case MFI_CMD_ABORT:
		/* Command issued to abort another cmd return */
		FUNC3(sc, cmd);
		break;
	default:
		FUNC1(sc->mrsas_dev, "Unknown command completed! [0x%X]\n", hdr->cmd);
		break;
	}
}