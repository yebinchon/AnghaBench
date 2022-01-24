#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_9__ {size_t index; int fc_id; int /*<<< orphan*/  indicator; int /*<<< orphan*/  free_group; scalar_t__ node_group; int /*<<< orphan*/  attached; scalar_t__ sport; } ;
typedef  TYPE_2__ ocs_remote_node_t ;
struct TYPE_10__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; TYPE_1__* rpi_ref; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
struct TYPE_8__ {int /*<<< orphan*/  rpi_count; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 scalar_t__ OCS_HW_RTN_SUCCESS_SYNC ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 int /*<<< orphan*/  TRUE ; 
 size_t UINT32_MAX ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_hw_cb_node_free ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC10(ocs_hw_t *hw, ocs_remote_node_t *rnode)
{
	uint8_t	*buf = NULL;
	ocs_hw_rtn_e	rc = OCS_HW_RTN_SUCCESS_SYNC;
	uint32_t	index = UINT32_MAX;

	if (!hw || !rnode) {
		FUNC4(NULL, "bad parameter(s) hw=%p rnode=%p\n",
			    hw, rnode);
		return OCS_HW_RTN_ERROR;
	}

	/*
	 * Check if the chip is in an error state (UE'd) before proceeding.
	 */
	if (FUNC8(&hw->sli) > 0) {
		FUNC3(hw->os, "Chip is in an error state - reset needed\n");
		return OCS_HW_RTN_ERROR;
	}

	index = rnode->index;

	if (rnode->sport) {
		uint32_t	count = 0;
		uint32_t	fc_id;

		if (!rnode->attached) {
			return OCS_HW_RTN_SUCCESS_SYNC;
		}

		buf = FUNC6(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
		if (!buf) {
			FUNC4(hw->os, "no buffer for command\n");
			return OCS_HW_RTN_NO_MEMORY;
		}

		count = FUNC0(&hw->rpi_ref[index].rpi_count, 1);

		if (count <= 1) {
			/* There are no other references to this RPI
			 * so unregister it and free the resource. */
			fc_id = UINT32_MAX;
			rnode->node_group = FALSE;
			rnode->free_group = TRUE;
		} else {
			if (FUNC9(&hw->sli) == FALSE) {
				FUNC5(hw->os, "Invalid count with HLM disabled, count=%d\n",
						count);
			}
			fc_id = rnode->fc_id & 0x00ffffff;
		}

		rc = OCS_HW_RTN_ERROR;

		if (FUNC7(&hw->sli, buf, SLI4_BMBX_SIZE, rnode->indicator,
					SLI_RSRC_FCOE_RPI, fc_id)) {
			rc = FUNC2(hw, buf, OCS_CMD_NOWAIT, ocs_hw_cb_node_free, rnode);
		}

		if (rc != OCS_HW_RTN_SUCCESS) {
			FUNC4(hw->os, "UNREG_RPI failed\n");
			FUNC1(hw->os, buf, SLI4_BMBX_SIZE);
			rc = OCS_HW_RTN_ERROR;
		}
	}

	return rc;
}