#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct bwn_txgain {int dummy; } ;
struct TYPE_3__ {scalar_t__ chip_id; } ;
struct bwn_softc {TYPE_1__ sc_cid; struct ieee80211com sc_ic; } ;
struct bwn_rxcompco {scalar_t__ rc_chan; int rc_c1; int rc_c0; } ;
struct bwn_phy_lp {scalar_t__ plp_chanfullcal; scalar_t__ plp_chan; int plp_txpctlmode; } ;
struct TYPE_4__ {int rev; struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {TYPE_2__ mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ BHND_CHIPID_BCM5354 ; 
 int /*<<< orphan*/  BWN_BTCOEX_CTL ; 
 int /*<<< orphan*/  BWN_BTCOEX_TXCTL ; 
 int BWN_PHYLP_TXPCTL_OFF ; 
 int /*<<< orphan*/  BWN_PHY_AFE_CTL_OVR ; 
 int /*<<< orphan*/  BWN_PHY_AFE_CTL_OVRVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_PWR_OVERRIDE ; 
 int /*<<< orphan*/  BWN_PHY_RX_COMP_COEFF_S ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bwn_rxcompco*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*) ; 
 int FUNC15 (struct bwn_mac*) ; 
 struct bwn_txgain FUNC16 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC18 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct bwn_mac*,struct bwn_txgain*) ; 
 int /*<<< orphan*/  FUNC23 (struct bwn_mac*,int) ; 
 struct bwn_rxcompco* bwn_rxcompco_5354 ; 
 struct bwn_rxcompco* bwn_rxcompco_r12 ; 
 struct bwn_rxcompco bwn_rxcompco_r2 ; 

__attribute__((used)) static void
FUNC24(struct bwn_mac *mac)
{
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	struct bwn_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;
	const struct bwn_rxcompco *rc = NULL;
	struct bwn_txgain ogain;
	int i, omode, oafeovr, orf, obbmult;
	uint8_t mode, fc = 0;

	if (plp->plp_chanfullcal != plp->plp_chan) {
		plp->plp_chanfullcal = plp->plp_chan;
		fc = 1;
	}

	FUNC9(mac);

	/* BlueTooth Coexistance Override */
	FUNC5(mac, BWN_BTCOEX_CTL, 0x3);
	FUNC5(mac, BWN_BTCOEX_TXCTL, 0xff);

	if (mac->mac_phy.rev >= 2)
		FUNC14(mac);
	FUNC17(mac);
	mode = plp->plp_txpctlmode;
	FUNC23(mac, BWN_PHYLP_TXPCTL_OFF);
	if (mac->mac_phy.rev == 0 && mode != BWN_PHYLP_TXPCTL_OFF)
		FUNC10(mac);
	if (mac->mac_phy.rev >= 2 && fc == 1) {
		FUNC17(mac);
		omode = plp->plp_txpctlmode;
		oafeovr = FUNC2(mac, BWN_PHY_AFE_CTL_OVR) & 0x40;
		if (oafeovr)
			ogain = FUNC16(mac);
		orf = FUNC2(mac, BWN_PHY_RF_PWR_OVERRIDE) & 0xff;
		obbmult = FUNC15(mac);
		FUNC23(mac, BWN_PHYLP_TXPCTL_OFF);
		if (oafeovr)
			FUNC22(mac, &ogain);
		FUNC18(mac, obbmult);
		FUNC23(mac, omode);
		FUNC4(mac, BWN_PHY_RF_PWR_OVERRIDE, 0xff00, orf);
	}
	FUNC23(mac, mode);
	if (mac->mac_phy.rev >= 2)
		FUNC13(mac);

	/* do RX IQ Calculation; assumes that noise is true. */
	if (sc->sc_cid.chip_id == BHND_CHIPID_BCM5354) {
		for (i = 0; i < FUNC7(bwn_rxcompco_5354); i++) {
			if (bwn_rxcompco_5354[i].rc_chan == plp->plp_chan)
				rc = &bwn_rxcompco_5354[i];
		}
	} else if (mac->mac_phy.rev >= 2)
		rc = &bwn_rxcompco_r2;
	else {
		for (i = 0; i < FUNC7(bwn_rxcompco_r12); i++) {
			if (bwn_rxcompco_r12[i].rc_chan == plp->plp_chan)
				rc = &bwn_rxcompco_r12[i];
		}
	}
	if (rc == NULL)
		goto fail;

	FUNC4(mac, BWN_PHY_RX_COMP_COEFF_S, 0xff00, rc->rc_c1);
	FUNC4(mac, BWN_PHY_RX_COMP_COEFF_S, 0x00ff, rc->rc_c0 << 8);

	FUNC21(mac, 1 /* TX */, 0 /* RX */);

	if (FUNC6(ic->ic_curchan)) {
		FUNC3(mac, BWN_PHY_RF_OVERRIDE_0, 0x8);
		FUNC4(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfff7, 0);
	} else {
		FUNC3(mac, BWN_PHY_RF_OVERRIDE_0, 0x20);
		FUNC4(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xffdf, 0);
	}

	FUNC20(mac, 0x2d5d);
	FUNC0(mac, BWN_PHY_AFE_CTL_OVR, 0xfffe);
	FUNC0(mac, BWN_PHY_AFE_CTL_OVRVAL, 0xfffe);
	FUNC3(mac, BWN_PHY_RF_OVERRIDE_0, 0x800);
	FUNC3(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x800);
	FUNC19(mac, 0);
	/* XXX no checking return value? */
	(void)FUNC11(mac, 0xfff0);
	FUNC12(mac, 0);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xfffc);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xfff7);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xffdf);

	/* disable RX GAIN override. */
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xfffe);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xffef);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xffbf);
	if (mac->mac_phy.rev >= 2) {
		FUNC0(mac, BWN_PHY_RF_OVERRIDE_2, 0xfeff);
		if (FUNC6(ic->ic_curchan)) {
			FUNC0(mac, BWN_PHY_RF_OVERRIDE_2, 0xfbff);
			FUNC0(mac, FUNC1(0xe5), 0xfff7);
		}
	} else {
		FUNC0(mac, BWN_PHY_RF_OVERRIDE_2, 0xfdff);
	}

	FUNC0(mac, BWN_PHY_AFE_CTL_OVR, 0xfffe);
	FUNC0(mac, BWN_PHY_AFE_CTL_OVRVAL, 0xf7ff);
fail:
	FUNC8(mac);
}