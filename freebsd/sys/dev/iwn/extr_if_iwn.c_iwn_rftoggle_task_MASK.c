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
typedef  int uint32_t ;
struct ieee80211com {int dummy; } ;
struct iwn_softc {int int_mask; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWN_GP_CNTRL ; 
 int IWN_GP_CNTRL_RFKILL ; 
 int /*<<< orphan*/  IWN_INT ; 
 int /*<<< orphan*/  IWN_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*) ; 
 int FUNC1 (struct iwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC7(void *arg, int npending)
{
	struct iwn_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t tmp;

	FUNC0(sc);
	tmp = FUNC1(sc, IWN_GP_CNTRL);
	FUNC2(sc);

	FUNC4(sc->sc_dev, "RF switch: radio %s\n",
	    (tmp & IWN_GP_CNTRL_RFKILL) ? "enabled" : "disabled");
	if (!(tmp & IWN_GP_CNTRL_RFKILL)) {
		FUNC6(ic);

		/* Enable interrupts to get RF toggle notification. */
		FUNC0(sc);
		FUNC3(sc, IWN_INT, 0xffffffff);
		FUNC3(sc, IWN_INT_MASK, sc->int_mask);
		FUNC2(sc);
	} else
		FUNC5(ic);
}