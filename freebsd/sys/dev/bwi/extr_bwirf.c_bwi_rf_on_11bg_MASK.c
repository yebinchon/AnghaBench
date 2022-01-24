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
struct bwi_phy {int phy_flags; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int BWI_PHY_F_LINKED ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bwi_mac *mac)
{
	struct bwi_phy *phy = &mac->mac_phy;

	FUNC0(mac, 0x15, 0x8000);
	FUNC0(mac, 0x15, 0xcc00);
	if (phy->phy_flags & BWI_PHY_F_LINKED)
		FUNC0(mac, 0x15, 0xc0);
	else
		FUNC0(mac, 0x15, 0);

	FUNC1(mac, 6 /* XXX */, 1);
}