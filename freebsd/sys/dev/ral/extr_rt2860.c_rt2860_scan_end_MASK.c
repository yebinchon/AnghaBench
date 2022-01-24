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
struct rt2860_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; struct rt2860_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_S_RUN ; 
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rt2860_softc *sc = ic->ic_softc;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);

	if (vap->iv_state == IEEE80211_S_RUN) {
		FUNC1(sc);
		FUNC2(sc, 500);
	}
}