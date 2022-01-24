#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  ocs_hw_port_control_cb_t ;
struct TYPE_14__ {scalar_t__ virt; } ;
struct TYPE_13__ {TYPE_6__ dma_resp; TYPE_6__ dma_cmd; int /*<<< orphan*/  opts; void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_2__ ocs_hw_linkcfg_cb_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 int OCS_HW_DMTF_CLP_CMD_MAX ; 
 scalar_t__ OCS_HW_DMTF_CLP_RSP_MAX ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_6__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_6__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ocs_hw_linkcfg_dmtf_clp_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC11(ocs_hw_t *hw, uint32_t opts, ocs_hw_port_control_cb_t cb, void *arg)
{
	char cmd[OCS_HW_DMTF_CLP_CMD_MAX];
	ocs_hw_linkcfg_cb_arg_t *cb_arg;
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

	/* allocate memory for callback argument */
	cb_arg = FUNC6(hw->os, sizeof(*cb_arg), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC4(hw->os, "failed to malloc cb_arg");
		return OCS_HW_RTN_NO_MEMORY;
	}

	FUNC9(cmd, OCS_HW_DMTF_CLP_CMD_MAX, "show / OEMELX_LinkConfig");

	/* allocate DMA for command  */
	if (FUNC0(hw->os, &cb_arg->dma_cmd, FUNC10(cmd)+1, 4096)) {
		FUNC4(hw->os, "malloc failed\n");
		FUNC2(hw->os, cb_arg, sizeof(*cb_arg));
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* copy CLP command to DMA command */
	FUNC8(cb_arg->dma_cmd.virt, 0, FUNC10(cmd)+1);
	FUNC7(cb_arg->dma_cmd.virt, cmd, FUNC10(cmd));

	/* allocate DMA for response */
	if (FUNC0(hw->os, &cb_arg->dma_resp, OCS_HW_DMTF_CLP_RSP_MAX, 4096)) {
		FUNC4(hw->os, "malloc failed\n");
		FUNC1(hw->os, &cb_arg->dma_cmd);
		FUNC2(hw->os, cb_arg, sizeof(*cb_arg));
		return OCS_HW_RTN_NO_MEMORY;
	}
	cb_arg->cb = cb;
	cb_arg->arg = arg;
	cb_arg->opts = opts;

	rc = FUNC3(hw, &cb_arg->dma_cmd, &cb_arg->dma_resp,
					opts, ocs_hw_linkcfg_dmtf_clp_cb, cb_arg);

	if (opts == OCS_CMD_POLL || rc != OCS_HW_RTN_SUCCESS) {
		/* if failed or polling, free memory here; if not polling and success,
		 * will free in callback function
		 */
		if (rc) {
			FUNC5(hw->os, "CLP cmd=\"%s\" failed\n",
					(char *)cb_arg->dma_cmd.virt);
		}
		FUNC1(hw->os, &cb_arg->dma_cmd);
		FUNC1(hw->os, &cb_arg->dma_resp);
		FUNC2(hw->os, cb_arg, sizeof(*cb_arg));
	}
	return rc;
}