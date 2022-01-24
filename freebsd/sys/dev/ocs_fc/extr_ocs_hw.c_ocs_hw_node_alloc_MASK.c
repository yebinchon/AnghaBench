#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_sli_port_t ;
struct TYPE_5__ {scalar_t__ indicator; int /*<<< orphan*/ * sport; int /*<<< orphan*/  fc_id; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ ocs_remote_node_t ;
struct TYPE_6__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC4(ocs_hw_t *hw, ocs_remote_node_t *rnode, uint32_t fc_addr,
		ocs_sli_port_t *sport)
{
	/* Check for invalid indicator */
	if (UINT32_MAX != rnode->indicator) {
		FUNC1(hw->os, "FCOE_RPI allocation failure addr=%#x rpi=%#x\n",
				fc_addr, rnode->indicator);
		return OCS_HW_RTN_ERROR;
	}

	/*
	 * Check if the chip is in an error state (UE'd) before proceeding.
	 */
	if (FUNC2(&hw->sli) > 0) {
		FUNC0(hw->os, "Chip is in an error state - reset needed\n");
		return OCS_HW_RTN_ERROR;
	}

	/* NULL SLI port indicates an unallocated remote node */
	rnode->sport = NULL;

	if (FUNC3(&hw->sli, SLI_RSRC_FCOE_RPI, &rnode->indicator, &rnode->index)) {
		FUNC1(hw->os, "FCOE_RPI allocation failure addr=%#x\n",
				fc_addr);
		return OCS_HW_RTN_ERROR;
	}

	rnode->fc_id = fc_addr;
	rnode->sport = sport;

	return OCS_HW_RTN_SUCCESS;
}