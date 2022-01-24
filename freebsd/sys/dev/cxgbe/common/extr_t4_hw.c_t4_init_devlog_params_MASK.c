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
typedef  scalar_t__ u32 ;
struct fw_devlog_e {int dummy; } ;
struct fw_devlog_cmd {int start; unsigned int size; int /*<<< orphan*/  memsize_devlog; int /*<<< orphan*/  memtype; int /*<<< orphan*/  memtype_devlog_memaddr16_devlog; void* retval_len16; void* op_to_write; } ;
struct devlog_params {int start; unsigned int size; int /*<<< orphan*/  memsize_devlog; int /*<<< orphan*/  memtype; int /*<<< orphan*/  memtype_devlog_memaddr16_devlog; void* retval_len16; void* op_to_write; } ;
struct TYPE_2__ {struct fw_devlog_cmd devlog; } ;
struct adapter {int /*<<< orphan*/  mbox; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  devlog_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_FW_PF ; 
 int ENXIO ; 
 int /*<<< orphan*/  FW_DEVLOG_CMD ; 
 int FUNC0 (struct fw_devlog_cmd) ; 
 int F_FW_CMD_READ ; 
 int F_FW_CMD_REQUEST ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  PCIE_FW_PF_DEVLOG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct fw_devlog_cmd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct adapter*,int /*<<< orphan*/ ,struct fw_devlog_cmd*,int,struct fw_devlog_cmd*) ; 

int FUNC13(struct adapter *adap, int fw_attach)
{
	struct devlog_params *dparams = &adap->params.devlog;
	u32 pf_dparams;
	unsigned int devlog_meminfo;
	struct fw_devlog_cmd devlog_cmd;
	int ret;

	/* If we're dealing with newer firmware, the Device Log Paramerters
	 * are stored in a designated register which allows us to access the
	 * Device Log even if we can't talk to the firmware.
	 */
	pf_dparams =
		FUNC11(adap, FUNC6(A_PCIE_FW_PF, PCIE_FW_PF_DEVLOG));
	if (pf_dparams) {
		unsigned int nentries, nentries128;

		dparams->memtype = FUNC4(pf_dparams);
		dparams->start = FUNC3(pf_dparams) << 4;

		nentries128 = FUNC5(pf_dparams);
		nentries = (nentries128 + 1) * 128;
		dparams->size = nentries * sizeof(struct fw_devlog_e);

		return 0;
	}

	/*
	 * For any failing returns ...
	 */
	FUNC10(dparams, 0, sizeof *dparams);

	/*
	 * If we can't talk to the firmware, there's really nothing we can do
	 * at this point.
	 */
	if (!fw_attach)
		return -ENXIO;

	/* Otherwise, ask the firmware for it's Device Log Parameters.
	 */
	FUNC10(&devlog_cmd, 0, sizeof devlog_cmd);
	devlog_cmd.op_to_write = FUNC9(FUNC7(FW_DEVLOG_CMD) |
					     F_FW_CMD_REQUEST | F_FW_CMD_READ);
	devlog_cmd.retval_len16 = FUNC9(FUNC0(devlog_cmd));
	ret = FUNC12(adap, adap->mbox, &devlog_cmd, sizeof(devlog_cmd),
			 &devlog_cmd);
	if (ret)
		return ret;

	devlog_meminfo =
		FUNC8(devlog_cmd.memtype_devlog_memaddr16_devlog);
	dparams->memtype = FUNC2(devlog_meminfo);
	dparams->start = FUNC1(devlog_meminfo) << 4;
	dparams->size = FUNC8(devlog_cmd.memsize_devlog);

	return 0;
}