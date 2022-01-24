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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_alternate_write {int /*<<< orphan*/  data1; int /*<<< orphan*/  data0; void* address1; void* address0; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_ERR_PARAM ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_alternate_read ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw,
				u32 reg_addr0, u32 *reg_val0,
				u32 reg_addr1, u32 *reg_val1)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_alternate_write *cmd_resp =
		(struct i40e_aqc_alternate_write *)&desc.params.raw;
	enum i40e_status_code status;

	if (reg_val0 == NULL)
		return I40E_ERR_PARAM;

	FUNC3(&desc, i40e_aqc_opc_alternate_read);
	cmd_resp->address0 = FUNC0(reg_addr0);
	cmd_resp->address1 = FUNC0(reg_addr1);

	status = FUNC2(hw, &desc, NULL, 0, NULL);

	if (status == I40E_SUCCESS) {
		*reg_val0 = FUNC1(cmd_resp->data0);

		if (reg_val1 != NULL)
			*reg_val1 = FUNC1(cmd_resp->data1);
	}

	return status;
}