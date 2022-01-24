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
struct ecore_mcp_mb_params {scalar_t__ mcp_resp; int /*<<< orphan*/  mcp_param; int /*<<< orphan*/  cmd; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int /*<<< orphan*/  ppfid_bitmap; } ;
typedef  int /*<<< orphan*/  mb_params ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_GET_PPFID_BITMAP ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_NOTIMPL ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FW_MB_PARAM_PPFID_BITMAP ; 
 scalar_t__ FW_MSG_CODE_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_mcp_mb_params*,int) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mcp_mb_params*) ; 

enum _ecore_status_t FUNC5(struct ecore_hwfn *p_hwfn,
						struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	struct ecore_mcp_mb_params mb_params;
	enum _ecore_status_t rc;

	FUNC3(&mb_params, sizeof(mb_params));
	mb_params.cmd = DRV_MSG_CODE_GET_PPFID_BITMAP;
	rc = FUNC4(p_hwfn, p_ptt, &mb_params);
	if (rc != ECORE_SUCCESS)
		return rc;

	if (mb_params.mcp_resp == FW_MSG_CODE_UNSUPPORTED) {
		FUNC0(p_hwfn,
			"The get_ppfid_bitmap command is unsupported by the MFW\n");
		return ECORE_NOTIMPL;
	}

	p_dev->ppfid_bitmap = FUNC2(mb_params.mcp_param,
					    FW_MB_PARAM_PPFID_BITMAP);

	FUNC1(p_hwfn, ECORE_MSG_SP, "PPFID bitmap 0x%hhx\n",
		   p_dev->ppfid_bitmap);

	return ECORE_SUCCESS;
}