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
typedef  int u8 ;
typedef  int u32 ;
struct ecore_llh_info {int* ppfid_array; size_t num_ppfid; void** pp_filters; } ;
struct ecore_dev {int ppfid_bitmap; struct ecore_llh_info* p_llh_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_NOMEM ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_NUM_PPFID ; 
 int NIG_REG_LLH_FUNC_FILTER_EN_SIZE ; 
 void* FUNC1 (struct ecore_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC2(struct ecore_dev *p_dev)
{
	struct ecore_llh_info *p_llh_info;
	u32 size; u8 i;

	p_llh_info = FUNC1(p_dev, GFP_KERNEL, sizeof(*p_llh_info));
	if (!p_llh_info)
		return ECORE_NOMEM;
	p_dev->p_llh_info = p_llh_info;

	for (i = 0; i < MAX_NUM_PPFID; i++) {
		if (!(p_dev->ppfid_bitmap & (0x1 << i)))
			continue;

		p_llh_info->ppfid_array[p_llh_info->num_ppfid] = i;
		FUNC0(p_dev, ECORE_MSG_SP, "ppfid_array[%d] = %hhd\n",
			   p_llh_info->num_ppfid, i);
		p_llh_info->num_ppfid++;
	}

	size = p_llh_info->num_ppfid * sizeof(*p_llh_info->pp_filters);
	p_llh_info->pp_filters = FUNC1(p_dev, GFP_KERNEL, size);
	if (!p_llh_info->pp_filters)
		return ECORE_NOMEM;

	size = NIG_REG_LLH_FUNC_FILTER_EN_SIZE *
	       sizeof(**p_llh_info->pp_filters);
	for (i = 0; i < p_llh_info->num_ppfid; i++) {
		p_llh_info->pp_filters[i] = FUNC1(p_dev, GFP_KERNEL,
							size);
		if (!p_llh_info->pp_filters[i])
			return ECORE_NOMEM;
	}

	return ECORE_SUCCESS;
}