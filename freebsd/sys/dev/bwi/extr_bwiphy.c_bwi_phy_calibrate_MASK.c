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
struct bwi_phy {int phy_flags; scalar_t__ phy_mode; int phy_rev; } ;
struct bwi_mac {int /*<<< orphan*/  mac_sc; struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_MAC_STATUS ; 
 int BWI_PHY_F_CALIBRATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*) ; 

int
FUNC3(struct bwi_mac *mac)
{
	struct bwi_phy *phy = &mac->mac_phy;

	/* Dummy read */
	FUNC0(mac->mac_sc, BWI_MAC_STATUS);

	/* Don't re-init */
	if (phy->phy_flags & BWI_PHY_F_CALIBRATED)
		return 0;

	if (phy->phy_mode == IEEE80211_MODE_11G && phy->phy_rev == 1) {
		FUNC1(mac, 0);
		FUNC2(mac);
		FUNC1(mac, 1);
	}

	phy->phy_flags |= BWI_PHY_F_CALIBRATED;
	return 0;
}