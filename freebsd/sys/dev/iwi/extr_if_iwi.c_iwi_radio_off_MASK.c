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
struct iwi_softc {int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_LOCK_DECL ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct iwi_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;
	IWI_LOCK_DECL;

	FUNC2(sc->sc_dev, "radio turned off\n");

	FUNC3(ic, 0);

	FUNC0(sc);
	FUNC5(sc);
	FUNC4(sc);
	FUNC1(sc);
}