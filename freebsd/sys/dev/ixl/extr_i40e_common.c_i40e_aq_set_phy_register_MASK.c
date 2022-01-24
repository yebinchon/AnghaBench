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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_phy_register_access {void* reg_value; void* reg_address; void* dev_addres; void* phy_interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_set_phy_register ; 
 int FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw,
				u8 phy_select, u8 dev_addr,
				u32 reg_addr, u32 reg_val,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_phy_register_access *cmd =
		(struct i40e_aqc_phy_register_access *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC2(&desc,
					  i40e_aqc_opc_set_phy_register);

	cmd->phy_interface = phy_select;
	cmd->dev_addres = dev_addr;
	cmd->reg_address = FUNC0(reg_addr);
	cmd->reg_value = FUNC0(reg_val);

	status = FUNC1(hw, &desc, NULL, 0, cmd_details);

	return status;
}