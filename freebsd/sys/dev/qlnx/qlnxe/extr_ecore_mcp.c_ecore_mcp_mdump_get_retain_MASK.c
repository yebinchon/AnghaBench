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
struct mdump_retain_data_stc {int /*<<< orphan*/  status; int /*<<< orphan*/  pf; int /*<<< orphan*/  epoch; int /*<<< orphan*/  valid; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_mdump_retain_data {int /*<<< orphan*/  status; int /*<<< orphan*/  pf; int /*<<< orphan*/  epoch; int /*<<< orphan*/  valid; } ;
struct ecore_mdump_cmd_params {int data_dst_size; scalar_t__ mcp_resp; struct mdump_retain_data_stc* p_data_dst; int /*<<< orphan*/  cmd; } ;
struct ecore_hwfn {int dummy; } ;
typedef  int /*<<< orphan*/  mfw_mdump_retain ;
typedef  int /*<<< orphan*/  mdump_cmd_params ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,scalar_t__) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_MDUMP_GET_RETAIN ; 
 int ECORE_SUCCESS ; 
 int ECORE_UNKNOWN_ERROR ; 
 scalar_t__ FW_MSG_CODE_OK ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_mdump_cmd_params*,int) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mdump_cmd_params*) ; 

enum _ecore_status_t
FUNC3(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
			   struct ecore_mdump_retain_data *p_mdump_retain)
{
	struct ecore_mdump_cmd_params mdump_cmd_params;
	struct mdump_retain_data_stc mfw_mdump_retain;
	enum _ecore_status_t rc;

	FUNC1(&mdump_cmd_params, sizeof(mdump_cmd_params));
	mdump_cmd_params.cmd = DRV_MSG_CODE_MDUMP_GET_RETAIN;
	mdump_cmd_params.p_data_dst = &mfw_mdump_retain;
	mdump_cmd_params.data_dst_size = sizeof(mfw_mdump_retain);

	rc = FUNC2(p_hwfn, p_ptt, &mdump_cmd_params);
	if (rc != ECORE_SUCCESS)
		return rc;

	if (mdump_cmd_params.mcp_resp != FW_MSG_CODE_OK) {
		FUNC0(p_hwfn,
			"Failed to get the mdump retained data [mcp_resp 0x%x]\n",
			mdump_cmd_params.mcp_resp);
		return ECORE_UNKNOWN_ERROR;
	}

	p_mdump_retain->valid = mfw_mdump_retain.valid;
	p_mdump_retain->epoch = mfw_mdump_retain.epoch;
	p_mdump_retain->pf = mfw_mdump_retain.pf;
	p_mdump_retain->status = mfw_mdump_retain.status;

	return ECORE_SUCCESS;
}