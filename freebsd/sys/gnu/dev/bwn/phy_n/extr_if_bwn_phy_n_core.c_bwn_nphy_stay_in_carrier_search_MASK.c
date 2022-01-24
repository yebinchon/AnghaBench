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
typedef  int uint16_t ;
struct bwn_phy_n {scalar_t__ deaf_count; int const* clip_state; int /*<<< orphan*/  classifier_state; } ;
struct bwn_phy {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_CLASSCTL_WAITEDEN ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int const*) ; 

__attribute__((used)) static void FUNC4(struct bwn_mac *mac, bool enable)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = phy->phy_n;

	if (enable) {
		static const uint16_t clip[] = { 0xFFFF, 0xFFFF };
		if (nphy->deaf_count++ == 0) {
			nphy->classifier_state = FUNC0(mac, 0, 0);
			FUNC0(mac, 0x7,
					    BWN_NPHY_CLASSCTL_WAITEDEN);
			FUNC1(mac, nphy->clip_state);
			FUNC3(mac, clip);
		}
		FUNC2(mac);
	} else {
		if (--nphy->deaf_count == 0) {
			FUNC0(mac, 0x7, nphy->classifier_state);
			FUNC3(mac, nphy->clip_state);
		}
	}
}