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
struct mwl_vap {struct mwl_hal_vap* mv_hvap; } ;
struct mwl_softc {int /*<<< orphan*/  sc_imask; scalar_t__ sc_running; int /*<<< orphan*/  sc_nwdsvaps; int /*<<< orphan*/  sc_nstavaps; int /*<<< orphan*/  sc_napvaps; struct mwl_hal* sc_mh; } ;
struct mwl_hal_vap {int dummy; } ;
struct mwl_hal {int dummy; } ;
struct ieee80211vap {int iv_opmode; int /*<<< orphan*/  iv_myaddr; TYPE_1__* iv_ic; } ;
typedef  enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;
struct TYPE_2__ {struct mwl_softc* ic_softc; } ;

/* Variables and functions */
#define  IEEE80211_M_HOSTAP 131 
#define  IEEE80211_M_MBSS 130 
#define  IEEE80211_M_STA 129 
#define  IEEE80211_M_WDS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mwl_vap* FUNC1 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_softc*,struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwl_hal_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mwl_hal_vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwl_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwl_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ieee80211vap *vap)
{
	struct mwl_vap *mvp = FUNC1(vap);
	struct mwl_softc *sc = vap->iv_ic->ic_softc;
	struct mwl_hal *mh = sc->sc_mh;
	struct mwl_hal_vap *hvap = mvp->mv_hvap;
	enum ieee80211_opmode opmode = vap->iv_opmode;

	/* XXX disallow ap vap delete if WDS still present */
	if (sc->sc_running) {
		/* quiesce h/w while we remove the vap */
		FUNC7(mh, 0);		/* disable interrupts */
	}
	FUNC3(vap);
	switch (opmode) {
	case IEEE80211_M_HOSTAP:
	case IEEE80211_M_MBSS:
	case IEEE80211_M_STA:
		FUNC0(hvap != NULL, ("no hal vap handle"));
		(void) FUNC5(hvap, vap->iv_myaddr);
		FUNC6(hvap);
		if (opmode == IEEE80211_M_HOSTAP || opmode == IEEE80211_M_MBSS)
			sc->sc_napvaps--;
		else
			sc->sc_nstavaps--;
		/* XXX don't do it for IEEE80211_CLONE_MACADDR */
		FUNC8(sc, vap->iv_myaddr);
		break;
	case IEEE80211_M_WDS:
		sc->sc_nwdsvaps--;
		break;
	default:
		break;
	}
	FUNC4(sc, vap);
	FUNC2(mvp, M_80211_VAP);
	if (sc->sc_running)
		FUNC7(mh, sc->sc_imask);
}