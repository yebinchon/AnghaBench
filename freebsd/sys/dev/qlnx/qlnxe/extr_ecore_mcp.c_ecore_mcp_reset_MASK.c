#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ drv_mb_seq; int /*<<< orphan*/  cmd_lock; scalar_t__ b_block_cmd; } ;

/* Variables and functions */
 scalar_t__ CHIP_MCP_RESP_ITER_US ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRV_MSG_CODE_MCP_RESET ; 
 int ECORE_ABORTED ; 
 int ECORE_AGAIN ; 
 scalar_t__ ECORE_MCP_RESET_RETRIES ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_SUCCESS ; 
 scalar_t__ EMUL_MCP_RESP_ITER_US ; 
 int /*<<< orphan*/  MISCS_REG_GENERIC_POR_0 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  drv_mb_header ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 scalar_t__ FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC10(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt)
{
	u32 org_mcp_reset_seq, seq, delay = CHIP_MCP_RESP_ITER_US, cnt = 0;
	enum _ecore_status_t rc = ECORE_SUCCESS;

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev))
		delay = EMUL_MCP_RESP_ITER_US;
#endif

	if (p_hwfn->mcp_info->b_block_cmd) {
		FUNC2(p_hwfn, false,
			  "The MFW is not responsive. Avoid sending MCP_RESET mailbox command.\n");
		return ECORE_ABORTED;
	}

	/* Ensure that only a single thread is accessing the mailbox */
	FUNC5(&p_hwfn->mcp_info->cmd_lock);

	org_mcp_reset_seq = FUNC9(p_hwfn, p_ptt, MISCS_REG_GENERIC_POR_0);

	/* Set drv command along with the updated sequence */
	FUNC8(p_hwfn, p_ptt);
	seq = ++p_hwfn->mcp_info->drv_mb_seq;
	FUNC4(p_hwfn, p_ptt, drv_mb_header, (DRV_MSG_CODE_MCP_RESET | seq));

	do {
		/* Wait for MFW response */
		FUNC7(delay);
		/* Give the FW up to 500 second (50*1000*10usec) */
	} while ((org_mcp_reset_seq == FUNC9(p_hwfn, p_ptt,
						MISCS_REG_GENERIC_POR_0)) &&
		 (cnt++ < ECORE_MCP_RESET_RETRIES));

	if (org_mcp_reset_seq !=
	    FUNC9(p_hwfn, p_ptt, MISCS_REG_GENERIC_POR_0)) {
		FUNC3(p_hwfn, ECORE_MSG_SP,
			   "MCP was reset after %d usec\n", cnt * delay);
	} else {
		FUNC1(p_hwfn, "Failed to reset MCP\n");
		rc = ECORE_AGAIN;
	}

	FUNC6(&p_hwfn->mcp_info->cmd_lock);

	return rc;
}