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
struct i40e_aqc_mac_address_read_data {int dummy; } ;
struct i40e_aqc_mac_address_read {int /*<<< orphan*/  command_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_AQ_FLAG_BUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_mac_address_read ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_mac_address_read_data*,int,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40e_status_code FUNC4(struct i40e_hw *hw,
				   u16 *flags,
				   struct i40e_aqc_mac_address_read_data *addrs,
				   struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_mac_address_read *cmd_data =
		(struct i40e_aqc_mac_address_read *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC3(&desc, i40e_aqc_opc_mac_address_read);
	desc.flags |= FUNC0(I40E_AQ_FLAG_BUF);

	status = FUNC2(hw, &desc, addrs,
				       sizeof(*addrs), cmd_details);
	*flags = FUNC1(cmd_data->command_flags);

	return status;
}