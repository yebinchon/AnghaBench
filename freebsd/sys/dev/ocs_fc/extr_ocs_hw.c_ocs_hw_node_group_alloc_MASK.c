#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  indicator; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ ocs_remote_node_group_t ;
struct TYPE_7__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC2(ocs_hw_t *hw, ocs_remote_node_group_t *ngroup)
{

	if (!hw || !ngroup) {
		FUNC0(NULL, "bad parameter hw=%p ngroup=%p\n",
				hw, ngroup);
		return OCS_HW_RTN_ERROR;
	}

	if (FUNC1(&hw->sli, SLI_RSRC_FCOE_RPI, &ngroup->indicator,
				&ngroup->index)) {
		FUNC0(hw->os, "FCOE_RPI allocation failure addr=%#x\n",
				ngroup->indicator);
		return OCS_HW_RTN_ERROR;
	}

	return OCS_HW_RTN_SUCCESS;
}