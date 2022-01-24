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
struct TYPE_11__ {void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_1__ uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  TYPE_1__ ocs_hw_get_nvparms_cb_arg_t ;
typedef  int /*<<< orphan*/  ocs_get_nvparms_cb_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ocs_hw_get_nvparms_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

int32_t
FUNC6(ocs_hw_t *hw, ocs_get_nvparms_cb_t cb, void* ul_arg)
{
	uint8_t *mbxdata;
	ocs_hw_get_nvparms_cb_arg_t *cb_arg;
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

	/* mbxdata holds the header of the command */
	mbxdata = FUNC4(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC2(hw->os, "failed to malloc mbox\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* cb_arg holds the data that will be passed to the callback on completion */
	cb_arg = FUNC4(hw->os, sizeof(ocs_hw_get_nvparms_cb_arg_t), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC2(hw->os, "failed to malloc cb_arg\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = ul_arg;

	if (FUNC5(&hw->sli, mbxdata, SLI4_BMBX_SIZE)) {
		rc = FUNC1(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_get_nvparms_cb, cb_arg);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC3(hw->os, "READ_NVPARMS failed\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC0(hw->os, cb_arg, sizeof(ocs_hw_get_nvparms_cb_arg_t));
	}

	return rc;
}