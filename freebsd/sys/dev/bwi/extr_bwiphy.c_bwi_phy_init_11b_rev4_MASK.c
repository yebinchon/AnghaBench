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
typedef  int u_int ;
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {int rf_curchan; scalar_t__ rf_type; } ;
struct bwi_mac {struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_BPHY_CTRL ; 
 int BWI_BPHY_CTRL_INIT ; 
 int BWI_CARD_F_SW_NRSSI ; 
 int /*<<< orphan*/  BWI_PHY_MAGIC_REG1 ; 
 int BWI_PHY_MAGIC_REG1_VAL1 ; 
 int /*<<< orphan*/  BWI_RF_CHAN_EX ; 
 scalar_t__ BWI_RF_T_BCM2050 ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int IEEE80211_CHAN_ANY ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bwi_mac*) ; 

__attribute__((used)) static void
FUNC10(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_rf *rf = &mac->mac_rf;
	uint16_t val, ofs;
	u_int chan;

	FUNC0(sc, BWI_BPHY_CTRL, BWI_BPHY_CTRL_INIT);

	FUNC1(mac, 0x20, 0x301c);
	FUNC1(mac, 0x26, 0);
	FUNC1(mac, 0x30, 0xc6);
	FUNC1(mac, 0x88, 0x3e00);

	for (ofs = 0, val = 0x3c3d; ofs < 30; ++ofs, val -= 0x202)
		FUNC1(mac, 0x89 + ofs, val);

	FUNC0(sc, BWI_PHY_MAGIC_REG1, BWI_PHY_MAGIC_REG1_VAL1);

	chan = rf->rf_curchan;
	if (chan == IEEE80211_CHAN_ANY)
		chan = 6;	/* Force to channel 6 */
	FUNC8(mac, chan, 0);

	if (rf->rf_type != BWI_RF_T_BCM2050) {
		FUNC2(mac, 0x75, 0x80);
		FUNC2(mac, 0x79, 0x81);
	}

	FUNC2(mac, 0x50, 0x20);
	FUNC2(mac, 0x50, 0x23);

	if (rf->rf_type == BWI_RF_T_BCM2050) {
		FUNC2(mac, 0x50, 0x20);
		FUNC2(mac, 0x5a, 0x70);
		FUNC2(mac, 0x5b, 0x7b);
		FUNC2(mac, 0x5c, 0xb0);
		FUNC2(mac, 0x7a, 0xf);
		FUNC1(mac, 0x38, 0x677);
		FUNC6(mac);
	}

	FUNC1(mac, 0x14, 0x80);
	FUNC1(mac, 0x32, 0xca);
	if (rf->rf_type == BWI_RF_T_BCM2050)
		FUNC1(mac, 0x32, 0xe0);
	FUNC1(mac, 0x35, 0x7c2);

	FUNC7(mac);

	FUNC1(mac, 0x26, 0xcc00);
	if (rf->rf_type == BWI_RF_T_BCM2050)
		FUNC1(mac, 0x26, 0xce00);

	FUNC0(sc, BWI_RF_CHAN_EX, 0x1100);

	FUNC1(mac, 0x2a, 0x88a3);
	if (rf->rf_type == BWI_RF_T_BCM2050)
		FUNC1(mac, 0x2a, 0x88c2);

	FUNC4(mac, NULL);
	if (sc->sc_card_flags & BWI_CARD_F_SW_NRSSI) {
		FUNC5(mac);
		FUNC9(mac);
	}
	FUNC3(mac);
}