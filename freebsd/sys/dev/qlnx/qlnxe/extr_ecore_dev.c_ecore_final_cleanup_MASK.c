#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  rel_pf_id; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 int FINAL_CLEANUP_POLL_CNT ; 
 int /*<<< orphan*/  FINAL_CLEANUP_POLL_TIME ; 
 int GTT_BAR0_MAP_REG_USDM_RAM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ecore_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,int,int /*<<< orphan*/ ) ; 
 int SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT ; 
 int SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT ; 
 int SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT ; 
 int SDM_COMP_TYPE_AGG_INT ; 
 int SDM_OP_GEN_COMP_TYPE_SHIFT ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSDM_REG_OPERATION_GEN ; 
 int X_FINAL_CLEANUP_AGG_INT ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

enum _ecore_status_t FUNC10(struct ecore_hwfn *p_hwfn,
					 struct ecore_ptt *p_ptt,
					 u16 id, bool is_vf)
{
	u32 command = 0, addr, count = FINAL_CLEANUP_POLL_CNT;
	enum _ecore_status_t rc = ECORE_TIMEOUT;

#ifndef ASIC_ONLY
	if (FUNC1(p_hwfn->p_dev) ||
	    FUNC0(p_hwfn->p_dev)) {
		FUNC2(p_hwfn, "Skipping final cleanup for non-ASIC\n");
		return ECORE_SUCCESS;
	}
#endif

	addr = GTT_BAR0_MAP_REG_USDM_RAM +
	       FUNC8(p_hwfn->rel_pf_id);

	if (is_vf)
		id += 0x10;

	command |= X_FINAL_CLEANUP_AGG_INT <<
		   SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT;
	command |= 1 << SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT;
	command |= id << SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT;
	command |= SDM_COMP_TYPE_AGG_INT << SDM_OP_GEN_COMP_TYPE_SHIFT;

	/* Make sure notification is not set before initiating final cleanup */
	if (FUNC6(p_hwfn, addr)) {
		FUNC3(p_hwfn, false,
			  "Unexpected; Found final cleanup notification before initiating final cleanup\n");
		FUNC7(p_hwfn, addr, 0);
	}

	FUNC4(p_hwfn, ECORE_MSG_IOV,
		   "Sending final cleanup for PFVF[%d] [Command %08x]\n",
		   id, command);

	FUNC9(p_hwfn, p_ptt, XSDM_REG_OPERATION_GEN, command);

	/* Poll until completion */
	while (!FUNC6(p_hwfn, addr) && count--)
		FUNC5(FINAL_CLEANUP_POLL_TIME);

	if (FUNC6(p_hwfn, addr))
		rc = ECORE_SUCCESS;
	else
		FUNC3(p_hwfn, true, "Failed to receive FW final cleanup notification\n");

	/* Cleanup afterwards */
	FUNC7(p_hwfn, addr, 0);

	return rc;
}