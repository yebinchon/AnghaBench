#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_16__ {size_t index; TYPE_1__* sport; int /*<<< orphan*/  indicator; int /*<<< orphan*/  fc_id; scalar_t__ node_group; scalar_t__ attached; } ;
typedef  TYPE_4__ ocs_remote_node_t ;
struct TYPE_14__ {scalar_t__ auto_xfer_rdy_t10_enable; } ;
struct TYPE_17__ {int /*<<< orphan*/  os; TYPE_3__* rpi_ref; TYPE_2__ config; scalar_t__ auto_xfer_rdy_enabled; int /*<<< orphan*/  sli; } ;
typedef  TYPE_5__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
struct TYPE_18__ {int /*<<< orphan*/  virt; } ;
typedef  TYPE_6__ ocs_dma_t ;
struct TYPE_15__ {int /*<<< orphan*/  rpi_count; int /*<<< orphan*/  rpi_attached; } ;
struct TYPE_13__ {int /*<<< orphan*/  indicator; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 scalar_t__ OCS_HW_RTN_SUCCESS_SYNC ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 scalar_t__ TRUE ; 
 size_t UINT32_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_hw_cb_node_attach ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC13(ocs_hw_t *hw, ocs_remote_node_t *rnode, ocs_dma_t *sparms)
{
	ocs_hw_rtn_e	rc = OCS_HW_RTN_ERROR;
	uint8_t		*buf = NULL;
	uint32_t	count = 0;

	if (!hw || !rnode || !sparms) {
		FUNC7(NULL, "bad parameter(s) hw=%p rnode=%p sparms=%p\n",
			    hw, rnode, sparms);
		return OCS_HW_RTN_ERROR;
	}

	/*
	 * Check if the chip is in an error state (UE'd) before proceeding.
	 */
	if (FUNC11(&hw->sli) > 0) {
		FUNC6(hw->os, "Chip is in an error state - reset needed\n");
		return OCS_HW_RTN_ERROR;
	}

	buf = FUNC9(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
	if (!buf) {
		FUNC7(hw->os, "no buffer for command\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	/*
	 * If the attach count is non-zero, this RPI has already been registered.
	 * Otherwise, register the RPI
	 */
	if (rnode->index == UINT32_MAX) {
		FUNC7(NULL, "bad parameter rnode->index invalid\n");
		FUNC4(hw->os, buf, SLI4_BMBX_SIZE);
		return OCS_HW_RTN_ERROR;
	}
	count = FUNC0(&hw->rpi_ref[rnode->index].rpi_count, 1);
	if (count) {
		/*
		 * Can't attach multiple FC_ID's to a node unless High Login
		 * Mode is enabled
		 */
		if (FUNC12(&hw->sli) == FALSE) {
			FUNC8(hw->os, "attach to already attached node HLM=%d count=%d\n",
					FUNC12(&hw->sli), count);
			rc = OCS_HW_RTN_SUCCESS;
		} else {
			rnode->node_group = TRUE;
			rnode->attached = FUNC1(&hw->rpi_ref[rnode->index].rpi_attached);
			rc = rnode->attached  ? OCS_HW_RTN_SUCCESS_SYNC : OCS_HW_RTN_SUCCESS;
		}
	} else {
		rnode->node_group = FALSE;

		FUNC3("", "reg rpi", 0, NULL, sparms->virt);
		if (FUNC10(&hw->sli, buf, SLI4_BMBX_SIZE, rnode->fc_id,
					rnode->indicator, rnode->sport->indicator,
					sparms, 0, (hw->auto_xfer_rdy_enabled && hw->config.auto_xfer_rdy_t10_enable))) {
			rc = FUNC5(hw, buf, OCS_CMD_NOWAIT,
					ocs_hw_cb_node_attach, rnode);
		}
	}

	if (count || rc) {
		if (rc < OCS_HW_RTN_SUCCESS) {
			FUNC2(&hw->rpi_ref[rnode->index].rpi_count, 1);
			FUNC7(hw->os, "%s error\n", count ? "HLM" : "REG_RPI");
		}
		FUNC4(hw->os, buf, SLI4_BMBX_SIZE);
	}

	return rc;
}