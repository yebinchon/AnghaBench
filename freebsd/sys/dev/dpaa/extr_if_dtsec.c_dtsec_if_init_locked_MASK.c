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
typedef  int /*<<< orphan*/  t_EnetAddr ;
struct dtsec_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* sc_ifnet; int /*<<< orphan*/  sc_tick_callout; scalar_t__ sc_mii; int /*<<< orphan*/  sc_mach; } ;
struct TYPE_2__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 int E_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int IFF_UP ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dtsec_softc*) ; 
 int FUNC6 (struct dtsec_softc*) ; 
 int FUNC7 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  dtsec_if_tick ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC8(struct dtsec_softc *sc)
{
	int error;

	FUNC0(sc);

	/* Set MAC address */
	error = FUNC1(sc->sc_mach,
	    (t_EnetAddr *)FUNC2(sc->sc_ifnet));
	if (error != E_OK) {
		FUNC4(sc->sc_dev, "couldn't set MAC address.\n");
		goto err;
	}

	/* Start MII polling */
	if (sc->sc_mii)
		FUNC3(&sc->sc_tick_callout, hz, dtsec_if_tick, sc);

	if (sc->sc_ifnet->if_flags & IFF_UP) {
		error = FUNC7(sc);
		if (error != 0)
			goto err;
	} else {
		error = FUNC6(sc);
		if (error != 0)
			goto err;
	}

	return;

err:
	FUNC5(sc);
	FUNC4(sc->sc_dev, "initialization error.\n");
	return;
}