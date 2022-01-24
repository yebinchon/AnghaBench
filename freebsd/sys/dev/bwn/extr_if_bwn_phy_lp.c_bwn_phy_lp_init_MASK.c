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
typedef  int uint16_t ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct bwn_stxtable {int member_0; int member_1; int member_2; int member_3; int member_4; int st_rfshift; int st_physhift; int st_phyoffset; int st_mask; int /*<<< orphan*/  st_rfaddr; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_pmu; struct ieee80211com sc_ic; } ;
struct bwn_phy_lp {int /*<<< orphan*/  plp_rccap; } ;
struct TYPE_2__ {int rf_ver; int rev; struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PHY_4WIRECTL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int ENXIO ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bwn_stxtable const*) ; 
 int FUNC9 (struct bwn_mac*) ; 
 int FUNC10 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*) ; 
 int FUNC13 (struct bwn_mac*) ; 
 int FUNC14 (struct bwn_mac*) ; 
 int FUNC15 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC16 (struct bwn_mac*) ; 
 int FUNC17 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC20(struct bwn_mac *mac)
{
	static const struct bwn_stxtable tables[] = {
		{ 2,  6, 0x3d, 3, 0x01 }, { 1, 12, 0x4c, 1, 0x01 },
		{ 1,  8, 0x50, 0, 0x7f }, { 0,  8, 0x44, 0, 0xff },
		{ 1,  0, 0x4a, 0, 0xff }, { 0,  4, 0x4d, 0, 0xff },
		{ 1,  4, 0x4e, 0, 0xff }, { 0, 12, 0x4f, 0, 0x0f },
		{ 1,  0, 0x4f, 4, 0x0f }, { 3,  0, 0x49, 0, 0x0f },
		{ 4,  3, 0x46, 4, 0x07 }, { 3, 15, 0x46, 0, 0x01 },
		{ 4,  0, 0x46, 1, 0x07 }, { 3,  8, 0x48, 4, 0x07 },
		{ 3, 11, 0x48, 0, 0x0f }, { 3,  4, 0x49, 4, 0x0f },
		{ 2, 15, 0x45, 0, 0x01 }, { 5, 13, 0x52, 4, 0x07 },
		{ 6,  0, 0x52, 7, 0x01 }, { 5,  3, 0x41, 5, 0x07 },
		{ 5,  6, 0x41, 0, 0x0f }, { 5, 10, 0x42, 5, 0x07 },
		{ 4, 15, 0x42, 0, 0x01 }, { 5,  0, 0x42, 1, 0x07 },
		{ 4, 11, 0x43, 4, 0x0f }, { 4,  7, 0x43, 0, 0x0f },
		{ 4,  6, 0x45, 1, 0x01 }, { 2,  7, 0x40, 4, 0x0f },
		{ 2, 11, 0x40, 0, 0x0f }
	};
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	struct bwn_softc *sc = mac->mac_sc;
	const struct bwn_stxtable *st;
	struct ieee80211com *ic = &sc->sc_ic;
	int i, error;
	uint16_t tmp;

	/* All LP-PHY devices have a PMU */
	if (sc->sc_pmu == NULL) {
		FUNC19(sc->sc_dev, "no PMU; cannot configure PAREF "
		    "LDO\n");
		return (ENXIO);
	}

	if ((error = FUNC14(mac)))
		return (error);

	FUNC11(mac);

	/* initialize RF */
	FUNC2(mac, BWN_PHY_4WIRECTL, 0x2);
	FUNC6(1);
	FUNC0(mac, BWN_PHY_4WIRECTL, 0xfffd);
	FUNC6(1);

	if (mac->mac_phy.rf_ver == 0x2062) {
		if ((error = FUNC9(mac)))
			return (error);
	} else {
		if ((error = FUNC10(mac)))
			return (error);

		/* synchronize stx table. */
		for (i = 0; i < FUNC8(tables); i++) {
			st = &tables[i];
			tmp = FUNC5(mac, st->st_rfaddr);
			tmp >>= st->st_rfshift;
			tmp <<= st->st_physhift;
			FUNC3(mac,
			    FUNC1(0xf2 + st->st_phyoffset),
			    ~(st->st_mask << st->st_physhift), tmp);
		}

		FUNC4(mac, FUNC1(0xf0), 0x5f80);
		FUNC4(mac, FUNC1(0xf1), 0);
	}

	/* calibrate RC */
	if (mac->mac_phy.rev >= 2) {
		if ((error = FUNC15(mac)))
			return (error);
	} else if (!plp->plp_rccap) {
		if (FUNC7(ic->ic_curchan)) {
			if ((error = FUNC13(mac)))
				return (error);
		}
	} else
		FUNC16(mac);

	error = FUNC17(mac, 7);
	if (error)
		FUNC19(sc->sc_dev,
		    "failed to change channel 7 (%d)\n", error);
	FUNC18(mac);
	FUNC12(mac);
	return (0);
}