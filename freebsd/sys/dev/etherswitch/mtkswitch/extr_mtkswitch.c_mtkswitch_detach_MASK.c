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
struct mtkswitch_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * ifname; int /*<<< orphan*/ ** ifp; int /*<<< orphan*/ ** miibus; int /*<<< orphan*/  callout_tick; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MTKSWITCH_MAX_PHYS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mtkswitch_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mtkswitch_softc *sc = FUNC3(dev);
	int phy;

	FUNC1(&sc->callout_tick);

	for (phy = 0; phy < MTKSWITCH_MAX_PHYS; phy++) {
		if (sc->miibus[phy] != NULL)
			FUNC2(dev, sc->miibus[phy]);
		if (sc->ifp[phy] != NULL)
			FUNC5(sc->ifp[phy]);
		FUNC4(sc->ifname[phy], M_DEVBUF);
	}

	FUNC0(dev);
	FUNC6(&sc->sc_mtx);

	return (0);
}