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
struct ecore_ll2_info {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int ECORE_SUCCESS ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC3(struct ecore_hwfn *p_hwfn,
			    void *p_cookie)
{
	struct ecore_ll2_info *p_ll2_conn = (struct ecore_ll2_info *)p_cookie;
	enum _ecore_status_t rc;

	rc = FUNC0(p_hwfn, p_ll2_conn);
	if (rc != ECORE_SUCCESS)
		return rc;

	FUNC1(p_hwfn, p_ll2_conn);
	FUNC2(p_hwfn, p_ll2_conn);

	return 0;
}