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
struct ecore_vf_info {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_filter_ucast {scalar_t__ type; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ ECORE_FILTER_MAC ; 
 scalar_t__ ECORE_FILTER_VLAN ; 
 int ECORE_SUCCESS ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_filter_ucast*) ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_filter_ucast*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC2(struct ecore_hwfn *p_hwfn,
				   struct ecore_vf_info *p_vf,
				   struct ecore_filter_ucast *p_params)
{
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (p_params->type == ECORE_FILTER_MAC) {
		rc = FUNC0(p_hwfn, p_vf, p_params);
		if (rc != ECORE_SUCCESS)
			return rc;
	}

	if (p_params->type == ECORE_FILTER_VLAN)
		rc = FUNC1(p_hwfn, p_vf, p_params);

	return rc;
}