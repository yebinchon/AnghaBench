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
typedef  int /*<<< orphan*/  u8 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  i40e_aqc_opc_nvm_progress ; 
 int FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw, u8 *progress,
				struct i40e_asq_cmd_details *cmd_details)
{
	enum i40e_status_code status;
	struct i40e_aq_desc desc;

	FUNC0("i40e_aq_nvm_progress");

	FUNC2(&desc, i40e_aqc_opc_nvm_progress);
	status = FUNC1(hw, &desc, NULL, 0, cmd_details);
	*progress = desc.params.raw[0];
	return status;
}