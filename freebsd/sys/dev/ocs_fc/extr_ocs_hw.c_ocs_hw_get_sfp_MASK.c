#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  payload; void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sli4_res_common_read_transceiver_data_t ;
struct TYPE_12__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_sfp_cb_t ;
typedef  TYPE_1__ ocs_hw_sfp_cb_arg_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_MIN_DMA_ALIGNMENT ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ocs_hw_cb_sfp ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC8(ocs_hw_t *hw, uint16_t page, ocs_hw_sfp_cb_t cb, void *arg)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
	ocs_hw_sfp_cb_arg_t *cb_arg;
	uint8_t *mbxdata;

	/* mbxdata holds the header of the command */
	mbxdata = FUNC6(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC4(hw->os, "failed to malloc mbox\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* cb_arg holds the data that will be passed to the callback on completion */
	cb_arg = FUNC6(hw->os, sizeof(ocs_hw_sfp_cb_arg_t), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC4(hw->os, "failed to malloc cb_arg\n");
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = arg;

	/* payload holds the non-embedded portion */
	if (FUNC0(hw->os, &cb_arg->payload, sizeof(sli4_res_common_read_transceiver_data_t),
			  OCS_MIN_DMA_ALIGNMENT)) {
		FUNC4(hw->os, "Failed to allocate DMA buffer\n");
		FUNC2(hw->os, cb_arg, sizeof(ocs_hw_sfp_cb_arg_t));
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* Send the HW command */
	if (FUNC7(&hw->sli, mbxdata, SLI4_BMBX_SIZE, page,
	    &cb_arg->payload)) {
		rc = FUNC3(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_cb_sfp, cb_arg);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC5(hw->os, "READ_TRANSCEIVER_DATA failed with status %d\n",
				rc);
		FUNC1(hw->os, &cb_arg->payload);
		FUNC2(hw->os, cb_arg, sizeof(ocs_hw_sfp_cb_arg_t));
		FUNC2(hw->os, mbxdata, SLI4_BMBX_SIZE);
	}

	return rc;
}