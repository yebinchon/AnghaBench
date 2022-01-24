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
struct i40e_aqc_alternate_write_done {int /*<<< orphan*/  cmd_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_alternate_set_mode ; 
 int FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw,
		u8 oem_mode)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_alternate_write_done *cmd =
		(struct i40e_aqc_alternate_write_done *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC2(&desc,
					  i40e_aqc_opc_alternate_set_mode);

	cmd->cmd_flags = FUNC0(oem_mode);

	status = FUNC1(hw, &desc, NULL, 0, NULL);

	return status;
}