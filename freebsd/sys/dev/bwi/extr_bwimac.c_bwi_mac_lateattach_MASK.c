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
struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {int mac_rev; int /*<<< orphan*/  mac_regwin; int /*<<< orphan*/  mac_sc; TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_BBP_ATTEN_MAGIC ; 
 int /*<<< orphan*/  BWI_STATE_HI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_MODE_11A ; 
 int FUNC2 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int) ; 
 int FUNC4 (struct bwi_mac*) ; 
 int FUNC5 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bwi_mac*) ; 
 int FUNC8 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*) ; 

int
FUNC10(struct bwi_mac *mac)
{
	int error;

	if (mac->mac_rev >= 5)
		FUNC0(mac->mac_sc, BWI_STATE_HI); /* dummy read */

	FUNC3(mac, 1);

	error = FUNC5(mac);
	if (error)
		return error;

	error = FUNC7(mac);
	if (error)
		return error;

	/* Link 11B/G PHY, unlink 11A PHY */
	if (mac->mac_phy.phy_mode == IEEE80211_MODE_11A)
		FUNC3(mac, 0);
	else
		FUNC3(mac, 1);

	error = FUNC4(mac);
	if (error)
		return error;

	error = FUNC2(mac);
	if (error)
		return error;

	error = FUNC8(mac);
	if (error)
		return error;

	FUNC9(mac);
	FUNC1(mac->mac_sc, BWI_BBP_ATTEN, BWI_BBP_ATTEN_MAGIC);
	FUNC6(mac->mac_sc, &mac->mac_regwin, 0);

	return 0;
}