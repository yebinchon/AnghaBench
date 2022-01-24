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
struct iwi_softc {scalar_t__ sc_running; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_LOCK_DECL ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC4(void *priv)
{
	struct iwi_softc *sc = priv;
	struct ieee80211com *ic = &sc->sc_ic;
	IWI_LOCK_DECL;

	FUNC0(sc);
	FUNC3(sc);
	FUNC1(sc);

	if (sc->sc_running)
		FUNC2(ic);
}