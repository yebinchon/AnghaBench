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
typedef  scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum ecore_resources { ____Placeholder_ecore_resources } ecore_resources ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int,int /*<<< orphan*/ ) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FW_MSG_CODE_RESOURCE_ALLOC_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC4(struct ecore_hwfn *p_hwfn,
			      struct ecore_ptt *p_ptt,
			      enum ecore_resources res_id,
			      u32 resc_max_val,
			      u32 *p_mcp_resp)
{
	enum _ecore_status_t rc;

	rc = FUNC3(p_hwfn, p_ptt, res_id,
					resc_max_val, p_mcp_resp);
	if (rc != ECORE_SUCCESS) {
		FUNC1(p_hwfn, false,
			  "MFW response failure for a max value setting of resource %d [%s]\n",
			  res_id, FUNC2(res_id));
		return rc;
	}

	if (*p_mcp_resp != FW_MSG_CODE_RESOURCE_ALLOC_OK)
		FUNC0(p_hwfn,
			"Failed to set the max value of resource %d [%s]. mcp_resp = 0x%08x.\n",
			res_id, FUNC2(res_id), *p_mcp_resp);

	return ECORE_SUCCESS;
}