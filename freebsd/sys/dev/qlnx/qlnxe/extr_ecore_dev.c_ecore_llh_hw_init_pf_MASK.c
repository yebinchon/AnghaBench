#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_mac_addr; } ;
struct ecore_hwfn {TYPE_2__ hw_info; int /*<<< orphan*/  rel_pf_id; struct ecore_dev* p_dev; } ;
struct ecore_dev {int /*<<< orphan*/  mf_bits; TYPE_1__* p_llh_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {scalar_t__ num_ppfid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*) ; 
 scalar_t__ FUNC1 (struct ecore_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  ECORE_MF_LLH_MAC_CLSS ; 
 int ECORE_SUCCESS ; 
 scalar_t__ NIG_REG_LLH_PPFID2PFID_TBL_0 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ecore_dev*,scalar_t__,scalar_t__*) ; 
 int FUNC5 (struct ecore_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC8(struct ecore_hwfn *p_hwfn,
						 struct ecore_ptt *p_ptt,
						 bool avoid_eng_affin)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u8 ppfid, abs_ppfid;
	enum _ecore_status_t rc;

	for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++) {
		u32 addr;

		rc = FUNC4(p_dev, ppfid, &abs_ppfid);
		if (rc != ECORE_SUCCESS)
			return rc;

		addr = NIG_REG_LLH_PPFID2PFID_TBL_0 + abs_ppfid * 0x4;
		FUNC7(p_hwfn, p_ptt, addr, p_hwfn->rel_pf_id);
	}

	if (FUNC3(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits) &&
	    !FUNC2(p_hwfn)) {
		rc = FUNC5(p_dev, 0,
					      p_hwfn->hw_info.hw_mac_addr);
		if (rc != ECORE_SUCCESS)
			FUNC0(p_dev, false,
				  "Failed to add an LLH filter with the primary MAC\n");
	}

	if (FUNC1(p_dev)) {
		rc = FUNC6(p_hwfn, p_ptt, avoid_eng_affin);
		if (rc != ECORE_SUCCESS)
			return rc;
	}

	return ECORE_SUCCESS;
}