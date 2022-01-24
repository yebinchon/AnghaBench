#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {scalar_t__ asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_request_resource {int /*<<< orphan*/  timeout; int /*<<< orphan*/  resource_number; void* access_type; void* resource_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_2__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  enum i40e_aq_resources_ids { ____Placeholder_i40e_aq_resources_ids } i40e_aq_resources_ids ;
typedef  enum i40e_aq_resource_access_type { ____Placeholder_i40e_aq_resource_access_type } i40e_aq_resource_access_type ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ I40E_AQ_RC_EBUSY ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_request_resource ; 
 int FUNC4 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw,
				enum i40e_aq_resources_ids resource,
				enum i40e_aq_resource_access_type access,
				u8 sdp_number, u64 *timeout,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_request_resource *cmd_resp =
		(struct i40e_aqc_request_resource *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC2("i40e_aq_request_resource");

	FUNC5(&desc, i40e_aqc_opc_request_resource);

	cmd_resp->resource_id = FUNC0(resource);
	cmd_resp->access_type = FUNC0(access);
	cmd_resp->resource_number = FUNC1(sdp_number);

	status = FUNC4(hw, &desc, NULL, 0, cmd_details);
	/* The completion specifies the maximum time in ms that the driver
	 * may hold the resource in the Timeout field.
	 * If the resource is held by someone else, the command completes with
	 * busy return value and the timeout field indicates the maximum time
	 * the current owner of the resource has to free it.
	 */
	if (status == I40E_SUCCESS || hw->aq.asq_last_status == I40E_AQ_RC_EBUSY)
		*timeout = FUNC3(cmd_resp->timeout);

	return status;
}