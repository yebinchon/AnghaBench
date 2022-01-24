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
struct ieee80211com {int dummy; } ;
struct ath_softc {int sc_keymax; struct ath_hal* sc_ah; struct ieee80211com sc_ic; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC6(struct ath_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ath_hal *ah = sc->sc_ah;
	int i;

	FUNC0(sc);
	FUNC4(sc, HAL_PM_AWAKE);
	for (i = 0; i < sc->sc_keymax; i++)
		FUNC2(ah, i);
	FUNC3(sc);
	FUNC1(sc);
	FUNC5(ic);
}