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
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val;

	FUNC0("e1000_read_mac_addr_82575");

	/*
	 * If there's an alternate MAC address place it in RAR0
	 * so that it will override the Si installed default perm
	 * address.
	 */
	ret_val = FUNC1(hw);
	if (ret_val)
		goto out;

	ret_val = FUNC2(hw);

out:
	return ret_val;
}