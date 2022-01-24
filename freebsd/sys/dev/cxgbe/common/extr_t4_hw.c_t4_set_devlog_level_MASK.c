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
struct fw_devlog_cmd {unsigned int level; void* retval_len16; void* op_to_write; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  devlog_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEVLOG_CMD ; 
 int FUNC0 (struct fw_devlog_cmd) ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_devlog_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,struct fw_devlog_cmd*,int,struct fw_devlog_cmd*) ; 

int FUNC5(struct adapter *adapter, unsigned int level)
{
	struct fw_devlog_cmd devlog_cmd;

	FUNC3(&devlog_cmd, 0, sizeof(devlog_cmd));
	devlog_cmd.op_to_write = FUNC2(FUNC1(FW_DEVLOG_CMD) |
					     F_FW_CMD_REQUEST |
					     F_FW_CMD_WRITE);
	devlog_cmd.level = level;
	devlog_cmd.retval_len16 = FUNC2(FUNC0(devlog_cmd));
	return FUNC4(adapter, adapter->mbox, &devlog_cmd,
			  sizeof(devlog_cmd), &devlog_cmd);
}