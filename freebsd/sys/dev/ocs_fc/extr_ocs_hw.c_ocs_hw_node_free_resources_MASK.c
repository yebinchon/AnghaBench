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
struct TYPE_5__ {void* indicator; void* free_group; void* index; void* node_group; int /*<<< orphan*/  fc_id; int /*<<< orphan*/  attached; scalar_t__ sport; } ;
typedef  TYPE_1__ ocs_remote_node_t ;
struct TYPE_6__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 void* UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

ocs_hw_rtn_e
FUNC2(ocs_hw_t *hw, ocs_remote_node_t *rnode)
{
	ocs_hw_rtn_e	rc = OCS_HW_RTN_SUCCESS;

	if (!hw || !rnode) {
		FUNC0(NULL, "bad parameter(s) hw=%p rnode=%p\n",
			    hw, rnode);
		return OCS_HW_RTN_ERROR;
	}

	if (rnode->sport) {
		if (!rnode->attached) {
			if (rnode->indicator != UINT32_MAX) {
				if (FUNC1(&hw->sli, SLI_RSRC_FCOE_RPI, rnode->indicator)) {
					FUNC0(hw->os, "FCOE_RPI free failure RPI %d addr=%#x\n",
						    rnode->indicator, rnode->fc_id);
					rc = OCS_HW_RTN_ERROR;
				} else {
					rnode->node_group = FALSE;
					rnode->indicator = UINT32_MAX;
					rnode->index = UINT32_MAX;
					rnode->free_group = FALSE;
				}
			}
		} else {
			FUNC0(hw->os, "Error: rnode is still attached\n");
			rc = OCS_HW_RTN_ERROR;
		}
	}

	return rc;
}