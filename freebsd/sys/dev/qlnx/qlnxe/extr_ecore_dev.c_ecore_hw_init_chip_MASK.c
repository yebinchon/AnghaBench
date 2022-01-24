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
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int num_ports_in_engine; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ecore_dev*) ; 
 scalar_t__ CNIG_REG_NW_PORT_MODE_BB ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  ECORE_E5_MISSING_CODE ; 
 scalar_t__ FUNC2 (struct ecore_dev*) ; 
 scalar_t__ FUNC3 (struct ecore_dev*) ; 
 scalar_t__ FUNC4 (struct ecore_dev*) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ MISCS_REG_RESET_PL_HV ; 
 scalar_t__ MISCS_REG_RESET_PL_HV_2_K2_E5 ; 
 scalar_t__ MISC_REG_BLOCK_256B_EN ; 
 scalar_t__ MISC_REG_PORT_MODE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  PSWRQ2_REG_CFG_DONE ; 
 scalar_t__ PSWRQ2_REG_RBC_DONE ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC8(struct ecore_hwfn *p_hwfn,
					       struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u32 pl_hv = 1;
	int i;

	if (FUNC0(p_dev)) {
		if (FUNC2(p_dev))
			pl_hv |= 0x600;
		else if (FUNC4(p_dev))
			ECORE_E5_MISSING_CODE;
	}

	FUNC7(p_hwfn, p_ptt, MISCS_REG_RESET_PL_HV + 4, pl_hv);

	if (FUNC0(p_dev) &&
	    (FUNC2(p_dev) || FUNC4(p_dev)))
		FUNC7(p_hwfn, p_ptt, MISCS_REG_RESET_PL_HV_2_K2_E5,
			 0x3ffffff);

	/* initialize port mode to 4x10G_E (10G with 4x10 SERDES) */
	/* CNIG_REG_NW_PORT_MODE is same for A0 and B0 */
	if (!FUNC0(p_dev) || FUNC3(p_dev))
		FUNC7(p_hwfn, p_ptt, CNIG_REG_NW_PORT_MODE_BB, 4);

	if (FUNC0(p_dev)) {
		if (FUNC2(p_dev)) {
			/* 2 for 4-port, 1 for 2-port, 0 for 1-port */
			FUNC7(p_hwfn, p_ptt, MISC_REG_PORT_MODE,
				 (p_dev->num_ports_in_engine >> 1));

			FUNC7(p_hwfn, p_ptt, MISC_REG_BLOCK_256B_EN,
				 p_dev->num_ports_in_engine == 4 ? 0 : 3);
		} else if (FUNC4(p_dev)) {
			ECORE_E5_MISSING_CODE;
		}

		/* Poll on RBC */
		FUNC7(p_hwfn, p_ptt, PSWRQ2_REG_RBC_DONE, 1);
		for (i = 0; i < 100; i++) {
			FUNC5(50);
			if (FUNC6(p_hwfn, p_ptt, PSWRQ2_REG_CFG_DONE) == 1)
				break;
		}
		if (i == 100)
			FUNC1(p_hwfn, true,
				  "RBC done failed to complete in PSWRQ2\n");
	}

	return ECORE_SUCCESS;
}