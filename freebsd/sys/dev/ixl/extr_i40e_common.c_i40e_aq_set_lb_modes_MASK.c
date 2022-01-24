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
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_lb_mode {int force_speed; void* speed; void* lb_type; void* lb_level; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  i40e_aqc_opc_set_lb_modes ; 
 int FUNC0 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code
FUNC2(struct i40e_hw *hw, u8 lb_level, u8 lb_type, u8 speed,
		     struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_set_lb_mode *cmd =
		(struct i40e_aqc_set_lb_mode *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC1(&desc,
					  i40e_aqc_opc_set_lb_modes);

	cmd->lb_level = lb_level;
	cmd->lb_type = lb_type;
	cmd->speed = speed;
	if (speed)
		cmd->force_speed = 1;

	status = FUNC0(hw, &desc, NULL, 0, cmd_details);

	return status;
}