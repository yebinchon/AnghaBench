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
struct rsu_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int /*<<< orphan*/  ic_vaps; struct rsu_softc* ic_softc; } ;

/* Variables and functions */
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 scalar_t__ FUNC3 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsu_softc*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct rsu_softc *sc = ic->ic_softc;

	if (ic->ic_nrunning > 0) {
		if (FUNC3(sc) == 0)
			FUNC1(ic);
		else {
			struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);
			if (vap != NULL)
				FUNC2(vap);
		}
	} else
		FUNC4(sc);
}