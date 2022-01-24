#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct bwn_nphy_txgains {int dummy; } ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int FUNC0 (struct bwn_mac*,struct bwn_nphy_txgains,scalar_t__,int) ; 
 int FUNC1 (struct bwn_mac*,struct bwn_nphy_txgains,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct bwn_mac *mac,
			struct bwn_nphy_txgains target, uint8_t type, bool debug)
{
	if (mac->mac_phy.rev >= 7)
		type = 0;

	if (mac->mac_phy.rev >= 3)
		return FUNC1(mac, target, type, debug);
	else
		return FUNC0(mac, target, type, debug);
}