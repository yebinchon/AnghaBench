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
struct ndis_vap {int dummy; } ;
struct ndis_softc {int /*<<< orphan*/  ndis_scan_callout; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ndis_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_80211_VAP ; 
 struct ndis_vap* FUNC0 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct ndis_softc*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211vap *vap)
{
	struct ndis_vap *nvp = FUNC0(vap);
	struct ieee80211com *ic = vap->iv_ic;
	struct ndis_softc *sc = ic->ic_softc;

	FUNC4(sc);
	FUNC1(&sc->ndis_scan_callout);
	FUNC3(vap);
	FUNC2(nvp, M_80211_VAP);
}