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
struct nge_softc {int nge_flags; int /*<<< orphan*/  nge_stat_ch; int /*<<< orphan*/  nge_dev; int /*<<< orphan*/  nge_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int NGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct nge_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct nge_softc*) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct nge_softc *sc;
	struct mii_data *mii;

	sc = xsc;
	FUNC0(sc);
	mii = FUNC2(sc->nge_miibus);
	FUNC3(mii);
	/*
	 * For PHYs that does not reset established link, it is
	 * necessary to check whether driver still have a valid
	 * link(e.g link state change callback is not called).
	 * Otherwise, driver think it lost link because driver
	 * initialization routine clears link state flag.
	 */
	if ((sc->nge_flags & NGE_FLAG_LINK) == 0)
		FUNC4(sc->nge_dev);
	FUNC5(sc);
	FUNC6(sc);
	FUNC1(&sc->nge_stat_ch, hz, nge_tick, sc);
}