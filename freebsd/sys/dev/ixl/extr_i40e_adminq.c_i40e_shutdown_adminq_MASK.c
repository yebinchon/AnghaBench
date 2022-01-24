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
struct TYPE_4__ {scalar_t__ va; } ;
struct TYPE_3__ {int /*<<< orphan*/  arq_spinlock; int /*<<< orphan*/  asq_spinlock; } ;
struct i40e_hw {TYPE_2__ nvm_buff; TYPE_1__ aq; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;

	if (FUNC1(hw))
		FUNC0(hw, TRUE);

	FUNC5(hw);
	FUNC4(hw);
	FUNC2(&hw->aq.asq_spinlock);
	FUNC2(&hw->aq.arq_spinlock);

	if (hw->nvm_buff.va)
		FUNC3(hw, &hw->nvm_buff);

	return ret_code;
}