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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_ns_proxy_data {int dummy; } ;
struct TYPE_3__ {void* addr_low; void* addr_high; } ;
struct TYPE_4__ {TYPE_1__ external; } ;
struct i40e_aq_desc {int /*<<< orphan*/  datalen; TYPE_2__ params; int /*<<< orphan*/  flags; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_RD ; 
 int I40E_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_set_ns_proxy_table_entry ; 
 int FUNC4 (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_ns_proxy_data*,int,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw,
			struct i40e_aqc_ns_proxy_data *ns_proxy_table_entry,
			struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	enum i40e_status_code status;

	if (!ns_proxy_table_entry)
		return I40E_ERR_PARAM;

	FUNC5(&desc,
				i40e_aqc_opc_set_ns_proxy_table_entry);

	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_RD);
	desc.params.external.addr_high =
		FUNC1(FUNC2((u64)ns_proxy_table_entry));
	desc.params.external.addr_low =
		FUNC1(FUNC3((u64)ns_proxy_table_entry));
	desc.datalen = FUNC0(sizeof(struct i40e_aqc_ns_proxy_data));

	status = FUNC4(hw, &desc, ns_proxy_table_entry,
				       sizeof(struct i40e_aqc_ns_proxy_data),
				       cmd_details);

	return status;
}