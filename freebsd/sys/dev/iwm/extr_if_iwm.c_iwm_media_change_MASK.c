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
struct iwm_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct iwm_softc* ic_softc; } ;

/* Variables and functions */
 int ENETRESET ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp)
{
	struct ieee80211vap *vap = ifp->if_softc;
	struct ieee80211com *ic = vap->iv_ic;
	struct iwm_softc *sc = ic->ic_softc;
	int error;

	error = FUNC2(ifp);
	if (error != ENETRESET)
		return error;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		FUNC4(sc);
		FUNC3(sc);
	}
	FUNC1(sc);
	return error;
}