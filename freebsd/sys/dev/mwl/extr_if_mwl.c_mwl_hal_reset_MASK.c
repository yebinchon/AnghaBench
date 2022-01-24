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
struct ieee80211com {int ic_flags; int /*<<< orphan*/  ic_regdomain; int /*<<< orphan*/  ic_curchan; } ;
struct mwl_softc {struct mwl_hal* sc_mh; int /*<<< orphan*/  sc_txantenna; int /*<<< orphan*/  sc_rxantenna; struct ieee80211com sc_ic; } ;
struct mwl_hal {int dummy; } ;

/* Variables and functions */
 int IEEE80211_F_BURST ; 
 int IEEE80211_F_WME ; 
 int /*<<< orphan*/  WL_ANTENNATYPE_RX ; 
 int /*<<< orphan*/  WL_ANTENNATYPE_TX ; 
 int /*<<< orphan*/  WL_AUTO_PREAMBLE ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_hal*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_hal*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mwl_hal*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mwl_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mwl_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwl_hal*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct mwl_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct mwl_hal *mh = sc->sc_mh;

	FUNC2(mh, WL_ANTENNATYPE_RX, sc->sc_rxantenna);
	FUNC2(mh, WL_ANTENNATYPE_TX, sc->sc_txantenna);
	FUNC5(mh, 1, WL_AUTO_PREAMBLE);
	FUNC8(sc->sc_mh, (ic->ic_flags & IEEE80211_F_WME) != 0);
	FUNC0(sc, ic->ic_curchan);
	/* NB: RF/RA performance tuned for indoor mode */
	FUNC6(mh, 0);
	FUNC4(mh,
	    (ic->ic_flags & IEEE80211_F_BURST) != 0);

	FUNC7(mh, FUNC9(&ic->ic_regdomain));

	FUNC1(mh, 1, 80);		/* XXX */
	FUNC3(mh, 0);			/* XXX */

	return 1;
}