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
struct fw_reset_cmd {void* retval_len16; void* op_to_write; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_reset_cmd) ; 
 int /*<<< orphan*/  FW_RESET_CMD ; 
 int F_FW_CMD_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_reset_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct adapter*,struct fw_reset_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC6(struct adapter *adapter)
{
	struct fw_reset_cmd cmd;

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.op_to_write = FUNC3(FUNC2(FW_RESET_CMD) |
				      F_FW_CMD_WRITE);
	cmd.retval_len16 = FUNC3(FUNC1(FUNC0(cmd)));
	return FUNC5(adapter, &cmd, sizeof(cmd), NULL);
}