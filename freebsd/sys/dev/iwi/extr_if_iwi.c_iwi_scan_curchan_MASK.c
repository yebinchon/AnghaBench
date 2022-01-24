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
struct iwi_softc {int dummy; } ;
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211_scan_state {struct ieee80211vap* ss_vap; } ;
struct TYPE_2__ {struct iwi_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_LOCK_DECL ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 scalar_t__ FUNC3 (struct iwi_softc*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_scan_state *ss, unsigned long maxdwell)
{
	struct ieee80211vap *vap = ss->ss_vap;
	struct iwi_softc *sc = vap->iv_ic->ic_softc;
	IWI_LOCK_DECL;

	FUNC0(sc);
	if (FUNC3(sc, maxdwell, 0))
		FUNC2(vap);
	FUNC1(sc);
}