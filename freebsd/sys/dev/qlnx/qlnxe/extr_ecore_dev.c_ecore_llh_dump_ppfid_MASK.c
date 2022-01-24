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
typedef  int /*<<< orphan*/  u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int ECORE_AGAIN ; 
 scalar_t__ FUNC0 (struct ecore_dev*) ; 
 struct ecore_hwfn* FUNC1 (struct ecore_dev*) ; 
 struct ecore_ptt* OSAL_NULL ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 struct ecore_ptt* FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC6(struct ecore_dev *p_dev, u8 ppfid)
{
	struct ecore_hwfn *p_hwfn = FUNC1(p_dev);
	struct ecore_ptt *p_ptt = FUNC4(p_hwfn);
	enum _ecore_status_t rc;

	if (p_ptt == OSAL_NULL)
		return ECORE_AGAIN;

	if (FUNC0(p_dev))
		rc = FUNC2(p_hwfn, p_ptt, ppfid);
	else /* E5 */
		rc = FUNC3(p_hwfn, p_ptt, ppfid);

	FUNC5(p_hwfn, p_ptt);

	return rc;
}