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
typedef  int uint32_t ;
struct pvscsi_softc {int dummy; } ;
struct pvscsi_cmd_desc_setup_req_call {int enable; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  PVSCSI_CMD_SETUP_REQCALLTHRESHOLD ; 
 int /*<<< orphan*/  PVSCSI_REG_OFFSET_COMMAND ; 
 int /*<<< orphan*/  PVSCSI_REG_OFFSET_COMMAND_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pvscsi_cmd_desc_setup_req_call*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_softc*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pvscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvscsi_use_req_call_threshold ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_softc*,int /*<<< orphan*/ ,struct pvscsi_cmd_desc_setup_req_call*,int) ; 

__attribute__((used)) static int FUNC5(struct pvscsi_softc *sc, uint32_t enable)
{
	uint32_t status;
	struct pvscsi_cmd_desc_setup_req_call cmd;

	if (!FUNC1(sc, "pvscsi_use_req_call_threshold",
	    pvscsi_use_req_call_threshold)) {
		return (0);
	}

	FUNC3(sc, PVSCSI_REG_OFFSET_COMMAND,
	    PVSCSI_CMD_SETUP_REQCALLTHRESHOLD);
	status = FUNC2(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

	if (status != -1) {
		FUNC0(&cmd, sizeof(cmd));
		cmd.enable = enable;
		FUNC4(sc, PVSCSI_CMD_SETUP_REQCALLTHRESHOLD,
		    &cmd, sizeof(cmd));
		status = FUNC2(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

		return (status != 0);
	} else {
		return (0);
	}
}