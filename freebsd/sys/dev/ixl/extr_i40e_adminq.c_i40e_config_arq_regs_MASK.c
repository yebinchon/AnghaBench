#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  pa; } ;
struct TYPE_5__ {TYPE_1__ desc_buf; int /*<<< orphan*/  bal; int /*<<< orphan*/  tail; int /*<<< orphan*/  bah; int /*<<< orphan*/  len; int /*<<< orphan*/  head; } ;
struct TYPE_6__ {int num_arq_entries; TYPE_2__ arq; } ;
struct i40e_hw {TYPE_3__ aq; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_ERR_ADMIN_QUEUE_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int I40E_PF_ARQLEN_ARQENABLE_MASK ; 
 int I40E_SUCCESS ; 
 int I40E_VF_ARQLEN1_ARQENABLE_MASK ; 
 scalar_t__ FUNC2 (struct i40e_hw*) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum i40e_status_code FUNC5(struct i40e_hw *hw)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;
	u32 reg = 0;

	/* Clear Head and Tail */
	FUNC4(hw, hw->aq.arq.head, 0);
	FUNC4(hw, hw->aq.arq.tail, 0);

	/* set starting point */
	if (!FUNC2(hw))
		FUNC4(hw, hw->aq.arq.len, (hw->aq.num_arq_entries |
					  I40E_PF_ARQLEN_ARQENABLE_MASK));
	if (FUNC2(hw))
		FUNC4(hw, hw->aq.arq.len, (hw->aq.num_arq_entries |
					  I40E_VF_ARQLEN1_ARQENABLE_MASK));
	FUNC4(hw, hw->aq.arq.bal, FUNC1(hw->aq.arq.desc_buf.pa));
	FUNC4(hw, hw->aq.arq.bah, FUNC0(hw->aq.arq.desc_buf.pa));

	/* Update tail in the HW to post pre-allocated buffers */
	FUNC4(hw, hw->aq.arq.tail, hw->aq.num_arq_entries - 1);

	/* Check one register to verify that config was applied */
	reg = FUNC3(hw, hw->aq.arq.bal);
	if (reg != FUNC1(hw->aq.arq.desc_buf.pa))
		ret_code = I40E_ERR_ADMIN_QUEUE_ERROR;

	return ret_code;
}