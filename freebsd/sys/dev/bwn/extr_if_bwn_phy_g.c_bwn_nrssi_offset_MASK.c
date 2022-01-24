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
struct bwn_phy {int rev; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int) ; 
 int FUNC1 (struct bwn_mac*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int) ; 
 int FUNC6 (struct bwn_mac*,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int SAVE_PHY6_MAX ; 
 int SAVE_PHY_COMM_MAX ; 
 int SAVE_RF_MAX ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC13(struct bwn_mac *mac)
{
#define	SAVE_RF_MAX		2
#define	SAVE_PHY_COMM_MAX	10
#define	SAVE_PHY6_MAX		8
	static const uint16_t save_rf_regs[SAVE_RF_MAX] =
		{ 0x7a, 0x43 };
	static const uint16_t save_phy_comm_regs[SAVE_PHY_COMM_MAX] = {
		0x0001, 0x0811, 0x0812, 0x0814,
		0x0815, 0x005a, 0x0059, 0x0058,
		0x000a, 0x0003
	};
	static const uint16_t save_phy6_regs[SAVE_PHY6_MAX] = {
		0x002e, 0x002f, 0x080f, 0x0810,
		0x0801, 0x0060, 0x0014, 0x0478
	};
	struct bwn_phy *phy = &mac->mac_phy;
	int i, phy6_idx = 0;
	uint16_t save_rf[SAVE_RF_MAX];
	uint16_t save_phy_comm[SAVE_PHY_COMM_MAX];
	uint16_t save_phy6[SAVE_PHY6_MAX];
	int16_t nrssi;
	uint16_t saved = 0xffff;

	for (i = 0; i < SAVE_PHY_COMM_MAX; ++i)
		save_phy_comm[i] = FUNC1(mac, save_phy_comm_regs[i]);
	for (i = 0; i < SAVE_RF_MAX; ++i)
		save_rf[i] = FUNC6(mac, save_rf_regs[i]);

	FUNC0(mac, 0x0429, 0x7fff);
	FUNC3(mac, 0x0001, 0x3fff, 0x4000);
	FUNC2(mac, 0x0811, 0x000c);
	FUNC3(mac, 0x0812, 0xfff3, 0x0004);
	FUNC0(mac, 0x0802, ~(0x1 | 0x2));
	if (phy->rev >= 6) {
		for (i = 0; i < SAVE_PHY6_MAX; ++i)
			save_phy6[i] = FUNC1(mac, save_phy6_regs[i]);

		FUNC4(mac, 0x002e, 0);
		FUNC4(mac, 0x002f, 0);
		FUNC4(mac, 0x080f, 0);
		FUNC4(mac, 0x0810, 0);
		FUNC2(mac, 0x0478, 0x0100);
		FUNC2(mac, 0x0801, 0x0040);
		FUNC2(mac, 0x0060, 0x0040);
		FUNC2(mac, 0x0014, 0x0200);
	}
	FUNC7(mac, 0x007a, 0x0070);
	FUNC7(mac, 0x007a, 0x0080);
	FUNC10(30);

	nrssi = (int16_t) ((FUNC1(mac, 0x047f) >> 8) & 0x003f);
	if (nrssi >= 0x20)
		nrssi -= 0x40;
	if (nrssi == 31) {
		for (i = 7; i >= 4; i--) {
			FUNC9(mac, 0x007b, i);
			FUNC10(20);
			nrssi = (int16_t) ((FUNC1(mac, 0x047f) >> 8) &
			    0x003f);
			if (nrssi >= 0x20)
				nrssi -= 0x40;
			if (nrssi < 31 && saved == 0xffff)
				saved = i;
		}
		if (saved == 0xffff)
			saved = 4;
	} else {
		FUNC5(mac, 0x007a, 0x007f);
		if (phy->rev != 1) {
			FUNC2(mac, 0x0814, 0x0001);
			FUNC0(mac, 0x0815, 0xfffe);
		}
		FUNC2(mac, 0x0811, 0x000c);
		FUNC2(mac, 0x0812, 0x000c);
		FUNC2(mac, 0x0811, 0x0030);
		FUNC2(mac, 0x0812, 0x0030);
		FUNC4(mac, 0x005a, 0x0480);
		FUNC4(mac, 0x0059, 0x0810);
		FUNC4(mac, 0x0058, 0x000d);
		if (phy->rev == 0)
			FUNC4(mac, 0x0003, 0x0122);
		else
			FUNC2(mac, 0x000a, 0x2000);
		if (phy->rev != 1) {
			FUNC2(mac, 0x0814, 0x0004);
			FUNC0(mac, 0x0815, 0xfffb);
		}
		FUNC3(mac, 0x0003, 0xff9f, 0x0040);
		FUNC7(mac, 0x007a, 0x000f);
		FUNC11(mac, 3, 0, 1);
		FUNC8(mac, 0x0043, 0x00f0, 0x000f);
		FUNC10(30);
		nrssi = (int16_t) ((FUNC1(mac, 0x047f) >> 8) & 0x003f);
		if (nrssi >= 0x20)
			nrssi -= 0x40;
		if (nrssi == -32) {
			for (i = 0; i < 4; i++) {
				FUNC9(mac, 0x007b, i);
				FUNC10(20);
				nrssi = (int16_t)((FUNC1(mac,
				    0x047f) >> 8) & 0x003f);
				if (nrssi >= 0x20)
					nrssi -= 0x40;
				if (nrssi > -31 && saved == 0xffff)
					saved = i;
			}
			if (saved == 0xffff)
				saved = 3;
		} else
			saved = 0;
	}
	FUNC9(mac, 0x007b, saved);

	/*
	 * Restore saved RF/PHY registers
	 */
	if (phy->rev >= 6) {
		for (phy6_idx = 0; phy6_idx < 4; ++phy6_idx) {
			FUNC4(mac, save_phy6_regs[phy6_idx],
			    save_phy6[phy6_idx]);
		}
	}
	if (phy->rev != 1) {
		for (i = 3; i < 5; i++)
			FUNC4(mac, save_phy_comm_regs[i],
			    save_phy_comm[i]);
	}
	for (i = 5; i < SAVE_PHY_COMM_MAX; i++)
		FUNC4(mac, save_phy_comm_regs[i], save_phy_comm[i]);

	for (i = SAVE_RF_MAX - 1; i >= 0; --i)
		FUNC9(mac, save_rf_regs[i], save_rf[i]);

	FUNC4(mac, 0x0802, FUNC1(mac, 0x0802) | 0x1 | 0x2);
	FUNC2(mac, 0x0429, 0x8000);
	FUNC12(mac);
	if (phy->rev >= 6) {
		for (; phy6_idx < SAVE_PHY6_MAX; ++phy6_idx) {
			FUNC4(mac, save_phy6_regs[phy6_idx],
			    save_phy6[phy6_idx]);
		}
	}

	FUNC4(mac, save_phy_comm_regs[0], save_phy_comm[0]);
	FUNC4(mac, save_phy_comm_regs[2], save_phy_comm[2]);
	FUNC4(mac, save_phy_comm_regs[1], save_phy_comm[1]);
}