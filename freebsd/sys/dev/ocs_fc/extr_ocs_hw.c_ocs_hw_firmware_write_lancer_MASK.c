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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  TYPE_1__ ocs_hw_fw_write_cb_arg_t ;
typedef  int /*<<< orphan*/  ocs_hw_fw_cb_t ;
typedef  int /*<<< orphan*/  ocs_dma_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ocs_hw_cb_fw_write ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC7(ocs_hw_t *hw, ocs_dma_t *dma, uint32_t size, uint32_t offset, int last, ocs_hw_fw_cb_t cb, void *arg)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
	uint8_t *mbxdata;
	ocs_hw_fw_write_cb_arg_t *cb_arg;
	int noc=0;	/* No Commit bit - set to 1 for testing */

	if (SLI4_IF_TYPE_LANCER_FC_ETH != FUNC6(&hw->sli)) {
		FUNC3(hw->os, "Function only supported for I/F type 2\n");
		return OCS_HW_RTN_ERROR;
	}

	mbxdata = FUNC4(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC2(hw->os, "failed to malloc mbox\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg = FUNC4(hw->os, sizeof(ocs_hw_fw_write_cb_arg_t), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC2(hw->os, "failed to malloc cb_arg\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = arg;

	if (FUNC5(&hw->sli, mbxdata, SLI4_BMBX_SIZE, noc, last,
			size, offset, "/prg/", dma)) {
		rc = FUNC1(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_cb_fw_write, cb_arg);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC3(hw->os, "COMMON_WRITE_OBJECT failed\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC0(hw->os, cb_arg, sizeof(ocs_hw_fw_write_cb_arg_t));
	}

	return rc;

}