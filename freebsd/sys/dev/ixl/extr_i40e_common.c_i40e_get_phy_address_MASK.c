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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ mdio_port_num; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

u8 FUNC2(struct i40e_hw *hw, u8 dev_num)
{
	u8 port_num = (u8)hw->func_caps.mdio_port_num;
	u32 reg_val = FUNC1(hw, FUNC0(port_num));

	return (u8)(reg_val >> ((dev_num + 1) * 5)) & 0x1f;
}