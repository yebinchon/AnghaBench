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
struct ath_softc {int /*<<< orphan*/  sc_dev; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath_softc*) ; 
 int FUNC1 (struct ath_softc*) ; 
 int FUNC2 (struct ath_softc*) ; 
 int FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

int
FUNC9(struct ath_softc *sc)
{
	int ret;
	struct ath_hal *ah = sc->sc_ah;
	const char *profname;

	/*
	 * No chipset bluetooth coexistence? Then do nothing.
	 */
	if (! FUNC4(ah))
		return (0);

	/*
	 * Look at the hints to determine which bluetooth
	 * profile to configure.
	 */
	ret = FUNC7(FUNC5(sc->sc_dev),
	    FUNC6(sc->sc_dev),
	    "btcoex_profile",
	    &profname);
	if (ret != 0) {
		/* nothing to do */
		return (0);
	}

	if (FUNC8(profname, "wb195", 5) == 0) {
		ret = FUNC0(sc);
	} else if (FUNC8(profname, "wb222", 5) == 0) {
		ret = FUNC1(sc);
	} else if (FUNC8(profname, "wb225", 5) == 0) {
		ret = FUNC2(sc);
	} else if (FUNC8(profname, "wb335", 5) == 0) {
		ret = FUNC3(sc);
	} else {
		return (0);
	}

	/*
	 * Propagate up failure from the actual attach phase.
	 */
	if (ret != 0)
		return (ret);

	return (0);
}