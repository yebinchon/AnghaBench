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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int flags; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK ; 
 int /*<<< orphan*/  I40E_RESOURCE_READ ; 
 int I40E_SUCCESS ; 
 int FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw, u16 offset,
					 u16 *data)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;

	if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
		ret_code = FUNC1(hw, I40E_RESOURCE_READ);

	if (ret_code)
		return ret_code;
	ret_code = FUNC0(hw, offset, data);

	if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
		FUNC2(hw);
	return ret_code;
}