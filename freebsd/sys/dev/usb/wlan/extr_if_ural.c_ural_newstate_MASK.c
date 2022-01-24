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
struct ural_vap {int (* newstate ) (struct ieee80211vap*,int,int) ;int /*<<< orphan*/  ratectl_ch; } ;
struct ural_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bssid; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {size_t iv_state; struct ieee80211_txparam* iv_txparms; int /*<<< orphan*/  iv_opmode; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_bsschan; struct ural_softc* ic_softc; } ;
struct ieee80211_txparam {int /*<<< orphan*/  ucastrate; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_CHAN_ANYC ; 
 int /*<<< orphan*/  IEEE80211_FIXED_RATE_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  IEEE80211_M_HOSTAP ; 
 int /*<<< orphan*/  IEEE80211_M_IBSS ; 
 int /*<<< orphan*/  IEEE80211_M_MONITOR ; 
#define  IEEE80211_S_INIT 129 
#define  IEEE80211_S_RUN 128 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC4 (struct ural_softc*) ; 
 int /*<<< orphan*/  RAL_MAC_CSR20 ; 
 int /*<<< orphan*/  RAL_TXRX_CSR19 ; 
 int /*<<< orphan*/  FUNC5 (struct ural_softc*) ; 
 struct ural_vap* FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct mbuf* FUNC8 (struct ieee80211_node*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC11 (struct ieee80211_node*) ; 
 int /*<<< orphan*/ * ieee80211_state_name ; 
 int FUNC12 (struct ieee80211vap*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ural_softc*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct ural_softc*,struct mbuf*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC20 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
	struct ural_vap *uvp = FUNC6(vap);
	struct ieee80211com *ic = vap->iv_ic;
	struct ural_softc *sc = ic->ic_softc;
	const struct ieee80211_txparam *tp;
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC0("%s -> %s\n",
		ieee80211_state_name[vap->iv_state],
		ieee80211_state_name[nstate]);

	FUNC3(ic);
	FUNC4(sc);
	FUNC22(&uvp->ratectl_ch);

	switch (nstate) {
	case IEEE80211_S_INIT:
		if (vap->iv_state == IEEE80211_S_RUN) {
			/* abort TSF synchronization */
			FUNC21(sc, RAL_TXRX_CSR19, 0);

			/* force tx led to stop blinking */
			FUNC21(sc, RAL_MAC_CSR20, 0);
		}
		break;

	case IEEE80211_S_RUN:
		ni = FUNC11(vap->iv_bss);

		if (vap->iv_opmode != IEEE80211_M_MONITOR) {
			if (ic->ic_bsschan == IEEE80211_CHAN_ANYC)
				goto fail;

			FUNC20(sc);
			FUNC18(sc);
			FUNC16(sc, ic->ic_bsschan);
			FUNC1(sc->sc_bssid, ni->ni_bssid);
			FUNC17(sc, sc->sc_bssid);
		}

		if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
		    vap->iv_opmode == IEEE80211_M_IBSS) {
			m = FUNC8(ni);
			if (m == NULL) {
				FUNC7(sc->sc_dev,
				    "could not allocate beacon\n");
				goto fail;
			}
			FUNC11(ni);
			if (FUNC19(sc, m, ni) != 0) {
				FUNC7(sc->sc_dev,
				    "could not send beacon\n");
				goto fail;
			}
		}

		/* make tx led blink on tx (controlled by ASIC) */
		FUNC21(sc, RAL_MAC_CSR20, 1);

		if (vap->iv_opmode != IEEE80211_M_MONITOR)
			FUNC14(sc);
		else
			FUNC13(sc);

		/* enable automatic rate adaptation */
		/* XXX should use ic_bsschan but not valid until after newstate call below */
		tp = &vap->iv_txparms[FUNC9(ic->ic_curchan)];
		if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE)
			FUNC15(sc, ni);
		FUNC10(ni);
		break;

	default:
		break;
	}
	FUNC5(sc);
	FUNC2(ic);
	return (uvp->newstate(vap, nstate, arg));

fail:
	FUNC5(sc);
	FUNC2(ic);
	FUNC10(ni);
	return (-1);
}