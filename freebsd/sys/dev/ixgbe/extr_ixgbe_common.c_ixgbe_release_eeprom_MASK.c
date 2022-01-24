#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  semaphore_delay; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ eeprom; TYPE_3__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_EEC_CS ; 
 int /*<<< orphan*/  IXGBE_EEC_REQ ; 
 int /*<<< orphan*/  IXGBE_EEC_SK ; 
 int /*<<< orphan*/  IXGBE_GSSR_EEP_SM ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_hw *hw)
{
	u32 eec;

	FUNC0("ixgbe_release_eeprom");

	eec = FUNC2(hw, FUNC1(hw));

	eec |= IXGBE_EEC_CS;  /* Pull CS high */
	eec &= ~IXGBE_EEC_SK; /* Lower SCK */

	FUNC4(hw, FUNC1(hw), eec);
	FUNC3(hw);

	FUNC7(1);

	/* Stop requesting EEPROM access */
	eec &= ~IXGBE_EEC_REQ;
	FUNC4(hw, FUNC1(hw), eec);

	hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);

	/* Delay before attempt to obtain semaphore again to allow FW access */
	FUNC5(hw->eeprom.semaphore_delay);
}