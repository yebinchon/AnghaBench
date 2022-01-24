#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_FCFI ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_hw_cb_node_free_all ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC7(ocs_hw_t *hw)
{
	uint8_t	*buf = NULL;
	ocs_hw_rtn_e	rc = OCS_HW_RTN_ERROR;

	if (!hw) {
		FUNC3(NULL, "bad parameter hw=%p\n", hw);
		return OCS_HW_RTN_ERROR;
	}

	/*
	 * Check if the chip is in an error state (UE'd) before proceeding.
	 */
	if (FUNC6(&hw->sli) > 0) {
		FUNC2(hw->os, "Chip is in an error state - reset needed\n");
		return OCS_HW_RTN_ERROR;
	}

	buf = FUNC4(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
	if (!buf) {
		FUNC3(hw->os, "no buffer for command\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	if (FUNC5(&hw->sli, buf, SLI4_BMBX_SIZE, 0xffff,
				SLI_RSRC_FCOE_FCFI, UINT32_MAX)) {
		rc = FUNC1(hw, buf, OCS_CMD_NOWAIT, ocs_hw_cb_node_free_all,
				NULL);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC3(hw->os, "UNREG_RPI failed\n");
		FUNC0(hw->os, buf, SLI4_BMBX_SIZE);
		rc = OCS_HW_RTN_ERROR;
	}

	return rc;
}