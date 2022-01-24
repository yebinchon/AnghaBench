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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwn_phy_n {int lpf_bw_overrode_for_sample_play; int bb_mult_save; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {int /*<<< orphan*/  mac_sc; struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BWN_NPHY_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  BWN_NPHY_REV7_RF_CTL_OVER3 ; 
 int /*<<< orphan*/  BWN_NPHY_REV7_RF_CTL_OVER4 ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQMODE ; 
 int BWN_NPHY_RFSEQMODE_CAOVER ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQST ; 
 int /*<<< orphan*/  BWN_NPHY_SAMP_CMD ; 
 int /*<<< orphan*/  BWN_NPHY_SAMP_DEPCNT ; 
 int /*<<< orphan*/  BWN_NPHY_SAMP_LOOPCNT ; 
 int /*<<< orphan*/  BWN_NPHY_SAMP_WAITCNT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*) ; 
 int FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int) ; 
 int FUNC12 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(struct bwn_mac *mac, uint16_t samps, uint16_t loops,
				 uint16_t wait, bool iqmode, bool dac_test,
				 bool modify_bbmult)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	int i;
	uint16_t seq_mode;
	uint32_t tmp;

	FUNC11(mac, true);

	if (phy->rev >= 7) {
		bool lpf_bw3, lpf_bw4;

		lpf_bw3 = FUNC3(mac, BWN_NPHY_REV7_RF_CTL_OVER3) & 0x80;
		lpf_bw4 = FUNC3(mac, BWN_NPHY_REV7_RF_CTL_OVER4) & 0x80;

		if (lpf_bw3 || lpf_bw4) {
			/* TODO */
		} else {
			uint16_t value = FUNC8(mac, 0);
			if (phy->rev >= 19)
				FUNC9(mac, 0x80, value,
							       0, false, 1);
			else
				FUNC10(mac, 0x80, value,
							      0, false, 1);
			nphy->lpf_bw_overrode_for_sample_play = true;
		}
	}

	if ((nphy->bb_mult_save & 0x80000000) == 0) {
		tmp = FUNC12(mac, FUNC1(15, 87));
		nphy->bb_mult_save = (tmp & 0xFFFF) | 0x80000000;
	}

	if (modify_bbmult) {
		tmp = !FUNC7(mac) ? 0x6464 : 0x4747;
		FUNC13(mac, FUNC1(15, 87), tmp);
	}

	FUNC5(mac, BWN_NPHY_SAMP_DEPCNT, (samps - 1));

	if (loops != 0xFFFF)
		FUNC5(mac, BWN_NPHY_SAMP_LOOPCNT, (loops - 1));
	else
		FUNC5(mac, BWN_NPHY_SAMP_LOOPCNT, loops);

	FUNC5(mac, BWN_NPHY_SAMP_WAITCNT, wait);

	seq_mode = FUNC3(mac, BWN_NPHY_RFSEQMODE);

	FUNC4(mac, BWN_NPHY_RFSEQMODE, BWN_NPHY_RFSEQMODE_CAOVER);
	if (iqmode) {
		FUNC2(mac, BWN_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);
		FUNC4(mac, BWN_NPHY_IQLOCAL_CMDGCTL, 0x8000);
	} else {
		tmp = dac_test ? 5 : 1;
		FUNC5(mac, BWN_NPHY_SAMP_CMD, tmp);
	}
	for (i = 0; i < 100; i++) {
		if (!(FUNC3(mac, BWN_NPHY_RFSEQST) & 1)) {
			i = 0;
			break;
		}
		FUNC6(10);
	}
	if (i)
		FUNC0(mac->mac_sc, "run samples timeout\n");

	FUNC5(mac, BWN_NPHY_RFSEQMODE, seq_mode);

	FUNC11(mac, false);
}