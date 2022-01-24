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
typedef  int uint16_t ;
struct bwi_phy {int phy_flags; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int BWI_PHY_F_LINKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int) ; 

__attribute__((used)) static uint32_t
FUNC3(struct bwi_mac *mac, uint16_t ctrl)
{
	struct bwi_phy *phy = &mac->mac_phy;
	uint32_t devi = 0;
	int i;

	if (phy->phy_flags & BWI_PHY_F_LINKED)
		ctrl <<= 8;

	for (i = 0; i < 8; ++i) {
		if (phy->phy_flags & BWI_PHY_F_LINKED) {
			FUNC2(mac, 0x15, 0xe300);
			FUNC2(mac, 0x812, ctrl | 0xb0);
			FUNC0(5);
			FUNC2(mac, 0x812, ctrl | 0xb2);
			FUNC0(2);
			FUNC2(mac, 0x812, ctrl | 0xb3);
			FUNC0(4);
			FUNC2(mac, 0x15, 0xf300);
		} else {
			FUNC2(mac, 0x15, ctrl | 0xefa0);
			FUNC0(2);
			FUNC2(mac, 0x15, ctrl | 0xefe0);
			FUNC0(4);
			FUNC2(mac, 0x15, ctrl | 0xffe0);
		}
		FUNC0(8);
		devi += FUNC1(mac, 0x2d);
	}
	return devi;
}