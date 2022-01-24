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
typedef  int /*<<< orphan*/  u32 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_SWDPIN0 ; 
 int /*<<< orphan*/  E1000_CTRL_SWDPIO0 ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	u32 ctrl = FUNC1(hw, E1000_CTRL);

	FUNC0("e1000_led_off_82542");

	ctrl &= ~E1000_CTRL_SWDPIN0;
	ctrl |= E1000_CTRL_SWDPIO0;
	FUNC2(hw, E1000_CTRL, ctrl);

	return E1000_SUCCESS;
}