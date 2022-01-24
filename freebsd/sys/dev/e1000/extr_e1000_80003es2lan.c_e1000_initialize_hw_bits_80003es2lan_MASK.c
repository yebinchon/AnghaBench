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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_RFCTL ; 
 int E1000_RFCTL_IPV6_EX_DIS ; 
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_MULR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ e1000_media_type_copper ; 

__attribute__((used)) static void FUNC5(struct e1000_hw *hw)
{
	u32 reg;

	FUNC0("e1000_initialize_hw_bits_80003es2lan");

	/* Transmit Descriptor Control 0 */
	reg = FUNC1(hw, FUNC3(0));
	reg |= (1 << 22);
	FUNC4(hw, FUNC3(0), reg);

	/* Transmit Descriptor Control 1 */
	reg = FUNC1(hw, FUNC3(1));
	reg |= (1 << 22);
	FUNC4(hw, FUNC3(1), reg);

	/* Transmit Arbitration Control 0 */
	reg = FUNC1(hw, FUNC2(0));
	reg &= ~(0xF << 27); /* 30:27 */
	if (hw->phy.media_type != e1000_media_type_copper)
		reg &= ~(1 << 20);
	FUNC4(hw, FUNC2(0), reg);

	/* Transmit Arbitration Control 1 */
	reg = FUNC1(hw, FUNC2(1));
	if (FUNC1(hw, E1000_TCTL) & E1000_TCTL_MULR)
		reg &= ~(1 << 28);
	else
		reg |= (1 << 28);
	FUNC4(hw, FUNC2(1), reg);

	/* Disable IPv6 extension header parsing because some malformed
	 * IPv6 headers can hang the Rx.
	 */
	reg = FUNC1(hw, E1000_RFCTL);
	reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
	FUNC4(hw, E1000_RFCTL, reg);

	return;
}