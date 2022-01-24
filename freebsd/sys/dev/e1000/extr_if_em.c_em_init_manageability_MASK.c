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
struct adapter {int /*<<< orphan*/  hw; scalar_t__ has_manage; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_MANC ; 
 int /*<<< orphan*/  E1000_MANC2H ; 
 int E1000_MANC_ARP_EN ; 
 int E1000_MANC_EN_MNG2HOST ; 
 int E1000_MNG2HOST_PORT_623 ; 
 int E1000_MNG2HOST_PORT_664 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct adapter *adapter)
{
	/* A shared code workaround */
#define E1000_82542_MANC2H E1000_MANC2H
	if (adapter->has_manage) {
		int manc2h = FUNC0(&adapter->hw, E1000_MANC2H);
		int manc = FUNC0(&adapter->hw, E1000_MANC);

		/* disable hardware interception of ARP */
		manc &= ~(E1000_MANC_ARP_EN);

		/* enable receiving management packets to the host */
		manc |= E1000_MANC_EN_MNG2HOST;
#define E1000_MNG2HOST_PORT_623 (1 << 5)
#define E1000_MNG2HOST_PORT_664 (1 << 6)
		manc2h |= E1000_MNG2HOST_PORT_623;
		manc2h |= E1000_MNG2HOST_PORT_664;
		FUNC1(&adapter->hw, E1000_MANC2H, manc2h);
		FUNC1(&adapter->hw, E1000_MANC, manc);
	}
}