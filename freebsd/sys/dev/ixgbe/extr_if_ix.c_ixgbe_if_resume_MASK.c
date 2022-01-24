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
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
struct ifnet {int if_flags; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IXGBE_WUFC ; 
 int /*<<< orphan*/  IXGBE_WUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC6(ctx);
	device_t        dev = FUNC4(ctx);
	struct ifnet    *ifp = FUNC5(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	u32             wus;

	FUNC0("ixgbe_resume: begin");

	/* Read & clear WUS register */
	wus = FUNC1(hw, IXGBE_WUS);
	if (wus)
		FUNC3(dev, "Woken up by (WUS): %#010x\n",
		    FUNC1(hw, IXGBE_WUS));
	FUNC2(hw, IXGBE_WUS, 0xffffffff);
	/* And clear WUFC until next low-power transition */
	FUNC2(hw, IXGBE_WUFC, 0);

	/*
	 * Required after D3->D0 transition;
	 * will re-advertise all previous advertised speeds
	 */
	if (ifp->if_flags & IFF_UP)
		FUNC7(ctx);

	return (0);
}