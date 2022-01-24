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
struct ecore_load_req_params {scalar_t__ timeout_val; int /*<<< orphan*/  override_force_load; int /*<<< orphan*/  avoid_eng_reset; scalar_t__ drv_role; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct ecore_drv_load_params {scalar_t__ mfw_timeout_val; int mfw_timeout_fallback; int /*<<< orphan*/  override_force_load; int /*<<< orphan*/  avoid_eng_reset; scalar_t__ is_crash_kernel; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int ECORE_ABORTED ; 
 scalar_t__ ECORE_DRV_ROLE_KDUMP ; 
 scalar_t__ ECORE_DRV_ROLE_OS ; 
 scalar_t__ ECORE_LOAD_REQ_LOCK_TO_DEFAULT ; 
 scalar_t__ ECORE_LOAD_REQ_LOCK_TO_NONE ; 
 scalar_t__ ECORE_OVERRIDE_FORCE_LOAD_NONE ; 
 int ECORE_SUCCESS ; 
#define  ECORE_TO_FALLBACK_FAIL_LOAD 130 
#define  ECORE_TO_FALLBACK_TO_DEFAULT 129 
#define  ECORE_TO_FALLBACK_TO_NONE 128 
 int FW_MB_PARAM_FEATURE_SUPPORT_DRV_LOAD_TO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_load_req_params*,int) ; 
 struct ecore_drv_load_params* OSAL_NULL ; 

__attribute__((used)) static enum _ecore_status_t
FUNC4(struct ecore_hwfn *p_hwfn,
			   struct ecore_load_req_params *p_load_req,
			   struct ecore_drv_load_params *p_drv_load)
{
	/* Make sure that if ecore-client didn't provide inputs, all the
	 * expected defaults are indeed zero.
	 */
	FUNC2(ECORE_DRV_ROLE_OS != 0);
	FUNC2(ECORE_LOAD_REQ_LOCK_TO_DEFAULT != 0);
	FUNC2(ECORE_OVERRIDE_FORCE_LOAD_NONE != 0);

	FUNC3(p_load_req, sizeof(*p_load_req));

	if (p_drv_load == OSAL_NULL)
		goto out;

	p_load_req->drv_role = p_drv_load->is_crash_kernel ?
			       ECORE_DRV_ROLE_KDUMP :
			       ECORE_DRV_ROLE_OS;
	p_load_req->avoid_eng_reset = p_drv_load->avoid_eng_reset;
	p_load_req->override_force_load = p_drv_load->override_force_load;

	/* Old MFW versions don't support timeout values other than default and
	 * none, so these values are replaced according to the fall-back action.
	 */

	if (p_drv_load->mfw_timeout_val == ECORE_LOAD_REQ_LOCK_TO_DEFAULT ||
	    p_drv_load->mfw_timeout_val == ECORE_LOAD_REQ_LOCK_TO_NONE ||
	    (p_hwfn->mcp_info->capabilities &
	     FW_MB_PARAM_FEATURE_SUPPORT_DRV_LOAD_TO)) {
		p_load_req->timeout_val = p_drv_load->mfw_timeout_val;
		goto out;
	}

	switch (p_drv_load->mfw_timeout_fallback) {
	case ECORE_TO_FALLBACK_TO_NONE:
		p_load_req->timeout_val = ECORE_LOAD_REQ_LOCK_TO_NONE;
		break;
	case ECORE_TO_FALLBACK_TO_DEFAULT:
		p_load_req->timeout_val = ECORE_LOAD_REQ_LOCK_TO_DEFAULT;
		break;
	case ECORE_TO_FALLBACK_FAIL_LOAD:
		FUNC1(p_hwfn, false,
			  "Received %d as a value for MFW timeout while the MFW supports only default [%d] or none [%d]. Abort.\n",
			  p_drv_load->mfw_timeout_val,
			  ECORE_LOAD_REQ_LOCK_TO_DEFAULT,
			  ECORE_LOAD_REQ_LOCK_TO_NONE);
		return ECORE_ABORTED;
	}

	FUNC0(p_hwfn,
		"Modified the MFW timeout value from %d to %s [%d] due to lack of MFW support\n",
		p_drv_load->mfw_timeout_val,
		(p_load_req->timeout_val == ECORE_LOAD_REQ_LOCK_TO_DEFAULT) ?
		"default" : "none",
		p_load_req->timeout_val);
out:
	return ECORE_SUCCESS;
}