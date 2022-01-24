#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* check_link ) (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* start_hw ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* reset_hw ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* set_rar ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* stop_adapter ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; int /*<<< orphan*/  addr; } ;
struct ixgbe_hw {TYPE_2__ mac; int /*<<< orphan*/  adapter_stopped; } ;
struct ifnet {int dummy; } ;
struct adapter {int /*<<< orphan*/  link_up; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  vector; int /*<<< orphan*/  rx_mbuf_sz; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_EICS_RTX_QUEUE ; 
 int /*<<< orphan*/  IXGBE_ETH_LENGTH_OF_ADDRESS ; 
 int /*<<< orphan*/  IXGBE_LINK_ITR ; 
 int IXGBE_RAH_AV ; 
 int /*<<< orphan*/  IXGBE_VTEIAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC22 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC23 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC9(ctx);
	struct ifnet    *ifp = FUNC7(ctx);
	device_t        dev = FUNC6(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	int             error = 0;

	FUNC1("ixv_if_init: begin");
	hw->adapter_stopped = FALSE;
	hw->mac.ops.stop_adapter(hw);

	/* reprogram the RAR[0] in case user changed it. */
	hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);

	/* Get the latest mac address, User can use a LAA */
	FUNC4(FUNC0(ifp), hw->mac.addr, IXGBE_ETH_LENGTH_OF_ADDRESS);
	hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, 1);

	/* Reset VF and renegotiate mailbox API version */
	hw->mac.ops.reset_hw(hw);
	hw->mac.ops.start_hw(hw);
	error = FUNC16(adapter);
	if (error) {
		FUNC5(dev,
		    "Mailbox API negotiation failed in if_init!\n");
		return;
	}

	FUNC15(ctx);

	/* Setup Multicast table */
	FUNC12(ctx);

	adapter->rx_mbuf_sz = FUNC8(ctx);

	/* Configure RX settings */
	FUNC14(ctx);

	/* Set up VLAN offload and filter */
	FUNC17(ctx);

	/* Set up MSI-X routing */
	FUNC10(adapter);

	/* Set up auto-mask */
	FUNC3(hw, IXGBE_VTEIAM, IXGBE_EICS_RTX_QUEUE);

	/* Set moderation on the Link interrupt */
	FUNC3(hw, FUNC2(adapter->vector), IXGBE_LINK_ITR);

	/* Stats init */
	FUNC13(adapter);

	/* Config/Enable Link */
	hw->mac.ops.check_link(hw, &adapter->link_speed, &adapter->link_up,
	    FALSE);

	/* And now turn on interrupts */
	FUNC11(ctx);

	return;
}