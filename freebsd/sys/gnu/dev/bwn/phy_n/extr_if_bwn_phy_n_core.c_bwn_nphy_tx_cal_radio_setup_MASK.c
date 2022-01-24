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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct bwn_phy_n {int* tx_rx_cal_radio_saveregs; scalar_t__ ipa2g_on; scalar_t__ ipa5g_on; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int B2055_C1_PWRDET_RXTX ; 
 int /*<<< orphan*/  B2055_C1_TX_BB_MXGM ; 
 int B2055_C1_TX_RF_IQCAL1 ; 
 int B2055_C1_TX_RF_IQCAL2 ; 
 int B2055_C2_PWRDET_RXTX ; 
 int /*<<< orphan*/  B2055_C2_TX_BB_MXGM ; 
 int B2055_C2_TX_RF_IQCAL1 ; 
 int B2055_C2_TX_RF_IQCAL2 ; 
 int B2055_CAL_LPOCTL ; 
 int B2055_CAL_RCALRTS ; 
 int B2055_CAL_RCCALRTS ; 
 int B2055_CAL_RVARCTL ; 
 int B2055_CAL_TS ; 
 int B2055_PADDRV ; 
 int B2055_PLL_LFC1 ; 
 int B2055_XOCTL1 ; 
 int B2055_XOCTL2 ; 
 int B2055_XOMISC ; 
 int B2055_XOREGUL ; 
 scalar_t__ BWN_BAND_5G ; 
 int /*<<< orphan*/  BWN_NPHY_BANDCTL ; 
 int BWN_NPHY_BANDCTL_5GHZ ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int,int) ; 
 scalar_t__ FUNC5 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*) ; 

__attribute__((used)) static void FUNC8(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	uint16_t *save = nphy->tx_rx_cal_radio_saveregs;
	uint16_t tmp;
	uint8_t offset, i;

	if (phy->rev >= 19) {
		FUNC6(mac);
	} else if (phy->rev >= 7) {
		FUNC7(mac);
	} else if (phy->rev >= 3) {
	    for (i = 0; i < 2; i++) {
		tmp = (i == 0) ? 0x2000 : 0x3000;
		offset = i * 11;

		save[offset + 0] = FUNC2(mac, B2055_CAL_RVARCTL);
		save[offset + 1] = FUNC2(mac, B2055_CAL_LPOCTL);
		save[offset + 2] = FUNC2(mac, B2055_CAL_TS);
		save[offset + 3] = FUNC2(mac, B2055_CAL_RCCALRTS);
		save[offset + 4] = FUNC2(mac, B2055_CAL_RCALRTS);
		save[offset + 5] = FUNC2(mac, B2055_PADDRV);
		save[offset + 6] = FUNC2(mac, B2055_XOCTL1);
		save[offset + 7] = FUNC2(mac, B2055_XOCTL2);
		save[offset + 8] = FUNC2(mac, B2055_XOREGUL);
		save[offset + 9] = FUNC2(mac, B2055_XOMISC);
		save[offset + 10] = FUNC2(mac, B2055_PLL_LFC1);

		if (FUNC5(mac) == BWN_BAND_5G) {
			FUNC4(mac, tmp | B2055_CAL_RVARCTL, 0x0A);
			FUNC4(mac, tmp | B2055_CAL_LPOCTL, 0x40);
			FUNC4(mac, tmp | B2055_CAL_TS, 0x55);
			FUNC4(mac, tmp | B2055_CAL_RCCALRTS, 0);
			FUNC4(mac, tmp | B2055_CAL_RCALRTS, 0);
			if (nphy->ipa5g_on) {
				FUNC4(mac, tmp | B2055_PADDRV, 4);
				FUNC4(mac, tmp | B2055_XOCTL1, 1);
			} else {
				FUNC4(mac, tmp | B2055_PADDRV, 0);
				FUNC4(mac, tmp | B2055_XOCTL1, 0x2F);
			}
			FUNC4(mac, tmp | B2055_XOCTL2, 0);
		} else {
			FUNC4(mac, tmp | B2055_CAL_RVARCTL, 0x06);
			FUNC4(mac, tmp | B2055_CAL_LPOCTL, 0x40);
			FUNC4(mac, tmp | B2055_CAL_TS, 0x55);
			FUNC4(mac, tmp | B2055_CAL_RCCALRTS, 0);
			FUNC4(mac, tmp | B2055_CAL_RCALRTS, 0);
			FUNC4(mac, tmp | B2055_XOCTL1, 0);
			if (nphy->ipa2g_on) {
				FUNC4(mac, tmp | B2055_PADDRV, 6);
				FUNC4(mac, tmp | B2055_XOCTL2,
					(mac->mac_phy.rev < 5) ? 0x11 : 0x01);
			} else {
				FUNC4(mac, tmp | B2055_PADDRV, 0);
				FUNC4(mac, tmp | B2055_XOCTL2, 0);
			}
		}
		FUNC4(mac, tmp | B2055_XOREGUL, 0);
		FUNC4(mac, tmp | B2055_XOMISC, 0);
		FUNC4(mac, tmp | B2055_PLL_LFC1, 0);
	    }
	} else {
		save[0] = FUNC2(mac, B2055_C1_TX_RF_IQCAL1);
		FUNC4(mac, B2055_C1_TX_RF_IQCAL1, 0x29);

		save[1] = FUNC2(mac, B2055_C1_TX_RF_IQCAL2);
		FUNC4(mac, B2055_C1_TX_RF_IQCAL2, 0x54);

		save[2] = FUNC2(mac, B2055_C2_TX_RF_IQCAL1);
		FUNC4(mac, B2055_C2_TX_RF_IQCAL1, 0x29);

		save[3] = FUNC2(mac, B2055_C2_TX_RF_IQCAL2);
		FUNC4(mac, B2055_C2_TX_RF_IQCAL2, 0x54);

		save[3] = FUNC2(mac, B2055_C1_PWRDET_RXTX);
		save[4] = FUNC2(mac, B2055_C2_PWRDET_RXTX);

		if (!(FUNC0(mac, BWN_NPHY_BANDCTL) &
		    BWN_NPHY_BANDCTL_5GHZ)) {
			FUNC4(mac, B2055_C1_PWRDET_RXTX, 0x04);
			FUNC4(mac, B2055_C2_PWRDET_RXTX, 0x04);
		} else {
			FUNC4(mac, B2055_C1_PWRDET_RXTX, 0x20);
			FUNC4(mac, B2055_C2_PWRDET_RXTX, 0x20);
		}

		if (mac->mac_phy.rev < 2) {
			FUNC3(mac, B2055_C1_TX_BB_MXGM, 0x20);
			FUNC3(mac, B2055_C2_TX_BB_MXGM, 0x20);
		} else {
			FUNC1(mac, B2055_C1_TX_BB_MXGM, ~0x20);
			FUNC1(mac, B2055_C2_TX_BB_MXGM, ~0x20);
		}
	}
}