#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct adapter {scalar_t__ intr_type; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/  IXGBE_EIAC ; 
 int /*<<< orphan*/  IXGBE_EIMC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct adapter* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

__attribute__((used)) static void
FUNC4(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC3(ctx);

	if (adapter->intr_type == IFLIB_INTR_MSIX)
		FUNC2(&adapter->hw, IXGBE_EIAC, 0);
	if (adapter->hw.mac.type == ixgbe_mac_82598EB) {
		FUNC2(&adapter->hw, IXGBE_EIMC, ~0);
	} else {
		FUNC2(&adapter->hw, IXGBE_EIMC, 0xFFFF0000);
		FUNC2(&adapter->hw, FUNC0(0), ~0);
		FUNC2(&adapter->hw, FUNC0(1), ~0);
	}
	FUNC1(&adapter->hw);

}