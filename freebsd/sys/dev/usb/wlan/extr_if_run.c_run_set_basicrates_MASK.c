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
struct ieee80211com {scalar_t__ ic_curmode; } ;
struct run_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_MODE_11A ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  RT2860_LEGACY_BASIC_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct run_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	/* set basic rates mask */
	if (ic->ic_curmode == IEEE80211_MODE_11B)
		FUNC0(sc, RT2860_LEGACY_BASIC_RATE, 0x003);
	else if (ic->ic_curmode == IEEE80211_MODE_11A)
		FUNC0(sc, RT2860_LEGACY_BASIC_RATE, 0x150);
	else	/* 11g */
		FUNC0(sc, RT2860_LEGACY_BASIC_RATE, 0x15f);
}