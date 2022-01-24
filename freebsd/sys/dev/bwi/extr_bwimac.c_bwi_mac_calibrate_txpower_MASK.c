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
struct bwi_softc {int /*<<< orphan*/  sc_txpwr_calib; } ;
struct bwi_rf {int rf_txpower_max; } ;
struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {int mac_flags; TYPE_1__ mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;
typedef  int int8_t ;
typedef  enum bwi_txpwrcb_type { ____Placeholder_bwi_txpwrcb_type } bwi_txpwrcb_type ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_COMM_MOBJ_TSSI_DS ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_TSSI_OFDM ; 
 int BWI_DBG_MAC ; 
 int BWI_DBG_TXPOWER ; 
 int BWI_HFLAG_PWR_BOOST_DS ; 
 scalar_t__ FUNC0 (struct bwi_softc*) ; 
 int BWI_MAC_F_TPCTL_ERROR ; 
 int BWI_RF_ATTEN_FACTOR ; 
 int BWI_TXPWR_FORCE ; 
 int BWI_TXPWR_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int,char*,...) ; 
 int FUNC2 (struct bwi_mac*) ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*) ; 
 int FUNC5 (struct bwi_mac*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bwi_mac*,int,int*) ; 
 int FUNC7 (int,int) ; 

void
FUNC8(struct bwi_mac *mac, enum bwi_txpwrcb_type type)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct bwi_rf *rf = &mac->mac_rf;
	int8_t tssi[4], tssi_avg, cur_txpwr;
	int error, i, ofdm_tssi;
	int txpwr_diff, rf_atten_adj, bbp_atten_adj;

	if (!sc->sc_txpwr_calib)
		return;

	if (mac->mac_flags & BWI_MAC_F_TPCTL_ERROR) {
		FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "%s\n",
			"tpctl error happened, can't set txpower");
		return;
	}

	if (FUNC0(sc)) {
		FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "%s\n",
			"BU4306, can't set txpower");
		return;
	}

	/*
	 * Save latest TSSI and reset the related memory objects
	 */
	ofdm_tssi = 0;
	error = FUNC5(mac, tssi, BWI_COMM_MOBJ_TSSI_DS);
	if (error) {
		FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "%s\n",
			"no DS tssi");

		if (mac->mac_phy.phy_mode == IEEE80211_MODE_11B) {
			if (type == BWI_TXPWR_FORCE) {
				rf_atten_adj = 0;
				bbp_atten_adj = 1;
				goto calib;
			} else {
				return;
			}
		}

		error = FUNC5(mac, tssi,
				BWI_COMM_MOBJ_TSSI_OFDM);
		if (error) {
			FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "%s\n",
				"no OFDM tssi");
			if (type == BWI_TXPWR_FORCE) {
				rf_atten_adj = 0;
				bbp_atten_adj = 1;
				goto calib;
			} else {
				return;
			}
		}

		for (i = 0; i < 4; ++i) {
			tssi[i] += 0x20;
			tssi[i] &= 0x3f;
		}
		ofdm_tssi = 1;
	}
	FUNC4(mac);

	FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER,
		"tssi0 %d, tssi1 %d, tssi2 %d, tssi3 %d\n",
		tssi[0], tssi[1], tssi[2], tssi[3]);

	/*
	 * Calculate RF/BBP attenuation adjustment based on
	 * the difference between desired TX power and sampled
	 * TX power.
	 */
	/* +8 == "each incremented by 1/2" */
	tssi_avg = (tssi[0] + tssi[1] + tssi[2] + tssi[3] + 8) / 4;
	if (ofdm_tssi && (FUNC2(mac) & BWI_HFLAG_PWR_BOOST_DS))
		tssi_avg -= 13;

	FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "tssi avg %d\n", tssi_avg);

	error = FUNC6(mac, tssi_avg, &cur_txpwr);
	if (error)
		return;
	FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "current txpower %d\n",
		cur_txpwr);

	txpwr_diff = rf->rf_txpower_max - cur_txpwr; /* XXX ni_txpower */

	rf_atten_adj = -FUNC7(txpwr_diff, 8);
	if (type == BWI_TXPWR_INIT) {
		/*
		 * Move toward EEPROM max TX power as fast as we can
		 */
		bbp_atten_adj = -txpwr_diff;
	} else {
		bbp_atten_adj = -(txpwr_diff / 2);
	}
	bbp_atten_adj -= (BWI_RF_ATTEN_FACTOR * rf_atten_adj);

	if (rf_atten_adj == 0 && bbp_atten_adj == 0) {
		FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER, "%s\n",
			"no need to adjust RF/BBP attenuation");
		/* TODO: LO */
		return;
	}

calib:
	FUNC1(sc, BWI_DBG_MAC | BWI_DBG_TXPOWER,
		"rf atten adjust %d, bbp atten adjust %d\n",
		rf_atten_adj, bbp_atten_adj);
	FUNC3(mac, rf_atten_adj, bbp_atten_adj);
	/* TODO: LO */
}