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
struct ecore_resc_unlock_params {int /*<<< orphan*/  resource; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_RESC_LOCK_IND_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_resc_unlock_params*,int) ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_resc_unlock_params*) ; 

enum _ecore_status_t
FUNC2(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
	struct ecore_resc_unlock_params resc_unlock_params;
	enum _ecore_status_t rc;

	FUNC0(&resc_unlock_params,
		      sizeof(struct ecore_resc_unlock_params));
	resc_unlock_params.resource = ECORE_RESC_LOCK_IND_TABLE;
	rc = FUNC1(p_hwfn, p_ptt,
				  &resc_unlock_params);
	return rc;
}