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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int /*<<< orphan*/  mcp_nvm_resp; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MSG_CODE_SET_SECURE_MODE ; 
 int ECORE_BUSY ; 
 struct ecore_hwfn* FUNC0 (struct ecore_dev*) ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ecore_ptt* FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC4(struct ecore_dev *p_dev,
						   u32 addr)
{
	struct ecore_hwfn *p_hwfn = FUNC0(p_dev);
	struct ecore_ptt  *p_ptt;
	u32 resp, param;
	enum _ecore_status_t rc;

	p_ptt = FUNC2(p_hwfn);
	if (!p_ptt)
		return ECORE_BUSY;

	rc = FUNC1(p_hwfn, p_ptt, DRV_MSG_CODE_SET_SECURE_MODE, addr,
			   &resp, &param);
	p_dev->mcp_nvm_resp = resp;
	FUNC3(p_hwfn, p_ptt);

	return rc;
}