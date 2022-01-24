#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ status; int /*<<< orphan*/  opts; int /*<<< orphan*/ * dma_resp; void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_2__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_20__ {int /*<<< orphan*/  virt; } ;
struct TYPE_23__ {TYPE_1__ bmbx; } ;
struct TYPE_22__ {int /*<<< orphan*/  os; TYPE_5__ sli; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  ocs_hw_dmtf_clp_cb_t ;
typedef  TYPE_2__ ocs_hw_clp_cb_arg_t ;
typedef  int /*<<< orphan*/  ocs_dma_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC8(ocs_hw_t *hw, ocs_dma_t *dma_cmd, ocs_dma_t *dma_resp, uint32_t opts, ocs_hw_dmtf_clp_cb_t cb, void *arg)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
	ocs_hw_clp_cb_arg_t *cb_arg;
	uint8_t *mbxdata;

	/* allocate DMA for mailbox */
	mbxdata = FUNC5(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC3(hw->os, "failed to malloc mbox\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* allocate memory for callback argument */
	cb_arg = FUNC5(hw->os, sizeof(*cb_arg), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC3(hw->os, "failed to malloc cb_arg");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = arg;
	cb_arg->dma_resp = dma_resp;
	cb_arg->opts = opts;

	/* Send the HW command */
	if (FUNC7(&hw->sli, mbxdata, SLI4_BMBX_SIZE,
				      dma_cmd, dma_resp)) {
		rc = FUNC1(hw, mbxdata, opts, ocs_hw_dmtf_clp_cb, cb_arg);

		if (opts == OCS_CMD_POLL && rc == OCS_HW_RTN_SUCCESS) {
			/* if we're polling, copy response and invoke callback to
			 * parse result */
			FUNC6(mbxdata, hw->sli.bmbx.virt, SLI4_BMBX_SIZE);
			FUNC2(hw, 0, mbxdata, cb_arg);

			/* set rc to resulting or "parsed" status */
			rc = cb_arg->status;
		}

		/* if failed, or polling, free memory here */
		if (opts == OCS_CMD_POLL || rc != OCS_HW_RTN_SUCCESS) {
			if (rc != OCS_HW_RTN_SUCCESS) {
				FUNC4(hw->os, "ocs_hw_command failed\n");
			}
			FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
			FUNC0(hw->os, cb_arg, sizeof(*cb_arg));
		}
	} else {
		FUNC4(hw->os, "sli_cmd_dmtf_exec_clp_cmd failed\n");
		rc = OCS_HW_RTN_ERROR;
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC0(hw->os, cb_arg, sizeof(*cb_arg));
	}

	return rc;
}