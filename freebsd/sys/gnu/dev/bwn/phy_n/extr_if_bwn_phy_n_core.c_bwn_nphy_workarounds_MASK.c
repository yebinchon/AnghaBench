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
struct bwn_phy_n {scalar_t__ hang_avoid; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 scalar_t__ BWN_BAND_5G ; 
 int /*<<< orphan*/  BWN_NPHY_IQFLIP ; 
 int BWN_NPHY_IQFLIP_ADC1 ; 
 int BWN_NPHY_IQFLIP_ADC2 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int) ; 
 int FUNC4 (struct bwn_mac*) ; 
 int FUNC5 (struct bwn_mac*) ; 
 int FUNC6 (struct bwn_mac*) ; 

__attribute__((used)) static int FUNC7(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = phy->phy_n;
	int error;

	if (FUNC1(mac) == BWN_BAND_5G)
		FUNC2(mac, 1, 0);
	else
		FUNC2(mac, 1, 1);

	if (nphy->hang_avoid)
		FUNC3(mac, 1);

	FUNC0(mac, BWN_NPHY_IQFLIP,
		    BWN_NPHY_IQFLIP_ADC1 | BWN_NPHY_IQFLIP_ADC2);

	/* TODO: rev19+ */
	if (mac->mac_phy.rev >= 7)
		error = FUNC6(mac);
	else if (mac->mac_phy.rev >= 3)
		error = FUNC5(mac);
	else
		error = FUNC4(mac);

	if (error)
		return (error);

	if (nphy->hang_avoid)
		FUNC3(mac, 0);

	return (0);
}