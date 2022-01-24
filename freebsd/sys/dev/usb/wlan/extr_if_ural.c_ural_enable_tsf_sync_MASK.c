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
typedef  int uint16_t ;
struct ieee80211com {scalar_t__ ic_opmode; int /*<<< orphan*/  ic_vaps; } ;
struct ural_softc {struct ieee80211com sc_ic; } ;
struct ieee80211vap {TYPE_1__* iv_bss; } ;
struct TYPE_2__ {int ni_intval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_STA ; 
 int RAL_ENABLE_BEACON_GENERATOR ; 
 int RAL_ENABLE_TBCN ; 
 int RAL_ENABLE_TSF ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RAL_TXRX_CSR18 ; 
 int /*<<< orphan*/  RAL_TXRX_CSR19 ; 
 int /*<<< orphan*/  RAL_TXRX_CSR20 ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ural_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);
	uint16_t logcwmin, preload, tmp;

	/* first, disable TSF synchronization */
	FUNC3(sc, RAL_TXRX_CSR19, 0);

	tmp = (16 * vap->iv_bss->ni_intval) << 4;
	FUNC3(sc, RAL_TXRX_CSR18, tmp);

	logcwmin = (ic->ic_opmode == IEEE80211_M_IBSS) ? 2 : 0;
	preload = (ic->ic_opmode == IEEE80211_M_IBSS) ? 320 : 6;
	tmp = logcwmin << 12 | preload;
	FUNC3(sc, RAL_TXRX_CSR20, tmp);

	/* finally, enable TSF synchronization */
	tmp = RAL_ENABLE_TSF | RAL_ENABLE_TBCN;
	if (ic->ic_opmode == IEEE80211_M_STA)
		tmp |= FUNC1(1);
	else
		tmp |= FUNC1(2) | RAL_ENABLE_BEACON_GENERATOR;
	FUNC3(sc, RAL_TXRX_CSR19, tmp);

	FUNC0("enabling TSF synchronization\n");
}