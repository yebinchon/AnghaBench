#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  int uint32_t ;
struct TYPE_14__ {void* virt; } ;
struct TYPE_17__ {TYPE_1__ bmbx; } ;
struct TYPE_15__ {int expiration_logged; scalar_t__ state; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  os; TYPE_4__ sli; TYPE_6__* mq; int /*<<< orphan*/  watchdog_timeout; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
struct TYPE_16__ {TYPE_2__* ctx; void* buf; void* arg; void* cb; } ;
typedef  TYPE_3__ ocs_command_ctx_t ;
struct TYPE_18__ {scalar_t__ length; } ;

/* Variables and functions */
 int OCS_CMD_NOWAIT ; 
 int OCS_CMD_POLL ; 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_NO_RESOURCES ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 scalar_t__ OCS_HW_STATE_ACTIVE ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_ERROR1 ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_ERROR2 ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_6__*) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 

ocs_hw_rtn_e
FUNC14(ocs_hw_t *hw, uint8_t *cmd, uint32_t opts, void *cb, void *arg)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;

	/*
	 * If the chip is in an error state (UE'd) then reject this mailbox
	 *  command.
	 */
	if (FUNC11(&hw->sli) > 0) {
		uint32_t err1 = FUNC13(&hw->sli, SLI4_REG_SLIPORT_ERROR1);
		uint32_t err2 = FUNC13(&hw->sli, SLI4_REG_SLIPORT_ERROR2);
		if (hw->expiration_logged == 0 && err1 == 0x2 && err2 == 0x10) {
			hw->expiration_logged = 1;
			FUNC4(hw->os,"Emulex: Heartbeat expired after %d seconds\n",
					hw->watchdog_timeout);
		}
		FUNC4(hw->os, "Chip is in an error state - reset needed\n");
		FUNC4(hw->os, "status=%#x error1=%#x error2=%#x\n",
			FUNC13(&hw->sli, SLI4_REG_SLIPORT_STATUS),
			err1, err2);

		return OCS_HW_RTN_ERROR;
	}

	if (OCS_CMD_POLL == opts) {

		FUNC3(&hw->cmd_lock);
		if (hw->mq->length && !FUNC12(&hw->sli, hw->mq)) {
			/*
			 * Can't issue Boot-strap mailbox command with other
			 * mail-queue commands pending as this interaction is
			 * undefined
			 */
			rc = OCS_HW_RTN_ERROR;
		} else {
			void *bmbx = hw->sli.bmbx.virt;

			FUNC8(bmbx, 0, SLI4_BMBX_SIZE);
			FUNC7(bmbx, cmd, SLI4_BMBX_SIZE);

			if (FUNC10(&hw->sli) == 0) {
				rc = OCS_HW_RTN_SUCCESS;
				FUNC7(cmd, bmbx, SLI4_BMBX_SIZE);
			}
		}
		FUNC9(&hw->cmd_lock);
	} else if (OCS_CMD_NOWAIT == opts) {
		ocs_command_ctx_t	*ctx = NULL;

		ctx = FUNC6(hw->os, sizeof(ocs_command_ctx_t), OCS_M_ZERO | OCS_M_NOWAIT);
		if (!ctx) {
			FUNC5(hw->os, "can't allocate command context\n");
			return OCS_HW_RTN_NO_RESOURCES;
		}

		if (hw->state != OCS_HW_STATE_ACTIVE) {
			FUNC5(hw->os, "Can't send command, HW state=%d\n", hw->state);
			FUNC0(hw->os, ctx, sizeof(*ctx));
			return OCS_HW_RTN_ERROR;
		}

		if (cb) {
			ctx->cb = cb;
			ctx->arg = arg;
		}
		ctx->buf = cmd;
		ctx->ctx = hw;

		FUNC3(&hw->cmd_lock);

			/* Add to pending list */
			FUNC2(&hw->cmd_pending, ctx);

			/* Submit as much of the pending list as we can */
			if (FUNC1(hw) == 0) {
				rc = OCS_HW_RTN_SUCCESS;
			}

		FUNC9(&hw->cmd_lock);
	}

	return rc;
}