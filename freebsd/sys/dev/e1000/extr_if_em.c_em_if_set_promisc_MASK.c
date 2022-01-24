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
struct adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_MPE ; 
 int E1000_RCTL_SBP ; 
 int E1000_RCTL_UPE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ em_debug_sbp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(if_ctx_t ctx, int flags)
{
	struct adapter *adapter = FUNC3(ctx);
	u32 reg_rctl;

	FUNC2(ctx);

	reg_rctl = FUNC0(&adapter->hw, E1000_RCTL);

	if (flags & IFF_PROMISC) {
		reg_rctl |= (E1000_RCTL_UPE | E1000_RCTL_MPE);
		/* Turn this on if you want to see bad packets */
		if (em_debug_sbp)
			reg_rctl |= E1000_RCTL_SBP;
		FUNC1(&adapter->hw, E1000_RCTL, reg_rctl);
	} else if (flags & IFF_ALLMULTI) {
		reg_rctl |= E1000_RCTL_MPE;
		reg_rctl &= ~E1000_RCTL_UPE;
		FUNC1(&adapter->hw, E1000_RCTL, reg_rctl);
	}
	return (0);
}