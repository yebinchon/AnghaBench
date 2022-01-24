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
struct lance_softc {scalar_t__ sc_wdog_timer; int /*<<< orphan*/  sc_wdog_ch; struct ifnet* sc_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct lance_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct lance_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_softc*) ; 

__attribute__((used)) static void
FUNC5(void *xsc)
{
	struct lance_softc *sc = (struct lance_softc *)xsc;
	struct ifnet *ifp = sc->sc_ifp;

	FUNC0(sc, MA_OWNED);

	if (sc->sc_wdog_timer == 0 || --sc->sc_wdog_timer != 0) {
		FUNC1(&sc->sc_wdog_ch, hz, lance_watchdog, sc);
		return;
	}

	FUNC3(ifp, "device timeout\n");
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	FUNC4(sc);
}