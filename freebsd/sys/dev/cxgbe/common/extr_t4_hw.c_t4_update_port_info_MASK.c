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
struct port_info {int /*<<< orphan*/  tx_chan; struct adapter* adapter; } ;
struct fw_port_cmd {void* action_to_len16; void* op_to_portid; } ;
struct TYPE_2__ {scalar_t__ port_caps32; } ;
struct adapter {int /*<<< orphan*/  mbox; TYPE_1__ params; } ;
typedef  enum fw_port_action { ____Placeholder_fw_port_action } fw_port_action ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (struct fw_port_cmd) ; 
 int FW_PORT_ACTION_GET_PORT_INFO ; 
 int FW_PORT_ACTION_GET_PORT_INFO32 ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int F_FW_CMD_READ ; 
 int F_FW_CMD_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct port_info*,struct fw_port_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

int FUNC8(struct port_info *pi)
 {
	struct adapter *sc = pi->adapter;
	struct fw_port_cmd cmd;
	enum fw_port_action action;
	int ret;

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.op_to_portid = FUNC4(FUNC1(FW_PORT_CMD) |
	    F_FW_CMD_REQUEST | F_FW_CMD_READ |
	    FUNC3(pi->tx_chan));
	action = sc->params.port_caps32 ? FW_PORT_ACTION_GET_PORT_INFO32 :
	    FW_PORT_ACTION_GET_PORT_INFO;
	cmd.action_to_len16 = FUNC4(FUNC2(action) |
	    FUNC0(cmd));
	ret = FUNC7(sc, sc->mbox, &cmd, sizeof(cmd), &cmd);
	if (ret)
		return ret;

	FUNC5(pi, &cmd, action, NULL, NULL);
	return 0;
}