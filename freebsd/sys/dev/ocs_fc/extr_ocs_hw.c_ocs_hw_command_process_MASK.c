#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  os; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  cmd_head_count; int /*<<< orphan*/  cmd_head; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_10__ {int /*<<< orphan*/  arg; scalar_t__ buf; int /*<<< orphan*/  (* cb ) (TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ ocs_command_ctx_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC9(ocs_hw_t *hw, int32_t status, uint8_t *mqe, size_t size)
{
	ocs_command_ctx_t *ctx = NULL;

	FUNC3(&hw->cmd_lock);
		if (NULL == (ctx = FUNC2(&hw->cmd_head))) {
			FUNC4(hw->os, "XXX no command context?!?\n");
			FUNC7(&hw->cmd_lock);
			return -1;
		}

		hw->cmd_head_count--;

		/* Post any pending requests */
		FUNC1(hw);

	FUNC7(&hw->cmd_lock);

	if (ctx->cb) {
		if (ctx->buf) {
			FUNC5(ctx->buf, mqe, size);
		}
		ctx->cb(hw, status, ctx->buf, ctx->arg);
	}

	FUNC6(ctx, 0, sizeof(ocs_command_ctx_t));
	FUNC0(hw->os, ctx, sizeof(ocs_command_ctx_t));

	return 0;
}