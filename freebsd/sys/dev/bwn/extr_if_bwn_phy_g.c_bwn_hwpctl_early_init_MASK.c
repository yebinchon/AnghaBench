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
struct bwn_phy {int rf_ver; int rf_rev; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;

	if (!FUNC4(mac)) {
		FUNC3(mac, 0x047a, 0xc111);
		return;
	}

	FUNC0(mac, 0x0036, 0xfeff);
	FUNC3(mac, 0x002f, 0x0202);
	FUNC1(mac, 0x047c, 0x0002);
	FUNC1(mac, 0x047a, 0xf000);
	if (phy->rf_ver == 0x2050 && phy->rf_rev == 8) {
		FUNC2(mac, 0x047a, 0xff0f, 0x0010);
		FUNC1(mac, 0x005d, 0x8000);
		FUNC2(mac, 0x004e, 0xffc0, 0x0010);
		FUNC3(mac, 0x002e, 0xc07f);
		FUNC1(mac, 0x0036, 0x0400);
	} else {
		FUNC1(mac, 0x0036, 0x0200);
		FUNC1(mac, 0x0036, 0x0400);
		FUNC0(mac, 0x005d, 0x7fff);
		FUNC0(mac, 0x004f, 0xfffe);
		FUNC2(mac, 0x004e, 0xffc0, 0x0010);
		FUNC3(mac, 0x002e, 0xc07f);
		FUNC2(mac, 0x047a, 0xff0f, 0x0010);
	}
}