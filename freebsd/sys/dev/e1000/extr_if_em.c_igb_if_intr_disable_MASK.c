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
struct adapter {scalar_t__ intr_type; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EIAC ; 
 int /*<<< orphan*/  E1000_EIMC ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 scalar_t__ FUNC2 (int) ; 
 struct adapter* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC3(ctx);
	struct e1000_hw *hw = &adapter->hw;

	if (FUNC2(adapter->intr_type == IFLIB_INTR_MSIX)) {
		FUNC1(hw, E1000_EIMC, 0xffffffff);
		FUNC1(hw, E1000_EIAC, 0);
	}
	FUNC1(hw, E1000_IMC, 0xffffffff);
	FUNC0(hw);
}