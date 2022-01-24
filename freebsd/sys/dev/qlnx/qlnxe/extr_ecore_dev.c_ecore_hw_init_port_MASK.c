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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; int /*<<< orphan*/  port_id; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ECORE_E5_MISSING_CODE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*) ; 
 scalar_t__ MISCS_REG_CLK_100G_MODE ; 
 scalar_t__ MISCS_REG_RESET_PL_HV ; 
 scalar_t__ MISC_REG_CLK_100G_MODE ; 
 scalar_t__ MISC_REG_OPTE_MODE ; 
 int /*<<< orphan*/  NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET ; 
 scalar_t__ NIG_REG_LLH_ENG_CLS_ENG_ID_TBL ; 
 scalar_t__ NIG_REG_LLH_ENG_CLS_TCP_4_TUPLE_SEARCH ; 
 scalar_t__ PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE ; 
 int /*<<< orphan*/  PHASE_PORT ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC14(struct ecore_hwfn *p_hwfn,
					       struct ecore_ptt *p_ptt,
					       int hw_mode)
{
	enum _ecore_status_t rc	= ECORE_SUCCESS;

	/* In CMT the gate should be cleared by the 2nd hwfn */
	if (!FUNC6(p_hwfn->p_dev) || !FUNC7(p_hwfn))
		FUNC8(p_hwfn, NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET, 0);

	rc = FUNC10(p_hwfn, p_ptt, PHASE_PORT, p_hwfn->port_id,
			    hw_mode);
	if (rc != ECORE_SUCCESS)
		return rc;

	FUNC13(p_hwfn, p_ptt, PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE, 0);

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev))
		return ECORE_SUCCESS;

	if (FUNC2(p_hwfn->p_dev)) {
		if (FUNC4(p_hwfn->p_dev))
			return ECORE_SUCCESS;
		else if (FUNC5(p_hwfn->p_dev))
			FUNC11(p_hwfn, p_ptt, p_hwfn->port_id);
		else /* E5 */
			ECORE_E5_MISSING_CODE;
	} else if (FUNC1(p_hwfn->p_dev)) {
		if (FUNC6(p_hwfn->p_dev)) {
			/* Activate OPTE in CMT */
			u32 val;

			val = FUNC12(p_hwfn, p_ptt, MISCS_REG_RESET_PL_HV);
			val |= 0x10;
			FUNC13(p_hwfn, p_ptt, MISCS_REG_RESET_PL_HV, val);
			FUNC13(p_hwfn, p_ptt, MISC_REG_CLK_100G_MODE, 1);
			FUNC13(p_hwfn, p_ptt, MISCS_REG_CLK_100G_MODE, 1);
			FUNC13(p_hwfn, p_ptt, MISC_REG_OPTE_MODE, 1);
			FUNC13(p_hwfn, p_ptt,
				 NIG_REG_LLH_ENG_CLS_TCP_4_TUPLE_SEARCH, 1);
			FUNC13(p_hwfn, p_ptt,
				 NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, 0x55555555);
			FUNC13(p_hwfn, p_ptt,
				 NIG_REG_LLH_ENG_CLS_ENG_ID_TBL + 0x4,
				 0x55555555);
		}

		FUNC9(p_hwfn, p_ptt);
	} else {
		FUNC3(p_hwfn->p_dev, "link is not being configured\n");
	}
#endif

	return rc;
}