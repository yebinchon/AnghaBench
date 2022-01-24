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
struct ifnet {int if_flags; } ;
struct adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 int IXGBE_FCTRL_MPE ; 
 int IXGBE_FCTRL_UPE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int MAX_NUM_MULTICAST_ADDRESSES ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(if_ctx_t ctx, int flags)
{
	struct adapter *adapter = FUNC4(ctx);
	struct ifnet   *ifp = FUNC3(ctx);
	u32            rctl;
	int            mcnt = 0;

	rctl = FUNC0(&adapter->hw, IXGBE_FCTRL);
	rctl &= (~IXGBE_FCTRL_UPE);
	if (ifp->if_flags & IFF_ALLMULTI)
		mcnt = MAX_NUM_MULTICAST_ADDRESSES;
	else {
		mcnt = FUNC5(FUNC2(ifp), MAX_NUM_MULTICAST_ADDRESSES);
	}
	if (mcnt < MAX_NUM_MULTICAST_ADDRESSES)
		rctl &= (~IXGBE_FCTRL_MPE);
	FUNC1(&adapter->hw, IXGBE_FCTRL, rctl);

	if (ifp->if_flags & IFF_PROMISC) {
		rctl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
		FUNC1(&adapter->hw, IXGBE_FCTRL, rctl);
	} else if (ifp->if_flags & IFF_ALLMULTI) {
		rctl |= IXGBE_FCTRL_MPE;
		rctl &= ~IXGBE_FCTRL_UPE;
		FUNC1(&adapter->hw, IXGBE_FCTRL, rctl);
	}
	return (0);
}