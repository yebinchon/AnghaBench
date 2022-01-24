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
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  I40E_SR_SW_CHECKSUM_WORD ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i40e_hw*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;
	u16 checksum;
	__le16 le_sum;

	FUNC1("i40e_update_nvm_checksum");

	ret_code = FUNC2(hw, &checksum);
	le_sum = FUNC0(checksum);
	if (ret_code == I40E_SUCCESS)
		ret_code = FUNC3(hw, 0x00, I40E_SR_SW_CHECKSUM_WORD,
					     1, &le_sum, TRUE);

	return ret_code;
}