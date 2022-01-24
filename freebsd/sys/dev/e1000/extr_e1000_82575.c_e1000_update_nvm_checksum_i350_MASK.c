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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E1000_SUCCESS ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;
	u16 j;
	u16 nvm_offset;

	FUNC0("e1000_update_nvm_checksum_i350");

	for (j = 0; j < 4; j++) {
		nvm_offset = FUNC1(j);
		ret_val = FUNC2(hw, nvm_offset);
		if (ret_val != E1000_SUCCESS)
			goto out;
	}

out:
	return ret_val;
}