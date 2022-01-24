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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i40e_hw*,scalar_t__) ; 

void
FUNC1(struct i40e_hw *hw, u32 reg,
	bool offset_loaded, u64 *offset, u64 *stat)
{
	u32 new_data;

	new_data = FUNC0(hw, reg);
	if (!offset_loaded)
		*offset = new_data;
	if (new_data >= *offset)
		*stat = (u32)(new_data - *offset);
	else
		*stat = (u32)((new_data + ((u64)1 << 32)) - *offset);
}