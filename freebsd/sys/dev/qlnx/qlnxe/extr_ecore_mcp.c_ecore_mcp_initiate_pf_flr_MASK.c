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
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MSG_CODE_INITIATE_PF_FLR ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

enum _ecore_status_t FUNC1(struct ecore_hwfn *p_hwfn,
					       struct ecore_ptt *p_ptt)
{
	u32 mcp_resp, mcp_param;

	return FUNC0(p_hwfn, p_ptt, DRV_MSG_CODE_INITIATE_PF_FLR, 0,
			     &mcp_resp, &mcp_param);
}