#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int minmaxen; int /*<<< orphan*/  sc; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct fw_sched_cmd {TYPE_2__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (struct fw_sched_cmd) ; 
 int /*<<< orphan*/  FW_SCHED_CMD ; 
 int /*<<< orphan*/  FW_SCHED_SC_CONFIG ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_sched_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,struct fw_sched_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct adapter *adapter, int type, int minmaxen,
    int sleep_ok)
{
	struct fw_sched_cmd cmd;

	FUNC3(&cmd, 0, sizeof(cmd));
	cmd.op_to_write = FUNC2(FUNC1(FW_SCHED_CMD) |
				      F_FW_CMD_REQUEST |
				      F_FW_CMD_WRITE);
	cmd.retval_len16 = FUNC2(FUNC0(cmd));

	cmd.u.config.sc = FW_SCHED_SC_CONFIG;
	cmd.u.config.type = type;
	cmd.u.config.minmaxen = minmaxen;

	return FUNC4(adapter,adapter->mbox, &cmd, sizeof(cmd),
			       NULL, sleep_ok);
}