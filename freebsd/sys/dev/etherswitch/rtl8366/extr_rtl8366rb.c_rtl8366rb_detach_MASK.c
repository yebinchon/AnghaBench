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
struct rtl8366rb_softc {int numphys; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  callout_mtx; int /*<<< orphan*/  callout_tick; int /*<<< orphan*/ * ifname; int /*<<< orphan*/ ** ifp; scalar_t__* miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct rtl8366rb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct rtl8366rb_softc *sc;
	int i;

	sc = FUNC3(dev);

	for (i=0; i < sc->numphys; i++) {
		if (sc->miibus[i])
			FUNC2(dev, sc->miibus[i]);
		if (sc->ifp[i] != NULL)
			FUNC5(sc->ifp[i]);
		FUNC4(sc->ifname[i], M_DEVBUF);
	}
	FUNC0(dev);
	FUNC1(&sc->callout_tick);
	FUNC6(&sc->callout_mtx);
	FUNC6(&sc->sc_mtx);

	return (0);
}