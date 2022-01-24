#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PHY_AFE_DDFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac, uint32_t gain)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;
	uint16_t ext_lna, high_gain, lna, low_gain, trsw, tmp;

	if (mac->mac_phy.rev < 2) {
		trsw = gain & 0x1;
		lna = (gain & 0xfffc) | ((gain & 0xc) >> 2);
		ext_lna = (gain & 2) >> 1;

		FUNC2(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfffe, trsw);
		FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL,
		    0xfbff, ext_lna << 10);
		FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL,
		    0xf7ff, ext_lna << 11);
		FUNC3(mac, BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL, lna);
	} else {
		low_gain = gain & 0xffff;
		high_gain = (gain >> 16) & 0xf;
		ext_lna = (gain >> 21) & 0x1;
		trsw = ~(gain >> 20) & 0x1;

		FUNC2(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfffe, trsw);
		FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL,
		    0xfdff, ext_lna << 9);
		FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL,
		    0xfbff, ext_lna << 10);
		FUNC3(mac, BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL, low_gain);
		FUNC2(mac, BWN_PHY_AFE_DDFS, 0xfff0, high_gain);
		if (FUNC4(ic->ic_curchan)) {
			tmp = (gain >> 2) & 0x3;
			FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL,
			    0xe7ff, tmp<<11);
			FUNC2(mac, FUNC0(0xe6), 0xffe7,
			    tmp << 3);
		}
	}

	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x1);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x10);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x40);
	if (mac->mac_phy.rev >= 2) {
		FUNC1(mac, BWN_PHY_RF_OVERRIDE_2, 0x100);
		if (FUNC4(ic->ic_curchan)) {
			FUNC1(mac, BWN_PHY_RF_OVERRIDE_2, 0x400);
			FUNC1(mac, FUNC0(0xe5), 0x8);
		}
		return;
	}
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_2, 0x200);
}