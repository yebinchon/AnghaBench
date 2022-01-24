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
struct bwi_phy {int phy_version; } ;
struct bwi_mac {int /*<<< orphan*/  mac_sc; struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_PHYR_BBP_ATTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void
FUNC4(struct bwi_mac *mac, uint16_t bbp_atten)
{
	struct bwi_phy *phy = &mac->mac_phy;
	uint16_t mask = FUNC2(3, 0);

	if (phy->phy_version == 0) {
		FUNC0(mac->mac_sc, BWI_BBP_ATTEN, ~mask,
				   FUNC3(bbp_atten, mask));
	} else {
		if (phy->phy_version > 1)
			mask <<= 2;
		else
			mask <<= 3;
		FUNC1(mac, BWI_PHYR_BBP_ATTEN, ~mask,
				 FUNC3(bbp_atten, mask));
	}
}