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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SWSM ; 
 int IXGBE_SWSM_SMBI ; 
 int IXGBE_SWSM_SWESMBI ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_hw *hw)
{
	u32 swsm;

	FUNC0("ixgbe_release_eeprom_semaphore");

	swsm = FUNC1(hw, IXGBE_SWSM);

	/* Release both semaphores by writing 0 to the bits SWESMBI and SMBI */
	swsm &= ~(IXGBE_SWSM_SWESMBI | IXGBE_SWSM_SMBI);
	FUNC3(hw, IXGBE_SWSM, swsm);
	FUNC2(hw);
}