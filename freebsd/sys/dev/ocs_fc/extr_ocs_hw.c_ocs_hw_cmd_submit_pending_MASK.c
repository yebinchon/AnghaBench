#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cmd_head_count; int /*<<< orphan*/  os; int /*<<< orphan*/  mq; int /*<<< orphan*/  sli; int /*<<< orphan*/  cmd_head; int /*<<< orphan*/  cmd_pending; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ ocs_command_ctx_t ;
typedef  int int32_t ;

/* Variables and functions */
 int OCS_HW_MQ_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC4(ocs_hw_t *hw)
{
	ocs_command_ctx_t *ctx;
	int32_t rc = 0;

	/* Assumes lock held */

	/* Only submit MQE if there's room */
	while (hw->cmd_head_count < (OCS_HW_MQ_DEPTH - 1)) {
		ctx = FUNC1(&hw->cmd_pending);
		if (ctx == NULL) {
			break;
		}
		FUNC0(&hw->cmd_head, ctx);
		hw->cmd_head_count++;
		if (FUNC3(&hw->sli, hw->mq, ctx->buf) < 0) {
			FUNC2(hw->os, "sli_queue_write failed: %d\n", rc);
			rc = -1;
			break;
		}
	}
	return rc;
}