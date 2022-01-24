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
typedef  union ecore_llh_filter {int dummy; } ecore_llh_filter ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ecore_dev {int dummy; } ;
typedef  enum ecore_llh_filter_type { ____Placeholder_ecore_llh_filter_type } ecore_llh_filter_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*,scalar_t__) ; 
 scalar_t__ ECORE_LLH_INVALID_FILTER_IDX ; 
 int ECORE_NORESOURCES ; 
 int ECORE_SUCCESS ; 
 int FUNC1 (struct ecore_dev*,scalar_t__,scalar_t__,int,union ecore_llh_filter*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ecore_dev*,scalar_t__,scalar_t__*) ; 
 int FUNC3 (struct ecore_dev*,scalar_t__,union ecore_llh_filter*,scalar_t__*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC4(struct ecore_dev *p_dev, u8 ppfid,
			    enum ecore_llh_filter_type type,
			    union ecore_llh_filter *p_filter,
			    u8 *p_filter_idx, u32 *p_ref_cnt)
{
	enum _ecore_status_t rc;

	/* Check if the same filter already exist */
	rc = FUNC3(p_dev, ppfid, p_filter,
					    p_filter_idx);
	if (rc != ECORE_SUCCESS)
		return rc;

	/* Find a new entry in case of a new filter */
	if (*p_filter_idx == ECORE_LLH_INVALID_FILTER_IDX) {
		rc = FUNC2(p_dev, ppfid, p_filter_idx);
		if (rc != ECORE_SUCCESS)
			return rc;
	}

	/* No free entry was found */
	if (*p_filter_idx == ECORE_LLH_INVALID_FILTER_IDX) {
		FUNC0(p_dev, false,
			  "Failed to find an empty LLH filter to utilize [ppfid %d]\n",
			  ppfid);
		return ECORE_NORESOURCES;
	}

	return FUNC1(p_dev, ppfid, *p_filter_idx, type,
					     p_filter, p_ref_cnt);
}