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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int E1000_RAH_AV ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct e1000_hw *hw, u8 *addr, u32 index)
{
	u32 rar_low, rar_high;

	FUNC0("e1000_rar_set_generic");

	/* HW expects these in little endian so we reverse the byte order
	 * from network order (big endian) to little endian
	 */
	rar_low = ((u32) addr[0] | ((u32) addr[1] << 8) |
		   ((u32) addr[2] << 16) | ((u32) addr[3] << 24));

	rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));

	/* If MAC address zero, no need to set the AV bit */
	if (rar_low || rar_high)
		rar_high |= E1000_RAH_AV;

	/* Some bridges will combine consecutive 32-bit writes into
	 * a single burst write, which will malfunction on some parts.
	 * The flushes avoid this.
	 */
	FUNC4(hw, FUNC2(index), rar_low);
	FUNC3(hw);
	FUNC4(hw, FUNC1(index), rar_high);
	FUNC3(hw);

	return E1000_SUCCESS;
}