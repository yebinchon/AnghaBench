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
struct ecore_dcbx_get {int dummy; } ;
typedef  enum ecore_mib_read_type { ____Placeholder_ecore_mib_read_type } ecore_mib_read_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_dcbx_get*) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_dcbx_get*,int) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 struct ecore_ptt* FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC6(struct ecore_hwfn *p_hwfn,
					     struct ecore_dcbx_get *p_get,
					     enum ecore_mib_read_type type)
{
	struct ecore_ptt *p_ptt;
	enum _ecore_status_t rc;

	if (FUNC0(p_hwfn->p_dev))
		return ECORE_INVAL;

	p_ptt = FUNC4(p_hwfn);
	if (!p_ptt)
		return ECORE_TIMEOUT;

	rc = FUNC3(p_hwfn, p_ptt, type);
	if (rc != ECORE_SUCCESS)
		goto out;

	FUNC1(p_hwfn, p_get);

	rc = FUNC2(p_hwfn, p_get, type);

out:
	FUNC5(p_hwfn, p_ptt);
	return rc;
}