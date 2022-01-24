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
struct TYPE_3__ {int ch; int cl; int /*<<< orphan*/  weight; int /*<<< orphan*/  level; int /*<<< orphan*/  type; int /*<<< orphan*/  sc; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct fw_sched_cmd {TYPE_2__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct fw_sched_cmd) ; 
 int /*<<< orphan*/  FW_SCHED_CMD ; 
 int /*<<< orphan*/  FW_SCHED_PARAMS_LEVEL_CL_WRR ; 
 int /*<<< orphan*/  FW_SCHED_SC_PARAMS ; 
 int /*<<< orphan*/  FW_SCHED_TYPE_PKTSCHED ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_sched_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,struct fw_sched_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct adapter *adapter, int channel, int cl,
    int weight, int sleep_ok)
{
	struct fw_sched_cmd cmd;

	if (weight < 0 || weight > 100)
		return -EINVAL;

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.op_to_write = FUNC3(FUNC1(FW_SCHED_CMD) |
				      F_FW_CMD_REQUEST |
				      F_FW_CMD_WRITE);
	cmd.retval_len16 = FUNC3(FUNC0(cmd));

	cmd.u.params.sc = FW_SCHED_SC_PARAMS;
	cmd.u.params.type = FW_SCHED_TYPE_PKTSCHED;
	cmd.u.params.level = FW_SCHED_PARAMS_LEVEL_CL_WRR;
	cmd.u.params.ch = channel;
	cmd.u.params.cl = cl;
	cmd.u.params.weight = FUNC2(weight);

	return FUNC5(adapter,adapter->mbox, &cmd, sizeof(cmd),
			       NULL, sleep_ok);
}