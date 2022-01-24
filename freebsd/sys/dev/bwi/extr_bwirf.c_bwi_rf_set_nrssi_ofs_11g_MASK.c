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
struct bwi_phy {int phy_rev; scalar_t__ phy_version; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;
struct bwi_gains {int tbl_gain1; int phy_gain; scalar_t__ tbl_gain2; } ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  gains ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int,int) ; 
 int FUNC3 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int,int) ; 
 int FUNC8 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*,int const,int) ; 
 int SAVE_PHY6_MAX ; 
 int SAVE_PHY_COMM_MAX ; 
 int SAVE_RF_MAX ; 
 int FUNC11 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwi_mac*,struct bwi_gains*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwi_gains*,int) ; 

__attribute__((used)) static void
FUNC14(struct bwi_mac *mac)
{
#define SAVE_RF_MAX		2
#define SAVE_PHY_COMM_MAX	10
#define SAVE_PHY6_MAX		8

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

	struct bwi_phy *phy = &mac->mac_phy;
	uint16_t save_rf[SAVE_RF_MAX];
	uint16_t save_phy_comm[SAVE_PHY_COMM_MAX];
	uint16_t save_phy6[SAVE_PHY6_MAX];
	uint16_t rf7b = 0xffff;
	int16_t nrssi;
	int i, phy6_idx = 0;

	for (i = 0; i < SAVE_PHY_COMM_MAX; ++i)
		save_phy_comm[i] = FUNC3(mac, save_phy_comm_regs[i]);
	for (i = 0; i < SAVE_RF_MAX; ++i)
		save_rf[i] = FUNC8(mac, save_rf_regs[i]);

	FUNC1(mac, 0x429, 0x8000);
	FUNC2(mac, 0x1, 0x3fff, 0x4000);
	FUNC4(mac, 0x811, 0xc);
	FUNC2(mac, 0x812, 0xfff3, 0x4);
	FUNC1(mac, 0x802, 0x3);

	if (phy->phy_rev >= 6) {
		for (i = 0; i < SAVE_PHY6_MAX; ++i)
			save_phy6[i] = FUNC3(mac, save_phy6_regs[i]);

		FUNC5(mac, 0x2e, 0);
		FUNC5(mac, 0x2f, 0);
		FUNC5(mac, 0x80f, 0);
		FUNC5(mac, 0x810, 0);
		FUNC4(mac, 0x478, 0x100);
		FUNC4(mac, 0x801, 0x40);
		FUNC4(mac, 0x60, 0x40);
		FUNC4(mac, 0x14, 0x200);
	}

	FUNC9(mac, 0x7a, 0x70);
	FUNC9(mac, 0x7a, 0x80);

	FUNC0(30);

	nrssi = FUNC11(mac);
	if (nrssi == 31) {
		for (i = 7; i >= 4; --i) {
			FUNC10(mac, 0x7b, i);
			FUNC0(20);
			nrssi = FUNC11(mac);
			if (nrssi < 31 && rf7b == 0xffff)
				rf7b = i;
		}
		if (rf7b == 0xffff)
			rf7b = 4;
	} else {
		struct bwi_gains gains;

		FUNC6(mac, 0x7a, 0xff80);

		FUNC4(mac, 0x814, 0x1);
		FUNC1(mac, 0x815, 0x1);
		FUNC4(mac, 0x811, 0xc);
		FUNC4(mac, 0x812, 0xc);
		FUNC4(mac, 0x811, 0x30);
		FUNC4(mac, 0x812, 0x30);
		FUNC5(mac, 0x5a, 0x480);
		FUNC5(mac, 0x59, 0x810);
		FUNC5(mac, 0x58, 0xd);
		if (phy->phy_version == 0)
			FUNC5(mac, 0x3, 0x122);
		else
			FUNC4(mac, 0xa, 0x2000);
		FUNC4(mac, 0x814, 0x4);
		FUNC1(mac, 0x815, 0x4);
		FUNC2(mac, 0x3, 0xff9f, 0x40);
		FUNC9(mac, 0x7a, 0xf);

		FUNC13(&gains, sizeof(gains));
		gains.tbl_gain1 = 3;
		gains.tbl_gain2 = 0;
		gains.phy_gain = 1;
		FUNC12(mac, &gains);

		FUNC7(mac, 0x43, 0xf0, 0xf);
		FUNC0(30);

		nrssi = FUNC11(mac);
		if (nrssi == -32) {
			for (i = 0; i < 4; ++i) {
				FUNC10(mac, 0x7b, i);
				FUNC0(20);
				nrssi = FUNC11(mac);
				if (nrssi > -31 && rf7b == 0xffff)
					rf7b = i;
			}
			if (rf7b == 0xffff)
				rf7b = 3;
		} else {
			rf7b = 0;
		}
	}
	FUNC10(mac, 0x7b, rf7b);

	/*
	 * Restore saved RF/PHY registers
	 */
	if (phy->phy_rev >= 6) {
		for (phy6_idx = 0; phy6_idx < 4; ++phy6_idx) {
			FUNC5(mac, save_phy6_regs[phy6_idx],
				  save_phy6[phy6_idx]);
		}
	}

	/* Saved PHY registers 0, 1, 2 are handled later */
	for (i = 3; i < SAVE_PHY_COMM_MAX; ++i)
		FUNC5(mac, save_phy_comm_regs[i], save_phy_comm[i]);

	for (i = SAVE_RF_MAX - 1; i >= 0; --i)
		FUNC10(mac, save_rf_regs[i], save_rf[i]);

	FUNC4(mac, 0x802, 0x3);
	FUNC4(mac, 0x429, 0x8000);

	FUNC12(mac, NULL);

	if (phy->phy_rev >= 6) {
		for (; phy6_idx < SAVE_PHY6_MAX; ++phy6_idx) {
			FUNC5(mac, save_phy6_regs[phy6_idx],
				  save_phy6[phy6_idx]);
		}
	}

	FUNC5(mac, save_phy_comm_regs[0], save_phy_comm[0]);
	FUNC5(mac, save_phy_comm_regs[2], save_phy_comm[2]);
	FUNC5(mac, save_phy_comm_regs[1], save_phy_comm[1]);

#undef SAVE_RF_MAX
#undef SAVE_PHY_COMM_MAX
#undef SAVE_PHY6_MAX
}