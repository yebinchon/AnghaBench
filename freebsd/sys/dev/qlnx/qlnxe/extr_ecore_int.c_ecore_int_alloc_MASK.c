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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ECORE_SUCCESS ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC2 (struct ecore_hwfn*) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt)
{
	enum _ecore_status_t rc = ECORE_SUCCESS;

	rc = FUNC2(p_hwfn);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn->p_dev, "Failed to allocate sp dpc mem\n");
		return rc;
	}

	rc = FUNC3(p_hwfn, p_ptt);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn->p_dev, "Failed to allocate sp sb mem\n");
		return rc;
	}

	rc = FUNC1(p_hwfn, p_ptt);
	if (rc != ECORE_SUCCESS)
		FUNC0(p_hwfn->p_dev, "Failed to allocate sb attn mem\n");

	return rc;
}