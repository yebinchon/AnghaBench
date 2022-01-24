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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_DMACR ; 
 int /*<<< orphan*/  IXGBE_DMACR_DMAC_EN ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 

s32 FUNC4(struct ixgbe_hw *hw)
{
	u32 reg;

	FUNC0("ixgbe_dmac_update_tcs_X550");

	/* Disable DMA coalescing before configuring */
	reg = FUNC1(hw, IXGBE_DMACR);
	reg &= ~IXGBE_DMACR_DMAC_EN;
	FUNC2(hw, IXGBE_DMACR, reg);

	FUNC3(hw);

	/* Enable DMA coalescing after configuration */
	reg = FUNC1(hw, IXGBE_DMACR);
	reg |= IXGBE_DMACR_DMAC_EN;
	FUNC2(hw, IXGBE_DMACR, reg);

	return IXGBE_SUCCESS;
}