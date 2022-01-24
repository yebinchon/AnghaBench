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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
union ecore_llh_filter {TYPE_1__ mac; } ;
typedef  int u8 ;
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int /*<<< orphan*/  mf_bits; } ;
typedef  int /*<<< orphan*/  filter ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*,int /*<<< orphan*/ ,char*,int,int,int,int,int,int,int,int,int,int) ; 
 int ECORE_AGAIN ; 
 struct ecore_hwfn* FUNC2 (struct ecore_dev*) ; 
 int /*<<< orphan*/  ECORE_LLH_FILTER_TYPE_MAC ; 
 int /*<<< orphan*/  ECORE_MF_LLH_MAC_CLSS ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ecore_llh_filter*,int) ; 
 struct ecore_ptt* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ecore_dev*,int,int*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct ecore_dev*,int,int /*<<< orphan*/ ,union ecore_llh_filter*,int*,int*) ; 
 struct ecore_ptt* FUNC9 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC11(struct ecore_dev *p_dev, u8 ppfid,
					      u8 mac_addr[ETH_ALEN])
{
	struct ecore_hwfn *p_hwfn = FUNC2(p_dev);
	struct ecore_ptt *p_ptt = FUNC9(p_hwfn);
	union ecore_llh_filter filter;
	u8 filter_idx, abs_ppfid;
	u32 high, low, ref_cnt;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (p_ptt == OSAL_NULL)
		return ECORE_AGAIN;

	if (!FUNC5(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits))
		goto out;

	FUNC4(&filter, sizeof(filter));
	FUNC3(filter.mac.addr, mac_addr, ETH_ALEN);
	rc = FUNC8(p_dev, ppfid,
					 ECORE_LLH_FILTER_TYPE_MAC,
					 &filter, &filter_idx, &ref_cnt);
	if (rc != ECORE_SUCCESS)
		goto err;

	rc = FUNC6(p_dev, ppfid, &abs_ppfid);
	if (rc != ECORE_SUCCESS)
		goto err;

	/* Configure the LLH only in case of a new the filter */
	if (ref_cnt == 1) {
		high = mac_addr[1] | (mac_addr[0] << 8);
		low = mac_addr[5] | (mac_addr[4] << 8) | (mac_addr[3] << 16) |
		      (mac_addr[2] << 24);
		rc = FUNC7(p_hwfn, p_ptt, abs_ppfid, filter_idx,
					  0, high, low);
		if (rc != ECORE_SUCCESS)
			goto err;
	}

	FUNC1(p_dev, ECORE_MSG_SP,
		   "LLH: Added MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\n",
		   mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3],
		   mac_addr[4], mac_addr[5], ppfid, abs_ppfid, filter_idx,
		   ref_cnt);

	goto out;

err:
	FUNC0(p_dev, false,
		  "LLH: Failed to add MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] to ppfid %hhd\n",
		  mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3],
		  mac_addr[4], mac_addr[5], ppfid);
out:
	FUNC10(p_hwfn, p_ptt);

	return rc;
}