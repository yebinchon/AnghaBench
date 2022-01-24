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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_SWFW_EEP_SM ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	s32 ret_val;

	FUNC0("e1000_acquire_nvm_80003es2lan");

	ret_val = FUNC2(hw, E1000_SWFW_EEP_SM);
	if (ret_val)
		return ret_val;

	ret_val = FUNC1(hw);

	if (ret_val)
		FUNC3(hw, E1000_SWFW_EEP_SM);

	return ret_val;
}