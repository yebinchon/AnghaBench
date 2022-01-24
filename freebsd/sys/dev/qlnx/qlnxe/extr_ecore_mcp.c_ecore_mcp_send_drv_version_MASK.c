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
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_mb_params {int data_src_size; struct ecore_mcp_mb_params* p_data_src; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * name; int /*<<< orphan*/  version; } ;
struct ecore_mcp_drv_version {int /*<<< orphan*/ * name; int /*<<< orphan*/  version; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
struct drv_version_stc {int data_src_size; struct drv_version_stc* p_data_src; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * name; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  mb_params ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  drv_version ;
typedef  int OSAL_BE32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,char*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_SET_VERSION ; 
 int ECORE_SUCCESS ; 
 int MCP_DRV_VER_STR_SIZE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_mcp_mb_params*,int) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mcp_mb_params*) ; 

enum _ecore_status_t
FUNC5(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
			   struct ecore_mcp_drv_version *p_ver)
{
	struct ecore_mcp_mb_params mb_params;
	struct drv_version_stc drv_version;
	u32 num_words, i;
	void *p_name;
	OSAL_BE32 val;
	enum _ecore_status_t rc;

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev))
		return ECORE_SUCCESS;
#endif

	FUNC3(&drv_version, sizeof(drv_version));
	drv_version.version = p_ver->version;
	num_words = (MCP_DRV_VER_STR_SIZE - 4) / 4;
	for (i = 0; i < num_words; i++) {
		/* The driver name is expected to be in a big-endian format */
		p_name = &p_ver->name[i * sizeof(u32)];
		val = FUNC2(*(u32 *)p_name);
		*(u32 *)&drv_version.name[i * sizeof(u32)] = val;
	}

	FUNC3(&mb_params, sizeof(mb_params));
	mb_params.cmd = DRV_MSG_CODE_SET_VERSION;
	mb_params.p_data_src = &drv_version;
	mb_params.data_src_size = sizeof(drv_version);
	rc = FUNC4(p_hwfn, p_ptt, &mb_params);
	if (rc != ECORE_SUCCESS)
		FUNC1(p_hwfn, "MCP response failure, aborting\n");

	return rc;
}