#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  dma_cmd; int /*<<< orphan*/  opts; void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sli4_res_common_get_reconfig_link_info_t ;
struct TYPE_18__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  ocs_hw_port_control_cb_t ;
typedef  TYPE_1__ ocs_hw_linkcfg_cb_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC8(ocs_hw_t *hw, uint32_t opts, ocs_hw_port_control_cb_t cb, void *arg)
{
	uint8_t *mbxdata;
	ocs_hw_linkcfg_cb_arg_t *cb_arg;
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

	/* mbxdata holds the header of the command */
	mbxdata = FUNC6(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC5(hw->os, "failed to malloc mbox\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* cb_arg holds the data that will be passed to the callback on completion */
	cb_arg = FUNC6(hw->os, sizeof(ocs_hw_linkcfg_cb_arg_t), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC5(hw->os, "failed to malloc cb_arg\n");
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = arg;
	cb_arg->opts = opts;

	/* dma_mem holds the non-embedded portion */
	if (FUNC0(hw->os, &cb_arg->dma_cmd, sizeof(sli4_res_common_get_reconfig_link_info_t), 4)) {
		FUNC5(hw->os, "Failed to allocate DMA buffer\n");
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC2(hw->os, cb_arg, sizeof(ocs_hw_linkcfg_cb_arg_t));
		return OCS_HW_RTN_NO_MEMORY;
	}

	if (FUNC7(&hw->sli, mbxdata, SLI4_BMBX_SIZE, &cb_arg->dma_cmd)) {
		rc = FUNC3(hw, mbxdata, opts, ocs_hw_get_active_link_config_cb, cb_arg);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC5(hw->os, "GET_RECONFIG_LINK_INFO failed\n");
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC1(hw->os, &cb_arg->dma_cmd);
		FUNC2(hw->os, cb_arg, sizeof(ocs_hw_linkcfg_cb_arg_t));
	} else if (opts == OCS_CMD_POLL) {
		/* if we're polling we have to call the callback here. */
		FUNC4(hw, 0, mbxdata, cb_arg);
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC1(hw->os, &cb_arg->dma_cmd);
		FUNC2(hw->os, cb_arg, sizeof(ocs_hw_linkcfg_cb_arg_t));
	} else {
		/* We weren't poling, so the callback got called */
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
	}

	return rc;
}