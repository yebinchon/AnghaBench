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
typedef  scalar_t__ u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int /*<<< orphan*/  mf_bits; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ecore_dev*) ; 
 struct ecore_hwfn* FUNC1 (struct ecore_dev*) ; 
 int /*<<< orphan*/  ECORE_MF_LLH_MAC_CLSS ; 
 int /*<<< orphan*/  ECORE_MF_LLH_PROTO_CLSS ; 
 int ECORE_SUCCESS ; 
 scalar_t__ NIG_REG_LLH_FUNC_FILTER_EN_SIZE ; 
 struct ecore_ptt* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ecore_dev*,scalar_t__,scalar_t__*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct ecore_dev*,scalar_t__) ; 
 struct ecore_ptt* FUNC7 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*) ; 

void FUNC9(struct ecore_dev *p_dev, u8 ppfid)
{
	struct ecore_hwfn *p_hwfn = FUNC1(p_dev);
	struct ecore_ptt *p_ptt = FUNC7(p_hwfn);
	u8 filter_idx, abs_ppfid;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (p_ptt == OSAL_NULL)
		return;

	if (!FUNC2(ECORE_MF_LLH_PROTO_CLSS, &p_dev->mf_bits) &&
	    !FUNC2(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits))
		goto out;

	rc = FUNC3(p_dev, ppfid, &abs_ppfid);
	if (rc != ECORE_SUCCESS)
		goto out;

	rc = FUNC6(p_dev, ppfid);
	if (rc != ECORE_SUCCESS)
		goto out;

	for (filter_idx = 0; filter_idx < NIG_REG_LLH_FUNC_FILTER_EN_SIZE;
	     filter_idx++) {
		if (FUNC0(p_dev))
			rc = FUNC4(p_hwfn, p_ptt,
							abs_ppfid, filter_idx);
		else /* E5 */
			rc = FUNC5(p_hwfn, p_ptt,
							abs_ppfid, filter_idx);
		if (rc != ECORE_SUCCESS)
			goto out;
	}
out:
	FUNC8(p_hwfn, p_ptt);
}