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
struct iwn_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; struct iwn_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_S_RUN ; 
 int /*<<< orphan*/  IWN_LED_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{
	struct iwn_softc *sc = ic->ic_softc;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);

	FUNC0(sc);
	if (vap->iv_state == IEEE80211_S_RUN) {
		/* Set link LED to ON status if we are associated */
		FUNC3(sc, IWN_LED_LINK, 0, 1);
	}
	FUNC1(sc);
}