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
typedef  int /*<<< orphan*/  u32 ;
struct ifnet {int dummy; } ;
struct adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  E1000_RCTL_MPE ; 
 int /*<<< orphan*/  E1000_RCTL_SBP ; 
 int /*<<< orphan*/  E1000_RCTL_UPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_ALLMULTI ; 
 int MAX_NUM_MULTICAST_ADDRESSES ; 
 int FUNC2 (struct ifnet*) ; 
 int FUNC3 (struct ifnet*) ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC5(ctx);
	struct ifnet *ifp = FUNC4(ctx);
	u32 reg_rctl;
	int mcnt = 0;

	reg_rctl = FUNC0(&adapter->hw, E1000_RCTL);
	reg_rctl &= (~E1000_RCTL_UPE);
	if (FUNC2(ifp) & IFF_ALLMULTI)
		mcnt = MAX_NUM_MULTICAST_ADDRESSES;
	else
		mcnt = FUNC3(ifp);
	/* Don't disable if in MAX groups */
	if (mcnt < MAX_NUM_MULTICAST_ADDRESSES)
		reg_rctl &=  (~E1000_RCTL_MPE);
	reg_rctl &=  (~E1000_RCTL_SBP);
	FUNC1(&adapter->hw, E1000_RCTL, reg_rctl);
}