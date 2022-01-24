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
struct bwn_phy_n {int* tx_rx_cal_phy_saveregs; scalar_t__ use_int_tx_iq_lo_cal; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 scalar_t__ BWN_BAND_2G ; 
 scalar_t__ BWN_BAND_5G ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_C1 ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_C2 ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER1 ; 
 int /*<<< orphan*/  BWN_NPHY_BBCFG ; 
 int BWN_NPHY_BBCFG_RSTRX ; 
 int /*<<< orphan*/  BWN_NPHY_PAPD_EN0 ; 
 int /*<<< orphan*/  BWN_NPHY_PAPD_EN1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  N_INTC_OVERRIDE_PA ; 
 int /*<<< orphan*/  N_INTC_OVERRIDE_TRSW ; 
 int /*<<< orphan*/  R2057_IPA5G_CASCOFFV_PU_CORE0 ; 
 int /*<<< orphan*/  R2057_IPA5G_CASCOFFV_PU_CORE1 ; 
 int /*<<< orphan*/  R2057_OVR_REG0 ; 
 int /*<<< orphan*/  R2057_PAD2G_TUNE_PUS_CORE0 ; 
 int /*<<< orphan*/  R2057_PAD2G_TUNE_PUS_CORE1 ; 
 scalar_t__ FUNC6 (struct bwn_mac*) ; 
 int FUNC7 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int,int,int,int,int) ; 
 int FUNC11 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	uint16_t *regs = mac->mac_phy.phy_n->tx_rx_cal_phy_saveregs;
	uint16_t tmp;

	regs[0] = FUNC2(mac, BWN_NPHY_AFECTL_C1);
	regs[1] = FUNC2(mac, BWN_NPHY_AFECTL_C2);
	if (mac->mac_phy.rev >= 3) {
		FUNC3(mac, BWN_NPHY_AFECTL_C1, 0xF0FF, 0x0A00);
		FUNC3(mac, BWN_NPHY_AFECTL_C2, 0xF0FF, 0x0A00);

		tmp = FUNC2(mac, BWN_NPHY_AFECTL_OVER1);
		regs[2] = tmp;
		FUNC4(mac, BWN_NPHY_AFECTL_OVER1, tmp | 0x0600);

		tmp = FUNC2(mac, BWN_NPHY_AFECTL_OVER);
		regs[3] = tmp;
		FUNC4(mac, BWN_NPHY_AFECTL_OVER, tmp | 0x0600);

		regs[4] = FUNC2(mac, BWN_NPHY_BBCFG);
		FUNC1(mac, BWN_NPHY_BBCFG,
			     ~BWN_NPHY_BBCFG_RSTRX & 0xFFFF);

		tmp = FUNC11(mac, FUNC0(8, 3));
		regs[5] = tmp;
		FUNC12(mac, FUNC0(8, 3), 0);

		tmp = FUNC11(mac, FUNC0(8, 19));
		regs[6] = tmp;
		FUNC12(mac, FUNC0(8, 19), 0);
		regs[7] = FUNC2(mac, BWN_NPHY_RFCTL_INTC1);
		regs[8] = FUNC2(mac, BWN_NPHY_RFCTL_INTC2);

		if (!nphy->use_int_tx_iq_lo_cal)
			FUNC8(mac, N_INTC_OVERRIDE_PA,
						      1, 3);
		else
			FUNC8(mac, N_INTC_OVERRIDE_PA,
						      0, 3);
		FUNC8(mac, N_INTC_OVERRIDE_TRSW, 2, 1);
		FUNC8(mac, N_INTC_OVERRIDE_TRSW, 8, 2);

		regs[9] = FUNC2(mac, BWN_NPHY_PAPD_EN0);
		regs[10] = FUNC2(mac, BWN_NPHY_PAPD_EN1);
		FUNC1(mac, BWN_NPHY_PAPD_EN0, ~0x0001);
		FUNC1(mac, BWN_NPHY_PAPD_EN1, ~0x0001);

		tmp = FUNC7(mac, 0);
		if (phy->rev >= 19)
			FUNC9(mac, 0x80, tmp, 0, false,
						       1);
		else if (phy->rev >= 7)
			FUNC10(mac, 0x80, tmp, 0, false,
						      1);

		if (nphy->use_int_tx_iq_lo_cal && true /* FIXME */) {
			if (phy->rev >= 19) {
				FUNC9(mac, 0x8, 0, 0x3,
							       false, 0);
			} else if (phy->rev >= 8) {
				FUNC10(mac, 0x8, 0, 0x3,
							      false, 0);
			} else if (phy->rev == 7) {
				FUNC5(mac, R2057_OVR_REG0, 1 << 4, 1 << 4);
				if (FUNC6(mac) == BWN_BAND_2G) {
					FUNC5(mac, R2057_PAD2G_TUNE_PUS_CORE0, ~1, 0);
					FUNC5(mac, R2057_PAD2G_TUNE_PUS_CORE1, ~1, 0);
				} else {
					FUNC5(mac, R2057_IPA5G_CASCOFFV_PU_CORE0, ~1, 0);
					FUNC5(mac, R2057_IPA5G_CASCOFFV_PU_CORE1, ~1, 0);
				}
			}
		}
	} else {
		FUNC3(mac, BWN_NPHY_AFECTL_C1, 0x0FFF, 0xA000);
		FUNC3(mac, BWN_NPHY_AFECTL_C2, 0x0FFF, 0xA000);
		tmp = FUNC2(mac, BWN_NPHY_AFECTL_OVER);
		regs[2] = tmp;
		FUNC4(mac, BWN_NPHY_AFECTL_OVER, tmp | 0x3000);
		tmp = FUNC11(mac, FUNC0(8, 2));
		regs[3] = tmp;
		tmp |= 0x2000;
		FUNC12(mac, FUNC0(8, 2), tmp);
		tmp = FUNC11(mac, FUNC0(8, 18));
		regs[4] = tmp;
		tmp |= 0x2000;
		FUNC12(mac, FUNC0(8, 18), tmp);
		regs[5] = FUNC2(mac, BWN_NPHY_RFCTL_INTC1);
		regs[6] = FUNC2(mac, BWN_NPHY_RFCTL_INTC2);
		if (FUNC6(mac) == BWN_BAND_5G)
			tmp = 0x0180;
		else
			tmp = 0x0120;
		FUNC4(mac, BWN_NPHY_RFCTL_INTC1, tmp);
		FUNC4(mac, BWN_NPHY_RFCTL_INTC2, tmp);
	}
}