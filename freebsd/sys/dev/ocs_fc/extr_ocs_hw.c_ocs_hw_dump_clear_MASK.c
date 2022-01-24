#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {struct TYPE_22__* mbox_cmd; void* arg; int /*<<< orphan*/  cb; } ;
typedef  TYPE_2__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_21__ {int /*<<< orphan*/  virt; } ;
struct TYPE_24__ {TYPE_1__ bmbx; } ;
struct TYPE_23__ {scalar_t__ state; int /*<<< orphan*/  os; TYPE_5__ sli; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  ocs_hw_dump_clear_cb_t ;
typedef  TYPE_2__ ocs_hw_dump_clear_cb_arg_t ;

/* Variables and functions */
 scalar_t__ OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_CMD_POLL ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 scalar_t__ OCS_HW_STATE_ACTIVE ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI4_BMBX_SIZE ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*,scalar_t__,scalar_t__ (*) (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_2__*,int,char*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 

ocs_hw_rtn_e
FUNC9(ocs_hw_t *hw, ocs_hw_dump_clear_cb_t cb, void *arg)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
	uint8_t *mbxdata;
	ocs_hw_dump_clear_cb_arg_t *cb_arg;
	uint32_t opts = (hw->state == OCS_HW_STATE_ACTIVE ? OCS_CMD_NOWAIT : OCS_CMD_POLL);

	if (SLI4_IF_TYPE_LANCER_FC_ETH != FUNC8(&hw->sli)) {
		FUNC4(hw->os, "Function only supported for I/F type 2\n");
		return OCS_HW_RTN_ERROR;
	}

	mbxdata = FUNC5(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mbxdata == NULL) {
		FUNC3(hw->os, "failed to malloc mbox\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg = FUNC5(hw->os, sizeof(ocs_hw_dump_clear_cb_arg_t), OCS_M_NOWAIT);
	if (cb_arg == NULL) {
		FUNC3(hw->os, "failed to malloc cb_arg\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_NO_MEMORY;
	}

	cb_arg->cb = cb;
	cb_arg->arg = arg;
	cb_arg->mbox_cmd = mbxdata;

	if (FUNC7(&hw->sli, mbxdata, SLI4_BMBX_SIZE,
			"/dbg/dump.bin")) {
		rc = FUNC2(hw, mbxdata, opts, ocs_hw_cb_dump_clear, cb_arg);
		if (rc == 0 && opts == OCS_CMD_POLL) {
			FUNC6(mbxdata, hw->sli.bmbx.virt, SLI4_BMBX_SIZE);
			rc = FUNC1(hw, 0, mbxdata, cb_arg);
		}
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC4(hw->os, "COMMON_DELETE_OBJECT failed\n");
		FUNC0(hw->os, mbxdata, SLI4_BMBX_SIZE);
		FUNC0(hw->os, cb_arg, sizeof(ocs_hw_dump_clear_cb_arg_t));
	}

	return rc;
}