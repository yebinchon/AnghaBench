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
struct ecore_hwfn {int /*<<< orphan*/  p_dpc_ptt; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  MCP_REG_CPU_EVENT_MASK ; 
 int /*<<< orphan*/  MCP_REG_CPU_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC3(struct ecore_hwfn *p_hwfn)
{
	u32 tmp = FUNC1(p_hwfn, p_hwfn->p_dpc_ptt, MCP_REG_CPU_STATE);

	FUNC0(p_hwfn->p_dev, "MCP_REG_CPU_STATE: %08x - Masking...\n",
		tmp);
	FUNC2(p_hwfn, p_hwfn->p_dpc_ptt, MCP_REG_CPU_EVENT_MASK,
		 0xffffffff);

	return ECORE_SUCCESS;
}