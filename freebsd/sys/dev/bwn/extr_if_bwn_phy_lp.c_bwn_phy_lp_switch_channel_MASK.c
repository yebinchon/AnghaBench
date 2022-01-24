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
typedef  int /*<<< orphan*/  uint32_t ;
struct bwn_phy_lp {int /*<<< orphan*/  plp_chan; } ;
struct bwn_phy {int rf_ver; struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct bwn_mac *mac, uint32_t chan)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_lp *plp = &phy->phy_lp;
	int error;

	if (phy->rf_ver == 0x2063) {
		error = FUNC2(mac, chan);
		if (error)
			return (error);
	} else {
		error = FUNC1(mac, chan);
		if (error)
			return (error);
		FUNC3(mac, chan);
		FUNC4(mac, FUNC5(chan, 0));
	}

	plp->plp_chan = chan;
	FUNC0(mac, BWN_CHANNEL, chan);
	return (0);
}