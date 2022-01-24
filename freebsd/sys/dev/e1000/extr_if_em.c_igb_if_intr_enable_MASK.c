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
struct e1000_hw {int dummy; } ;
struct adapter {scalar_t__ intr_type; int que_mask; int link_mask; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EIAC ; 
 int /*<<< orphan*/  E1000_EIAM ; 
 int /*<<< orphan*/  E1000_EIMS ; 
 int /*<<< orphan*/  E1000_IMS ; 
 int E1000_IMS_LSC ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 int IMS_ENABLE_MASK ; 
 scalar_t__ FUNC2 (int) ; 
 struct adapter* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC3(ctx);
	struct e1000_hw *hw = &adapter->hw;
	u32 mask;

	if (FUNC2(adapter->intr_type == IFLIB_INTR_MSIX)) {
		mask = (adapter->que_mask | adapter->link_mask);
		FUNC1(hw, E1000_EIAC, mask);
		FUNC1(hw, E1000_EIAM, mask);
		FUNC1(hw, E1000_EIMS, mask);
		FUNC1(hw, E1000_IMS, E1000_IMS_LSC);
	} else
		FUNC1(hw, E1000_IMS, IMS_ENABLE_MASK);
	FUNC0(hw);
}