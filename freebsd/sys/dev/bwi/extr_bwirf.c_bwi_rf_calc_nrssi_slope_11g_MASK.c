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
struct bwi_softc {int dummy; } ;
struct bwi_rf {int rf_rev; int rf_nrssi_slope; int* rf_nrssi; int /*<<< orphan*/  rf_curchan; } ;
struct bwi_phy {int phy_rev; int phy_version; } ;
struct bwi_mac {struct bwi_rf mac_rf; struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;
struct bwi_gains {int tbl_gain1; int tbl_gain2; int phy_gain; } ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  gains ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_RF_ANTDIV ; 
 int /*<<< orphan*/  BWI_RF_CHAN_EX ; 
 int FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int,int) ; 
 int FUNC6 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*,int,int,int) ; 
 int FUNC11 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC12 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bwi_mac*,int const,int) ; 
 int SAVE_PHY3_MAX ; 
 int SAVE_PHY_COMM_MAX ; 
 int SAVE_RF_MAX ; 
 int FUNC14 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC16 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC17 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC18 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct bwi_mac*,struct bwi_gains*) ; 
 int /*<<< orphan*/  FUNC20 (struct bwi_gains*,int) ; 

__attribute__((used)) static void
FUNC21(struct bwi_mac *mac)
{
#define SAVE_RF_MAX		3
#define SAVE_PHY_COMM_MAX	4
#define SAVE_PHY3_MAX		8

	static const uint16_t save_rf_regs[SAVE_RF_MAX] =
	{ 0x7a, 0x52, 0x43 };
	static const uint16_t save_phy_comm_regs[SAVE_PHY_COMM_MAX] =
	{ 0x15, 0x5a, 0x59, 0x58 };
	static const uint16_t save_phy3_regs[SAVE_PHY3_MAX] = {
		0x002e, 0x002f, 0x080f, 0x0810,
		0x0801, 0x0060, 0x0014, 0x0478
	};

	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_phy *phy = &mac->mac_phy;
	struct bwi_rf *rf = &mac->mac_rf;
	uint16_t save_rf[SAVE_RF_MAX];
	uint16_t save_phy_comm[SAVE_PHY_COMM_MAX];
	uint16_t save_phy3[SAVE_PHY3_MAX];
	uint16_t ant_div, bbp_atten, chan_ex;
	struct bwi_gains gains;
	int16_t nrssi[2];
	int i, phy3_idx = 0;

	if (rf->rf_rev >= 9)
		return;
	else if (rf->rf_rev == 8)
		FUNC16(mac);

	FUNC4(mac, 0x429, 0x8000);
	FUNC4(mac, 0x802, 0x3);

	/*
	 * Save RF/PHY registers for later restoration
	 */
	ant_div = FUNC0(sc, BWI_RF_ANTDIV);
	FUNC1(sc, BWI_RF_ANTDIV, 0x8000);

	for (i = 0; i < SAVE_RF_MAX; ++i)
		save_rf[i] = FUNC11(mac, save_rf_regs[i]);
	for (i = 0; i < SAVE_PHY_COMM_MAX; ++i)
		save_phy_comm[i] = FUNC6(mac, save_phy_comm_regs[i]);

	bbp_atten = FUNC0(sc, BWI_BBP_ATTEN);
	chan_ex = FUNC0(sc, BWI_RF_CHAN_EX);

	if (phy->phy_rev >= 3) {
		for (i = 0; i < SAVE_PHY3_MAX; ++i)
			save_phy3[i] = FUNC6(mac, save_phy3_regs[i]);

		FUNC8(mac, 0x2e, 0);
		FUNC8(mac, 0x810, 0);

		if (phy->phy_rev == 4 || phy->phy_rev == 6 ||
		    phy->phy_rev == 7) {
			FUNC7(mac, 0x478, 0x100);
			FUNC7(mac, 0x810, 0x40);
		} else if (phy->phy_rev == 3 || phy->phy_rev == 5) {
			FUNC4(mac, 0x810, 0x40);
		}

		FUNC7(mac, 0x60, 0x40);
		FUNC7(mac, 0x14, 0x200);
	}

	/*
	 * Calculate nrssi0
	 */
	FUNC12(mac, 0x7a, 0x70);

	FUNC20(&gains, sizeof(gains));
	gains.tbl_gain1 = 0;
	gains.tbl_gain2 = 8;
	gains.phy_gain = 0;
	FUNC19(mac, &gains);

	FUNC9(mac, 0x7a, 0xff08);
	if (phy->phy_rev >= 2) {
		FUNC5(mac, 0x811, 0xffcf, 0x30);
		FUNC5(mac, 0x812, 0xffcf, 0x10);
	}

	FUNC12(mac, 0x7a, 0x80);
	FUNC3(20);
	nrssi[0] = FUNC14(mac);

	/*
	 * Calculate nrssi1
	 */
	FUNC9(mac, 0x7a, 0xff80);
	if (phy->phy_version >= 2)
		FUNC5(mac, 0x3, 0xff9f, 0x40);
	FUNC1(sc, BWI_RF_CHAN_EX, 0x2000);

	FUNC12(mac, 0x7a, 0xf);
	FUNC8(mac, 0x15, 0xf330);
	if (phy->phy_rev >= 2) {
		FUNC5(mac, 0x812, 0xffcf, 0x20);
		FUNC5(mac, 0x811, 0xffcf, 0x20);
	}

	FUNC20(&gains, sizeof(gains));
	gains.tbl_gain1 = 3;
	gains.tbl_gain2 = 0;
	gains.phy_gain = 1;
	FUNC19(mac, &gains);

	if (rf->rf_rev == 8) {
		FUNC13(mac, 0x43, 0x1f);
	} else {
		FUNC10(mac, 0x52, 0xff0f, 0x60);
		FUNC10(mac, 0x43, 0xfff0, 0x9);
	}
	FUNC8(mac, 0x5a, 0x480);
	FUNC8(mac, 0x59, 0x810);
	FUNC8(mac, 0x58, 0xd);
	FUNC3(20);

	nrssi[1] = FUNC14(mac);

	/*
	 * Install calculated narrow RSSI values
	 */
	if (nrssi[1] == nrssi[0])
		rf->rf_nrssi_slope = 0x10000;
	else
		rf->rf_nrssi_slope = 0x400000 / (nrssi[0] - nrssi[1]);
	if (nrssi[0] >= -4) {
		rf->rf_nrssi[0] = nrssi[1];
		rf->rf_nrssi[1] = nrssi[0];
	}

	/*
	 * Restore saved RF/PHY registers
	 */
	if (phy->phy_rev >= 3) {
		for (phy3_idx = 0; phy3_idx < 4; ++phy3_idx) {
			FUNC8(mac, save_phy3_regs[phy3_idx],
				  save_phy3[phy3_idx]);
		}
	}
	if (phy->phy_rev >= 2) {
		FUNC4(mac, 0x812, 0x30);
		FUNC4(mac, 0x811, 0x30);
	}

	for (i = 0; i < SAVE_RF_MAX; ++i)
		FUNC13(mac, save_rf_regs[i], save_rf[i]);

	FUNC2(sc, BWI_RF_ANTDIV, ant_div);
	FUNC2(sc, BWI_BBP_ATTEN, bbp_atten);
	FUNC2(sc, BWI_RF_CHAN_EX, chan_ex);

	for (i = 0; i < SAVE_PHY_COMM_MAX; ++i)
		FUNC8(mac, save_phy_comm_regs[i], save_phy_comm[i]);

	FUNC18(mac, rf->rf_curchan);
	FUNC7(mac, 0x802, 0x3);
	FUNC19(mac, NULL);
	FUNC7(mac, 0x429, 0x8000);

	if (phy->phy_rev >= 3) {
		for (; phy3_idx < SAVE_PHY3_MAX; ++phy3_idx) {
			FUNC8(mac, save_phy3_regs[phy3_idx],
				  save_phy3[phy3_idx]);
		}
	}

	FUNC15(mac);
	FUNC17(mac);

#undef SAVE_RF_MAX
#undef SAVE_PHY_COMM_MAX
#undef SAVE_PHY3_MAX
}