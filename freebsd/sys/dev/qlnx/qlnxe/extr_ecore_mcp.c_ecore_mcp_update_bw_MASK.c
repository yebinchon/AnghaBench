#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct public_func {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_function_info {int /*<<< orphan*/  bandwidth_max; int /*<<< orphan*/  bandwidth_min; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int /*<<< orphan*/  p_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  link_lock; struct ecore_mcp_function_info func_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MSG_CODE_BW_UPDATE_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,struct public_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct public_func*) ; 

__attribute__((used)) static void
FUNC8(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
	struct ecore_mcp_function_info *p_info;
	struct public_func shmem_info;
	u32 resp = 0, param = 0;

	FUNC1(&p_hwfn->mcp_info->link_lock);

	FUNC6(p_hwfn, p_ptt, &shmem_info,
				 FUNC0(p_hwfn));

	FUNC7(p_hwfn, &shmem_info);

	p_info = &p_hwfn->mcp_info->func_info;

	FUNC4(p_hwfn->p_dev, p_info->bandwidth_min);

	FUNC3(p_hwfn->p_dev, p_info->bandwidth_max);

	FUNC2(&p_hwfn->mcp_info->link_lock);

	/* Acknowledge the MFW */
	FUNC5(p_hwfn, p_ptt, DRV_MSG_CODE_BW_UPDATE_ACK, 0, &resp,
		      &param);
}