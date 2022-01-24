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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int ctrl_to_fn; int r; int /*<<< orphan*/ * data; int /*<<< orphan*/  select_naccess; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int /*<<< orphan*/  mbox; int /*<<< orphan*/  pf; } ;
typedef  int /*<<< orphan*/  ldst_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int,int) ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_FUNC_PCIE ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int FUNC1 (struct fw_ldst_cmd) ; 
 int F_FW_CMD_READ ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_LDST_CMD_LC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int) ; 
 int FUNC10 (struct adapter*,int /*<<< orphan*/ ,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 

u32 FUNC11(struct adapter *adap, int reg, int drv_fw_attach)
{

	/*
	 * If fw_attach != 0, construct and send the Firmware LDST Command to
	 * retrieve the specified PCI-E Configuration Space register.
	 */
	if (drv_fw_attach != 0) {
		struct fw_ldst_cmd ldst_cmd;
		int ret;

		FUNC8(&ldst_cmd, 0, sizeof(ldst_cmd));
		ldst_cmd.op_to_addrspace =
			FUNC7(FUNC2(FW_LDST_CMD) |
				    F_FW_CMD_REQUEST |
				    F_FW_CMD_READ |
				    FUNC3(FW_LDST_ADDRSPC_FUNC_PCIE));
		ldst_cmd.cycles_to_len16 = FUNC7(FUNC1(ldst_cmd));
		ldst_cmd.u.pcie.select_naccess = FUNC5(1);
		ldst_cmd.u.pcie.ctrl_to_fn =
			(F_FW_LDST_CMD_LC | FUNC4(adap->pf));
		ldst_cmd.u.pcie.r = reg;

		/*
		 * If the LDST Command succeeds, return the result, otherwise
		 * fall through to reading it directly ourselves ...
		 */
		ret = FUNC10(adap, adap->mbox, &ldst_cmd, sizeof(ldst_cmd),
				 &ldst_cmd);
		if (ret == 0)
			return FUNC6(ldst_cmd.u.pcie.data[0]);

		FUNC0(adap, "Firmware failed to return "
			"Configuration Space register %d, err = %d\n",
			reg, -ret);
	}

	/*
	 * Read the desired Configuration Space register via the PCI-E
	 * Backdoor mechanism.
	 */
	return FUNC9(adap, reg);
}