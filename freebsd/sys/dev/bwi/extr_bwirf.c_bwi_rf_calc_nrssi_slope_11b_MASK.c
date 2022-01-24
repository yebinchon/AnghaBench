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
struct bwi_rf {int rf_nrssi_slope; int* rf_nrssi; int /*<<< orphan*/  rf_curchan; } ;
struct bwi_phy {int phy_rev; int phy_version; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_BPHY_CTRL ; 
 int /*<<< orphan*/  BWI_RF_ANTDIV ; 
 int /*<<< orphan*/  BWI_RF_CHAN_EX ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int,int) ; 
 int FUNC8 (struct bwi_mac*,int const) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwi_mac*,int const,int) ; 
 int SAVE_PHY_MAX ; 
 int SAVE_RF_MAX ; 
 int /*<<< orphan*/  FUNC11 (struct bwi_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct bwi_mac *mac)
{
#define SAVE_RF_MAX	3
#define SAVE_PHY_MAX	8

	static const uint16_t save_rf_regs[SAVE_RF_MAX] =
	{ 0x7a, 0x52, 0x43 };
	static const uint16_t save_phy_regs[SAVE_PHY_MAX] =
	{ 0x30, 0x26, 0x15, 0x2a, 0x20, 0x5a, 0x59, 0x58 };

	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_rf *rf = &mac->mac_rf;
	struct bwi_phy *phy = &mac->mac_phy;
	uint16_t save_rf[SAVE_RF_MAX];
	uint16_t save_phy[SAVE_PHY_MAX];
	uint16_t ant_div, bbp_atten, chan_ex;
	int16_t nrssi[2];
	int i;

	/*
	 * Save RF/PHY registers for later restoration
	 */
	for (i = 0; i < SAVE_RF_MAX; ++i)
		save_rf[i] = FUNC8(mac, save_rf_regs[i]);
	for (i = 0; i < SAVE_PHY_MAX; ++i)
		save_phy[i] = FUNC4(mac, save_phy_regs[i]);

	ant_div = FUNC1(sc, BWI_RF_ANTDIV);
	bbp_atten = FUNC1(sc, BWI_BBP_ATTEN);
	chan_ex = FUNC1(sc, BWI_RF_CHAN_EX);

	/*
	 * Calculate nrssi0
	 */
	if (phy->phy_rev >= 5)
		FUNC7(mac, 0x7a, 0xff80);
	else
		FUNC7(mac, 0x7a, 0xfff0);
	FUNC6(mac, 0x30, 0xff);

	FUNC2(sc, BWI_BPHY_CTRL, 0x7f7f);

	FUNC6(mac, 0x26, 0);
	FUNC5(mac, 0x15, 0x20);
	FUNC6(mac, 0x2a, 0x8a3);
	FUNC9(mac, 0x7a, 0x80);

	nrssi[0] = (int16_t)FUNC4(mac, 0x27);

	/*
	 * Calculate nrssi1
	 */
	FUNC7(mac, 0x7a, 0xff80);
	if (phy->phy_version >= 2)
		FUNC2(sc, BWI_BBP_ATTEN, 0x40);
	else if (phy->phy_version == 0)
		FUNC2(sc, BWI_BBP_ATTEN, 0x122);
	else
		FUNC0(sc, BWI_RF_CHAN_EX, 0xdfff);

	FUNC6(mac, 0x20, 0x3f3f);
	FUNC6(mac, 0x15, 0xf330);

	FUNC10(mac, 0x5a, 0x60);
	FUNC7(mac, 0x43, 0xff0f);

	FUNC6(mac, 0x5a, 0x480);
	FUNC6(mac, 0x59, 0x810);
	FUNC6(mac, 0x58, 0xd);

	FUNC3(20);

	nrssi[1] = (int16_t)FUNC4(mac, 0x27);

	/*
	 * Restore saved RF/PHY registers
	 */
	FUNC6(mac, save_phy_regs[0], save_phy[0]);
	FUNC10(mac, save_rf_regs[0], save_rf[0]);

	FUNC2(sc, BWI_RF_ANTDIV, ant_div);

	for (i = 1; i < 4; ++i)
		FUNC6(mac, save_phy_regs[i], save_phy[i]);

	FUNC11(mac, rf->rf_curchan);

	if (phy->phy_version != 0)
		FUNC2(sc, BWI_RF_CHAN_EX, chan_ex);

	for (; i < SAVE_PHY_MAX; ++i)
		FUNC6(mac, save_phy_regs[i], save_phy[i]);

	for (i = 1; i < SAVE_RF_MAX; ++i)
		FUNC10(mac, save_rf_regs[i], save_rf[i]);

	/*
	 * Install calculated narrow RSSI values
	 */
	if (nrssi[0] == nrssi[1])
		rf->rf_nrssi_slope = 0x10000;
	else
		rf->rf_nrssi_slope = 0x400000 / (nrssi[0] - nrssi[1]);
	if (nrssi[0] <= -4) {
		rf->rf_nrssi[0] = nrssi[0];
		rf->rf_nrssi[1] = nrssi[1];
	}

#undef SAVE_RF_MAX
#undef SAVE_PHY_MAX
}