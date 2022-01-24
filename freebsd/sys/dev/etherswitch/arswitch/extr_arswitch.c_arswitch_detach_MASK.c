#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  entries; } ;
struct arswitch_softc {int numphys; int /*<<< orphan*/  sc_mtx; TYPE_1__ atu; int /*<<< orphan*/ * ifname; int /*<<< orphan*/ ** ifp; int /*<<< orphan*/ ** miibus; int /*<<< orphan*/  callout_tick; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct arswitch_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct arswitch_softc *sc = FUNC3(dev);
	int i;

	FUNC1(&sc->callout_tick);

	for (i=0; i < sc->numphys; i++) {
		if (sc->miibus[i] != NULL)
			FUNC2(dev, sc->miibus[i]);
		if (sc->ifp[i] != NULL)
			FUNC5(sc->ifp[i]);
		FUNC4(sc->ifname[i], M_DEVBUF);
	}

	FUNC4(sc->atu.entries, M_DEVBUF);

	FUNC0(dev);
	FUNC6(&sc->sc_mtx);

	return (0);
}