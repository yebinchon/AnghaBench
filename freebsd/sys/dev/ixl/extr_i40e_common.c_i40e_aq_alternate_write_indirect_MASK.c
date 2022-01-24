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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_alternate_ind_write {void* length; void* address; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int /*<<< orphan*/  I40E_AQ_FLAG_RD ; 
 int I40E_AQ_LARGE_BUF ; 
 int I40E_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  i40e_aqc_opc_alternate_write_indirect ; 
 int FUNC3 (struct i40e_hw*,struct i40e_aq_desc*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC5(struct i40e_hw *hw,
				u32 addr, u32 dw_count, void *buffer)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_alternate_ind_write *cmd_resp =
		(struct i40e_aqc_alternate_ind_write *)&desc.params.raw;
	enum i40e_status_code status;

	if (buffer == NULL)
		return I40E_ERR_PARAM;

	/* Indirect command */
	FUNC4(&desc,
					 i40e_aqc_opc_alternate_write_indirect);

	desc.flags |= FUNC0(I40E_AQ_FLAG_RD);
	desc.flags |= FUNC0(I40E_AQ_FLAG_BUF);
	if (dw_count > (I40E_AQ_LARGE_BUF/4))
		desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);

	cmd_resp->address = FUNC1(addr);
	cmd_resp->length = FUNC1(dw_count);

	status = FUNC3(hw, &desc, buffer,
				       FUNC2(4*dw_count), NULL);

	return status;
}