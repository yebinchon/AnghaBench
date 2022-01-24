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
typedef  int /*<<< orphan*/  u32 ;
struct rx_ring {int /*<<< orphan*/  vtag_strip; int /*<<< orphan*/  me; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ifnet {int if_capenable; } ;
struct adapter {scalar_t__ num_vlans; int num_rx_queues; int /*<<< orphan*/ * shadow_vfta; TYPE_1__* rx_queues; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_3__ {struct rx_ring rxr; } ;

/* Variables and functions */
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RXDCTL_VME ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IXGBE_VFTA_SIZE ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL_CFIEN ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL_VFE ; 
 int /*<<< orphan*/  IXGBE_VLNCTRL_VME ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	struct ifnet	*ifp = FUNC4(ctx);
	struct adapter  *adapter = FUNC5(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	struct rx_ring  *rxr;
	int             i;
	u32             ctrl;


	/*
	 * We get here thru init_locked, meaning
	 * a soft reset, this has already cleared
	 * the VFTA and other state, so if there
	 * have been no vlan's registered do nothing.
	 */
	if (adapter->num_vlans == 0)
		return;

	/* Setup the queues for vlans */
	if (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) {
		for (i = 0; i < adapter->num_rx_queues; i++) {
			rxr = &adapter->rx_queues[i].rxr;
			/* On 82599 the VLAN enable is per/queue in RXDCTL */
			if (hw->mac.type != ixgbe_mac_82598EB) {
				ctrl = FUNC0(hw, FUNC1(rxr->me));
				ctrl |= IXGBE_RXDCTL_VME;
				FUNC3(hw, FUNC1(rxr->me), ctrl);
			}
			rxr->vtag_strip = TRUE;
		}
	}

	if ((ifp->if_capenable & IFCAP_VLAN_HWFILTER) == 0)
		return;
	/*
	 * A soft reset zero's out the VFTA, so
	 * we need to repopulate it now.
	 */
	for (i = 0; i < IXGBE_VFTA_SIZE; i++)
		if (adapter->shadow_vfta[i] != 0)
			FUNC3(hw, FUNC2(i),
			    adapter->shadow_vfta[i]);

	ctrl = FUNC0(hw, IXGBE_VLNCTRL);
	/* Enable the Filter Table if enabled */
	if (ifp->if_capenable & IFCAP_VLAN_HWFILTER) {
		ctrl &= ~IXGBE_VLNCTRL_CFIEN;
		ctrl |= IXGBE_VLNCTRL_VFE;
	}
	if (hw->mac.type == ixgbe_mac_82598EB)
		ctrl |= IXGBE_VLNCTRL_VME;
	FUNC3(hw, IXGBE_VLNCTRL, ctrl);
}