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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ixgbe_mc_addr {int dummy; } ;
struct ifnet {int if_flags; } ;
struct adapter {int /*<<< orphan*/  hw; struct ixgbe_mc_addr* mta; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 int IXGBE_FCTRL_MPE ; 
 int IXGBE_FCTRL_UPE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int MAX_NUM_MULTICAST_ADDRESSES ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_mc_addr*,int) ; 
 int FUNC4 (struct ifnet*,int /*<<< orphan*/ ,struct adapter*) ; 
 struct ifnet* FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixgbe_mc_array_itr ; 
 int /*<<< orphan*/  ixgbe_mc_filter_apply ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(if_ctx_t ctx)
{
	struct adapter       *adapter = FUNC6(ctx);
	struct ixgbe_mc_addr *mta;
	struct ifnet         *ifp = FUNC5(ctx);
	u8                   *update_ptr;
	u32                  fctrl;
	u_int		     mcnt;

	FUNC0("ixgbe_if_multi_set: begin");

	mta = adapter->mta;
	FUNC3(mta, sizeof(*mta) * MAX_NUM_MULTICAST_ADDRESSES);

	mcnt = FUNC4(FUNC5(ctx), ixgbe_mc_filter_apply,
	    adapter);

	fctrl = FUNC1(&adapter->hw, IXGBE_FCTRL);
	fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
	if (ifp->if_flags & IFF_PROMISC)
		fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
	else if (mcnt >= MAX_NUM_MULTICAST_ADDRESSES ||
	    ifp->if_flags & IFF_ALLMULTI) {
		fctrl |= IXGBE_FCTRL_MPE;
		fctrl &= ~IXGBE_FCTRL_UPE;
	} else
		fctrl &= ~(IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);

	FUNC2(&adapter->hw, IXGBE_FCTRL, fctrl);

	if (mcnt < MAX_NUM_MULTICAST_ADDRESSES) {
		update_ptr = (u8 *)mta;
		FUNC7(&adapter->hw, update_ptr, mcnt,
		    ixgbe_mc_array_itr, TRUE);
	}

}