#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
struct TYPE_10__ {scalar_t__ virt; } ;
typedef  TYPE_2__ ocs_dma_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 int OCS_HW_DMTF_CLP_CMD_MAX ; 
 scalar_t__ OCS_HW_DMTF_CLP_RSP_MAX ; 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_NO_MEMORY ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC10(ocs_hw_t *hw, uint32_t license)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
	char cmd[OCS_HW_DMTF_CLP_CMD_MAX];
	ocs_dma_t dma_cmd;
	ocs_dma_t dma_resp;

	/* only for lancer right now */
	if (SLI4_IF_TYPE_LANCER_FC_ETH != FUNC9(&hw->sli)) {
		FUNC4(hw->os, "Function only supported for I/F type 2\n");
		return OCS_HW_RTN_ERROR;
	}

	FUNC7(cmd, OCS_HW_DMTF_CLP_CMD_MAX, "set / OEMELX_Ethernet_License=%X", license);
	/* allocate DMA for command  */
	if (FUNC0(hw->os, &dma_cmd, FUNC8(cmd)+1, 4096)) {
		FUNC3(hw->os, "malloc failed\n");
		return OCS_HW_RTN_NO_MEMORY;
	}
	FUNC6(dma_cmd.virt, 0, FUNC8(cmd)+1);
	FUNC5(dma_cmd.virt, cmd, FUNC8(cmd));

	/* allocate DMA for response */
	if (FUNC0(hw->os, &dma_resp, OCS_HW_DMTF_CLP_RSP_MAX, 4096)) {
		FUNC3(hw->os, "malloc failed\n");
		FUNC1(hw->os, &dma_cmd);
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* send DMTF CLP command mbx and poll */
	if (FUNC2(hw, &dma_cmd, &dma_resp, OCS_CMD_POLL, NULL, NULL)) {
		FUNC3(hw->os, "CLP cmd=\"%s\" failed\n", (char *)dma_cmd.virt);
		rc = OCS_HW_RTN_ERROR;
	}

	FUNC1(hw->os, &dma_cmd);
	FUNC1(hw->os, &dma_resp);
	return rc;
}