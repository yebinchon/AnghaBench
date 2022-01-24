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
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_EEC_CS ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_hw *hw)
{
	u32 eec;

	FUNC0("ixgbe_standby_eeprom");

	eec = FUNC2(hw, FUNC1(hw));

	/* Toggle CS to flush commands */
	eec |= IXGBE_EEC_CS;
	FUNC4(hw, FUNC1(hw), eec);
	FUNC3(hw);
	FUNC5(1);
	eec &= ~IXGBE_EEC_CS;
	FUNC4(hw, FUNC1(hw), eec);
	FUNC3(hw);
	FUNC5(1);
}