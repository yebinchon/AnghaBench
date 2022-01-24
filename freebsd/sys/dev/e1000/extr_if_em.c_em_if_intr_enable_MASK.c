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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int /*<<< orphan*/  ims; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_IMS ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_EIAC ; 
 int /*<<< orphan*/  EM_MSIX_MASK ; 
 int /*<<< orphan*/  IMS_ENABLE_MASK ; 
 scalar_t__ e1000_82574 ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC1(ctx);
	struct e1000_hw *hw = &adapter->hw;
	u32 ims_mask = IMS_ENABLE_MASK;

	if (hw->mac.type == e1000_82574) {
		FUNC0(hw, EM_EIAC, EM_MSIX_MASK);
		ims_mask |= adapter->ims;
	}
	FUNC0(hw, E1000_IMS, ims_mask);
}