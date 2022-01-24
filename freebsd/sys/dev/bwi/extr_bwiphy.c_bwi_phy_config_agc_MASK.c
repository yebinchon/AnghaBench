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
struct bwi_phy {int phy_rev; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct bwi_mac *mac)
{
	struct bwi_phy *phy = &mac->mac_phy;
	uint16_t ofs;

	ofs = phy->phy_rev == 1 ? 0x4c00 : 0;

	FUNC4(mac, ofs, 0xfe);
	FUNC4(mac, ofs + 1, 0xd);
	FUNC4(mac, ofs + 2, 0x13);
	FUNC4(mac, ofs + 3, 0x19);

	if (phy->phy_rev == 1) {
		FUNC4(mac, 0x1800, 0x2710);
		FUNC4(mac, 0x1801, 0x9b83);
		FUNC4(mac, 0x1802, 0x9b83);
		FUNC4(mac, 0x1803, 0xf8d);
		FUNC2(mac, 0x455, 0x4);
	}

	FUNC1(mac, 0x4a5, 0xff, 0x5700);
	FUNC1(mac, 0x41a, 0xff80, 0xf);
	FUNC1(mac, 0x41a, 0xc07f, 0x2b80);
	FUNC1(mac, 0x48c, 0xf0ff, 0x300);

	FUNC3(mac, 0x7a, 0x8);

	FUNC1(mac, 0x4a0, 0xfff0, 0x8);
	FUNC1(mac, 0x4a1, 0xf0ff, 0x600);
	FUNC1(mac, 0x4a2, 0xf0ff, 0x700);
	FUNC1(mac, 0x4a0, 0xf0ff, 0x100);

	if (phy->phy_rev == 1)
		FUNC1(mac, 0x4a2, 0xfff0, 0x7);

	FUNC1(mac, 0x488, 0xff00, 0x1c);
	FUNC1(mac, 0x488, 0xc0ff, 0x200);
	FUNC1(mac, 0x496, 0xff00, 0x1c);
	FUNC1(mac, 0x489, 0xff00, 0x20);
	FUNC1(mac, 0x489, 0xc0ff, 0x200);
	FUNC1(mac, 0x482, 0xff00, 0x2e);
	FUNC1(mac, 0x496, 0xff, 0x1a00);
	FUNC1(mac, 0x481, 0xff00, 0x28);
	FUNC1(mac, 0x481, 0xff, 0x2c00);

	if (phy->phy_rev == 1) {
		FUNC2(mac, 0x430, 0x92b);
		FUNC1(mac, 0x41b, 0xffe1, 0x2);
	} else {
		FUNC0(mac, 0x41b, 0x1e);
		FUNC2(mac, 0x41f, 0x287a);
		FUNC1(mac, 0x420, 0xfff0, 0x4);

		if (phy->phy_rev >= 6) {
			FUNC2(mac, 0x422, 0x287a);
			FUNC1(mac, 0x420, 0xfff, 0x3000);
		}
	}

	FUNC1(mac, 0x4a8, 0x8080, 0x7874);
	FUNC2(mac, 0x48e, 0x1c00);

	if (phy->phy_rev == 1) {
		FUNC1(mac, 0x4ab, 0xf0ff, 0x600);
		FUNC2(mac, 0x48b, 0x5e);
		FUNC1(mac, 0x48c, 0xff00, 0x1e);
		FUNC2(mac, 0x48d, 0x2);
	}

	FUNC4(mac, ofs + 0x800, 0);
	FUNC4(mac, ofs + 0x801, 7);
	FUNC4(mac, ofs + 0x802, 16);
	FUNC4(mac, ofs + 0x803, 28);

	if (phy->phy_rev >= 6) {
		FUNC0(mac, 0x426, 0x3);
		FUNC0(mac, 0x426, 0x1000);
	}
}