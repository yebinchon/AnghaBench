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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int rev; TYPE_1__* phy_n; } ;
struct bwn_mac {TYPE_2__ mac_phy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tx_rx_cal_phy_saveregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_AFECTL_C1 ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_C2 ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER1 ; 
 int /*<<< orphan*/  BWN_NPHY_BBCFG ; 
 int /*<<< orphan*/  BWN_NPHY_PAPD_EN0 ; 
 int /*<<< orphan*/  BWN_NPHY_PAPD_EN1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bwn_mac *mac)
{
	uint16_t *regs = mac->mac_phy.phy_n->tx_rx_cal_phy_saveregs;

	if (mac->mac_phy.rev >= 3) {
		FUNC2(mac, BWN_NPHY_AFECTL_C1, regs[0]);
		FUNC2(mac, BWN_NPHY_AFECTL_C2, regs[1]);
		FUNC2(mac, BWN_NPHY_AFECTL_OVER1, regs[2]);
		FUNC2(mac, BWN_NPHY_AFECTL_OVER, regs[3]);
		FUNC2(mac, BWN_NPHY_BBCFG, regs[4]);
		FUNC4(mac, FUNC0(8, 3), regs[5]);
		FUNC4(mac, FUNC0(8, 19), regs[6]);
		FUNC2(mac, BWN_NPHY_RFCTL_INTC1, regs[7]);
		FUNC2(mac, BWN_NPHY_RFCTL_INTC2, regs[8]);
		FUNC2(mac, BWN_NPHY_PAPD_EN0, regs[9]);
		FUNC2(mac, BWN_NPHY_PAPD_EN1, regs[10]);
		FUNC3(mac);
	} else {
		FUNC1(mac, BWN_NPHY_AFECTL_C1, 0x0FFF, regs[0]);
		FUNC1(mac, BWN_NPHY_AFECTL_C2, 0x0FFF, regs[1]);
		FUNC2(mac, BWN_NPHY_AFECTL_OVER, regs[2]);
		FUNC4(mac, FUNC0(8, 2), regs[3]);
		FUNC4(mac, FUNC0(8, 18), regs[4]);
		FUNC2(mac, BWN_NPHY_RFCTL_INTC1, regs[5]);
		FUNC2(mac, BWN_NPHY_RFCTL_INTC2, regs[6]);
	}
}