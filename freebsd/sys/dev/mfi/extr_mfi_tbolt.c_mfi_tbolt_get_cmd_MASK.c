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
typedef  int /*<<< orphan*/  uint8_t ;
struct mfi_softc {int /*<<< orphan*/  mfi_cmd_tbolt_tqh; int /*<<< orphan*/  mfi_io_lock; } ;
struct mfi_command {int /*<<< orphan*/  cm_flags; int /*<<< orphan*/  cm_extra_frames; int /*<<< orphan*/  cm_index; } ;
struct mfi_cmd_tbolt {int /*<<< orphan*/  index; int /*<<< orphan*/  sync_cmd_idx; scalar_t__ io_request; scalar_t__ sg_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MEGASAS_MAX_SZ_CHAIN_FRAME ; 
 int /*<<< orphan*/  MEGASAS_THUNDERBOLT_NEW_MSG_SIZE ; 
 int /*<<< orphan*/  MFI_CMD_TBOLT ; 
 struct mfi_cmd_tbolt* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mfi_cmd_tbolt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

struct mfi_cmd_tbolt *
FUNC4(struct mfi_softc *sc, struct mfi_command *mfi_cmd)
{
	struct mfi_cmd_tbolt *cmd = NULL;

	FUNC3(&sc->mfi_io_lock, MA_OWNED);

	if ((cmd = FUNC0(&sc->mfi_cmd_tbolt_tqh)) == NULL)
		return (NULL);
	FUNC1(&sc->mfi_cmd_tbolt_tqh, cmd, next);
	FUNC2((uint8_t *)cmd->sg_frame, 0, MEGASAS_MAX_SZ_CHAIN_FRAME);
	FUNC2((uint8_t *)cmd->io_request, 0,
	    MEGASAS_THUNDERBOLT_NEW_MSG_SIZE);

	cmd->sync_cmd_idx = mfi_cmd->cm_index;
	mfi_cmd->cm_extra_frames = cmd->index; /* Frame count used as SMID */
	mfi_cmd->cm_flags |= MFI_CMD_TBOLT;

	return cmd;
}