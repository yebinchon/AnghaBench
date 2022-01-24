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
struct TYPE_2__ {int type; void* dest_port; void* source_port_or_eth_type; } ;
union ecore_llh_filter {TYPE_1__ protocol; } ;
typedef  int u8 ;
typedef  int u32 ;
typedef  void* u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int /*<<< orphan*/  mf_bits; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  filter ;
typedef  enum ecore_llh_prot_filter_type_t { ____Placeholder_ecore_llh_prot_filter_type_t } ecore_llh_prot_filter_type_t ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*,int /*<<< orphan*/ ,char*,int*,int,int,int,int) ; 
 int ECORE_AGAIN ; 
 struct ecore_hwfn* FUNC2 (struct ecore_dev*) ; 
 int /*<<< orphan*/  ECORE_LLH_FILTER_TYPE_PROTOCOL ; 
 int /*<<< orphan*/  ECORE_MF_LLH_PROTO_CLSS ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (union ecore_llh_filter*,int) ; 
 struct ecore_ptt* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ecore_dev*,int,int*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int,int,int,int,int) ; 
 int FUNC7 (struct ecore_dev*,int,void*,void*,int*,int) ; 
 int FUNC8 (struct ecore_dev*,int,void*,void*,int*,int*) ; 
 int FUNC9 (struct ecore_dev*,int,int /*<<< orphan*/ ,union ecore_llh_filter*,int*,int*) ; 
 struct ecore_ptt* FUNC10 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t
FUNC12(struct ecore_dev *p_dev, u8 ppfid,
			      enum ecore_llh_prot_filter_type_t type,
			      u16 source_port_or_eth_type, u16 dest_port)
{
	struct ecore_hwfn *p_hwfn = FUNC2(p_dev);
	struct ecore_ptt *p_ptt = FUNC10(p_hwfn);
	u8 filter_idx, abs_ppfid, str[32], type_bitmap;
	union ecore_llh_filter filter;
	u32 high, low, ref_cnt;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (p_ptt == OSAL_NULL)
		return ECORE_AGAIN;

	if (!FUNC4(ECORE_MF_LLH_PROTO_CLSS, &p_dev->mf_bits))
		goto out;

	rc = FUNC7(p_dev, type,
						 source_port_or_eth_type,
						 dest_port, str, sizeof(str));
	if (rc != ECORE_SUCCESS)
		goto err;

	FUNC3(&filter, sizeof(filter));
	filter.protocol.type = type;
	filter.protocol.source_port_or_eth_type = source_port_or_eth_type;
	filter.protocol.dest_port = dest_port;
	rc = FUNC9(p_dev, ppfid,
					 ECORE_LLH_FILTER_TYPE_PROTOCOL,
					 &filter, &filter_idx, &ref_cnt);
	if (rc != ECORE_SUCCESS)
		goto err;

	rc = FUNC5(p_dev, ppfid, &abs_ppfid);
	if (rc != ECORE_SUCCESS)
		goto err;

	/* Configure the LLH only in case of a new the filter */
	if (ref_cnt == 1) {
		rc = FUNC8(p_dev, type,
						       source_port_or_eth_type,
						       dest_port, &high, &low);
		if (rc != ECORE_SUCCESS)
			goto err;

		type_bitmap = 0x1 << type;
		rc = FUNC6(p_hwfn, p_ptt, abs_ppfid, filter_idx,
					  type_bitmap, high, low);
		if (rc != ECORE_SUCCESS)
			goto err;
	}

	FUNC1(p_dev, ECORE_MSG_SP,
		   "LLH: Added protocol filter [%s] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\n",
		   str, ppfid, abs_ppfid, filter_idx, ref_cnt);

	goto out;

err:
	FUNC0(p_hwfn, false,
		  "LLH: Failed to add protocol filter [%s] to ppfid %hhd\n",
		  str, ppfid);
out:
	FUNC11(p_hwfn, p_ptt);

	return rc;
}