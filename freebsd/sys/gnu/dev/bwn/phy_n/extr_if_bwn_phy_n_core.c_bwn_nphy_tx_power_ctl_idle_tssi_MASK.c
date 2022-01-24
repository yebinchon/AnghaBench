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
typedef  int uint32_t ;
struct bwn_phy_n {TYPE_1__* pwr_ctl_info; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int idle_tssi_5g; int idle_tssi_2g; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  N_RSSI_TSSI_2G ; 
 int /*<<< orphan*/  N_RSSI_W1 ; 
 scalar_t__ FUNC1 (struct bwn_mac*) ; 
 scalar_t__ FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC11(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

	uint32_t tmp;
	int32_t rssi[4] = { };

	if (FUNC1(mac))
		return;

	if (FUNC2(mac))
		FUNC3(mac);

	if (phy->rev >= 19)
		FUNC6(mac, 0x1000, 0, 3, false, 0);
	else if (phy->rev >= 7)
		FUNC7(mac, 0x1000, 0, 3, false, 0);
	else if (phy->rev >= 3)
		FUNC5(mac, 0x2000, 0, 3, false);

	FUNC9(mac);
	FUNC10(mac, 4000, 0, false, false, false);
	FUNC0(20);
	tmp = FUNC4(mac, N_RSSI_TSSI_2G, rssi, 1);
	FUNC9(mac);

	FUNC8(mac, 0, N_RSSI_W1);

	if (phy->rev >= 19)
		FUNC6(mac, 0x1000, 0, 3, true, 0);
	else if (phy->rev >= 7)
		FUNC7(mac, 0x1000, 0, 3, true, 0);
	else if (phy->rev >= 3)
		FUNC5(mac, 0x2000, 0, 3, true);

	if (phy->rev >= 19) {
		/* TODO */
		return;
	} else if (phy->rev >= 3) {
		nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 24) & 0xFF;
		nphy->pwr_ctl_info[1].idle_tssi_5g = (tmp >> 8) & 0xFF;
	} else {
		nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 16) & 0xFF;
		nphy->pwr_ctl_info[1].idle_tssi_5g = tmp & 0xFF;
	}
	nphy->pwr_ctl_info[0].idle_tssi_2g = (tmp >> 24) & 0xFF;
	nphy->pwr_ctl_info[1].idle_tssi_2g = (tmp >> 8) & 0xFF;
}