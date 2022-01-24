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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_list_capabilites {int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  datalen; int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  enum i40e_admin_queue_opc { ____Placeholder_i40e_admin_queue_opc } i40e_admin_queue_opc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int /*<<< orphan*/  I40E_AQ_LARGE_BUF ; 
 int I40E_ERR_PARAM ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int i40e_aqc_opc_list_dev_capabilities ; 
 int i40e_aqc_opc_list_func_capabilities ; 
 int FUNC3 (struct i40e_hw*,struct i40e_aq_desc*,void*,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_aq_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,void*,int /*<<< orphan*/ ,int) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw,
				void *buff, u16 buff_size, u16 *data_size,
				enum i40e_admin_queue_opc list_type_opc,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aqc_list_capabilites *cmd;
	struct i40e_aq_desc desc;
	enum i40e_status_code status = I40E_SUCCESS;

	cmd = (struct i40e_aqc_list_capabilites *)&desc.params.raw;

	if (list_type_opc != i40e_aqc_opc_list_func_capabilities &&
		list_type_opc != i40e_aqc_opc_list_dev_capabilities) {
		status = I40E_ERR_PARAM;
		goto exit;
	}

	FUNC4(&desc, list_type_opc);

	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	if (buff_size > I40E_AQ_LARGE_BUF)
		desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);

	status = FUNC3(hw, &desc, buff, buff_size, cmd_details);
	*data_size = FUNC1(desc.datalen);

	if (status)
		goto exit;

	FUNC5(hw, buff, FUNC2(cmd->count),
					 list_type_opc);

exit:
	return status;
}