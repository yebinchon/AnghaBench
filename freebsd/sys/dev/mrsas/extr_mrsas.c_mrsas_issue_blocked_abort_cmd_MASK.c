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
typedef  unsigned long u_int8_t ;
struct mrsas_softc {int /*<<< orphan*/  mrsas_dev; void* chan; } ;
struct mrsas_mfi_cmd {int sync_cmd; int cmd_status; int /*<<< orphan*/  frame_phys_addr; int /*<<< orphan*/  index; TYPE_1__* frame; } ;
struct mrsas_abort_frame {int cmd_status; scalar_t__ abort_mfi_phys_addr_hi; int /*<<< orphan*/  abort_mfi_phys_addr_lo; int /*<<< orphan*/  abort_context; scalar_t__ flags; int /*<<< orphan*/  cmd; } ;
struct TYPE_2__ {struct mrsas_abort_frame abort; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_CMD_ABORT ; 
 unsigned long MRSAS_INTERNAL_CMD_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hz ; 
 struct mrsas_mfi_cmd* FUNC1 (struct mrsas_softc*) ; 
 scalar_t__ FUNC2 (struct mrsas_softc*,struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mrsas_softc *sc,
    struct mrsas_mfi_cmd *cmd_to_abort)
{
	struct mrsas_mfi_cmd *cmd;
	struct mrsas_abort_frame *abort_fr;
	u_int8_t retcode = 0;
	unsigned long total_time = 0;
	u_int8_t max_wait = MRSAS_INTERNAL_CMD_WAIT_TIME;

	cmd = FUNC1(sc);
	if (!cmd) {
		FUNC0(sc->mrsas_dev, "Cannot alloc for abort cmd\n");
		return (1);
	}
	abort_fr = &cmd->frame->abort;

	/* Prepare and issue the abort frame */
	abort_fr->cmd = MFI_CMD_ABORT;
	abort_fr->cmd_status = 0xFF;
	abort_fr->flags = 0;
	abort_fr->abort_context = cmd_to_abort->index;
	abort_fr->abort_mfi_phys_addr_lo = cmd_to_abort->frame_phys_addr;
	abort_fr->abort_mfi_phys_addr_hi = 0;

	cmd->sync_cmd = 1;
	cmd->cmd_status = 0xFF;

	if (FUNC2(sc, cmd)) {
		FUNC0(sc->mrsas_dev, "Fail to send abort command.\n");
		return (1);
	}
	/* Wait for this cmd to complete */
	sc->chan = (void *)&cmd;
	while (1) {
		if (cmd->cmd_status == 0xFF) {
			FUNC4((void *)&sc->chan, 0, "mrsas_sleep", hz);
		} else
			break;
		total_time++;
		if (total_time >= max_wait) {
			FUNC0(sc->mrsas_dev, "Abort cmd timed out after %d sec.\n", max_wait);
			retcode = 1;
			break;
		}
	}

	cmd->sync_cmd = 0;
	FUNC3(cmd);
	return (retcode);
}