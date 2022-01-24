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
struct mii_data {int dummy; } ;
struct ifnet {int dummy; } ;
struct atse_softc {int atse_flags; int /*<<< orphan*/  atse_tick; int /*<<< orphan*/  atse_dev; int /*<<< orphan*/  atse_miibus; struct ifnet* atse_ifp; } ;

/* Variables and functions */
 int ATSE_FLAGS_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct atse_softc*) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC5(void *xsc)
{
	struct atse_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;

	sc = (struct atse_softc *)xsc;
	FUNC0(sc);
	ifp = sc->atse_ifp;

	mii = FUNC3(sc->atse_miibus);
	FUNC4(mii);
	if ((sc->atse_flags & ATSE_FLAGS_LINK) == 0) {
		FUNC1(sc->atse_dev);
	}

	FUNC2(&sc->atse_tick, hz, atse_tick, sc);
}