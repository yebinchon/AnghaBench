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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aq_desc {int /*<<< orphan*/  retval; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 scalar_t__ I40E_AQ_RC_ESRCH ; 
 int I40E_ERR_NOT_IMPLEMENTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_oem_post_update ; 
 int FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw,
				void *buff, u16 buff_size,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	enum i40e_status_code status;


	FUNC2(&desc, i40e_aqc_opc_oem_post_update);
	status = FUNC1(hw, &desc, NULL, 0, cmd_details);
	if (status && FUNC0(desc.retval) == I40E_AQ_RC_ESRCH)
		status = I40E_ERR_NOT_IMPLEMENTED;

	return status;
}