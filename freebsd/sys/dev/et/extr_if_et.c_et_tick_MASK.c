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
struct et_softc {int /*<<< orphan*/  sc_tick; int /*<<< orphan*/  sc_miibus; struct ifnet* ifp; } ;

/* Variables and functions */
 scalar_t__ EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC0 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct et_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct et_softc*) ; 
 scalar_t__ FUNC4 (struct et_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC6(void *xsc)
{
	struct et_softc *sc;
	struct ifnet *ifp;
	struct mii_data *mii;

	sc = xsc;
	FUNC0(sc);
	ifp = sc->ifp;
	mii = FUNC2(sc->sc_miibus);

	FUNC5(mii);
	FUNC3(sc);
	if (FUNC4(sc) == EJUSTRETURN)
		return;
	FUNC1(&sc->sc_tick, hz, et_tick, sc);
}