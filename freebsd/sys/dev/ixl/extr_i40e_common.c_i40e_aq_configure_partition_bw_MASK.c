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
typedef  int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_configure_partition_bw_data {int dummy; } ;
struct i40e_aq_desc {int /*<<< orphan*/  datalen; int /*<<< orphan*/  flags; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_RD ; 
 int /*<<< orphan*/  i40e_aqc_opc_configure_partition_bw ; 
 int FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_configure_partition_bw_data*,int,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw,
			struct i40e_aqc_configure_partition_bw_data *bw_data,
			struct i40e_asq_cmd_details *cmd_details)
{
	enum i40e_status_code status;
	struct i40e_aq_desc desc;
	u16 bwd_size = sizeof(*bw_data);

	FUNC2(&desc,
				i40e_aqc_opc_configure_partition_bw);

	/* Indirect command */
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_RD);

	desc.datalen = FUNC0(bwd_size);

	status = FUNC1(hw, &desc, bw_data, bwd_size, cmd_details);

	return status;
}