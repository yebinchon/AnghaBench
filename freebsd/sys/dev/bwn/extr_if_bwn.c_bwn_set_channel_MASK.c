#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211com {TYPE_1__* ic_curchan; struct bwn_softc* ic_softc; } ;
struct bwn_softc {scalar_t__ sc_rf_enabled; int /*<<< orphan*/  sc_dev; struct bwn_mac* sc_curmac; } ;
struct bwn_phy {int chan; int txpower; scalar_t__ rf_on; int /*<<< orphan*/  (* set_antenna ) (struct bwn_mac*,int /*<<< orphan*/ ) ;} ;
struct bwn_mac {int mac_flags; struct bwn_phy mac_phy; } ;
struct TYPE_3__ {scalar_t__ ic_maxpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_ANT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int BWN_MAC_FLAG_RADIO_ON ; 
 int /*<<< orphan*/  BWN_RETRY_LONG ; 
 int /*<<< orphan*/  BWN_RETRY_SHORT ; 
 int BWN_TXPWR_IGNORE_TIME ; 
 int BWN_TXPWR_IGNORE_TSSI ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct bwn_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (struct ieee80211com*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct ieee80211com *ic)
{
	struct bwn_softc *sc = ic->ic_softc;
	struct bwn_mac *mac = sc->sc_curmac;
	struct bwn_phy *phy = &mac->mac_phy;
	int chan, error;

	FUNC0(sc);

	error = FUNC9(sc, ic->ic_curchan);
	if (error)
		goto fail;
	FUNC3(mac);
	FUNC8(mac, BWN_RETRY_SHORT, BWN_RETRY_LONG);
	chan = FUNC12(ic, ic->ic_curchan);
	if (chan != phy->chan)
		FUNC10(mac, chan);

	/* TX power level */
	if (ic->ic_curchan->ic_maxpower != 0 &&
	    ic->ic_curchan->ic_maxpower != phy->txpower) {
		phy->txpower = ic->ic_curchan->ic_maxpower / 2;
		FUNC4(mac, BWN_TXPWR_IGNORE_TIME |
		    BWN_TXPWR_IGNORE_TSSI);
	}

	FUNC7(mac, BWN_ANT_DEFAULT);
	if (phy->set_antenna)
		phy->set_antenna(mac, BWN_ANT_DEFAULT);

	if (sc->sc_rf_enabled != phy->rf_on) {
		if (sc->sc_rf_enabled) {
			FUNC6(mac);
			if (!(mac->mac_flags & BWN_MAC_FLAG_RADIO_ON))
				FUNC11(sc->sc_dev,
				    "please turn on the RF switch\n");
		} else
			FUNC5(mac);
	}

	FUNC2(mac);

fail:
	FUNC1(sc);
}