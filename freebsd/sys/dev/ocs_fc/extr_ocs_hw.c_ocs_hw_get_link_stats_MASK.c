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
struct TYPE_17__ {void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_1__ uint8_t ;
struct TYPE_18__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  ocs_hw_link_stat_cb_t ;
typedef  TYPE_1__ ocs_hw_link_stat_cb_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ocs_hw_cb_link_stat ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int,TYPE_1__,TYPE_1__,TYPE_1__) ; 

ocs_hw_rtn_e
FUNC6(ocs_hw_t *hw,
			uint8_t req_ext_counters,
			uint8_t clear_overflow_flags,
			uint8_t clear_all_counters,
			ocs_hw_link_stat_cb_t cb,
			void *arg)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
	ocs_hw_link_stat_cb_arg_t *cb_arg;
	uint8_t *mbxdata;

	mbxdata = FUNC4(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC2(hw->os, "failed to malloc mbox");
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg = FUNC4(hw->os, sizeof(ocs_hw_link_stat_cb_arg_t), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC2(hw->os, "failed to malloc cb_arg");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = arg;

	if (FUNC5(&hw->sli, mbxdata, SLI4_BMBX_SIZE,
				    req_ext_counters,
				    clear_overflow_flags,
				    clear_all_counters)) {
		rc = FUNC1(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_cb_link_stat, cb_arg);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC3(hw->os, "READ_LINK_STATS failed\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC0(hw->os, cb_arg, sizeof(ocs_hw_link_stat_cb_arg_t));
	}

	return rc;
}