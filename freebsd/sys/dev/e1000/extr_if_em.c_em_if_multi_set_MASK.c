#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ifnet {int dummy; } ;
struct TYPE_9__ {int pci_cmd_word; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_10__ {scalar_t__ revision_id; TYPE_2__ bus; TYPE_1__ mac; } ;
struct adapter {TYPE_3__ hw; int /*<<< orphan*/ * mta; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int CMD_MEM_WRT_INVALIDATE ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  E1000_RCTL_MPE ; 
 int /*<<< orphan*/  E1000_RCTL_RST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_REVISION_2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_NUM_MULTICAST_ADDRESSES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ e1000_82542 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  em_copy_maddr ; 
 int FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC8 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC9(ctx);
	struct ifnet *ifp = FUNC8(ctx);
	u32 reg_rctl = 0;
	u8  *mta; /* Multicast array memory */
	int mcnt = 0;

	FUNC2("em_set_multi: begin");

	mta = adapter->mta;
	FUNC3(mta, sizeof(u8) * ETHER_ADDR_LEN * MAX_NUM_MULTICAST_ADDRESSES);

	if (adapter->hw.mac.type == e1000_82542 &&
	    adapter->hw.revision_id == E1000_REVISION_2) {
		reg_rctl = FUNC0(&adapter->hw, E1000_RCTL);
		if (adapter->hw.bus.pci_cmd_word & CMD_MEM_WRT_INVALIDATE)
			FUNC4(&adapter->hw);
		reg_rctl |= E1000_RCTL_RST;
		FUNC1(&adapter->hw, E1000_RCTL, reg_rctl);
		FUNC10(5);
	}

	mcnt = FUNC7(ifp, em_copy_maddr, mta);

	if (mcnt >= MAX_NUM_MULTICAST_ADDRESSES) {
		reg_rctl = FUNC0(&adapter->hw, E1000_RCTL);
		reg_rctl |= E1000_RCTL_MPE;
		FUNC1(&adapter->hw, E1000_RCTL, reg_rctl);
	} else
		FUNC6(&adapter->hw, mta, mcnt);

	if (adapter->hw.mac.type == e1000_82542 &&
	    adapter->hw.revision_id == E1000_REVISION_2) {
		reg_rctl = FUNC0(&adapter->hw, E1000_RCTL);
		reg_rctl &= ~E1000_RCTL_RST;
		FUNC1(&adapter->hw, E1000_RCTL, reg_rctl);
		FUNC10(5);
		if (adapter->hw.bus.pci_cmd_word & CMD_MEM_WRT_INVALIDATE)
			FUNC5(&adapter->hw);
	}
}