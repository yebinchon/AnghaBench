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
struct ecore_hwfn {int b_int_requested; int b_int_enabled; } ;
typedef  enum ecore_int_mode { ____Placeholder_ecore_int_mode } ecore_int_mode ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_INT_MODE_INTA ; 
 int ECORE_NORESOURCES ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*) ; 
 int FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 

enum _ecore_status_t
FUNC5(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
			  enum ecore_int_mode int_mode)
{
	enum _ecore_status_t rc = ECORE_SUCCESS;

	FUNC3(p_hwfn, p_ptt);

	if ((int_mode != ECORE_INT_MODE_INTA) || FUNC1(p_hwfn)) {
		rc = FUNC2(p_hwfn);
		if (rc != ECORE_SUCCESS) {
			FUNC0(p_hwfn, true, "Slowpath IRQ request failed\n");
			return ECORE_NORESOURCES;
		}
		p_hwfn->b_int_requested = true;
	}

	/* Enable interrupt Generation */
	FUNC4(p_hwfn, p_ptt, int_mode);

	p_hwfn->b_int_enabled = 1;

	return rc;
}