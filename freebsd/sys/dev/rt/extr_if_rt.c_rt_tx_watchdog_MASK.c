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
struct rt_softc {scalar_t__ tx_timer; int /*<<< orphan*/  tx_watchdog_ch; int /*<<< orphan*/  tx_watchdog_timeouts; int /*<<< orphan*/  dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct rt_softc *sc;
	struct ifnet *ifp;

	sc = arg;
	ifp = sc->ifp;

	if (sc->tx_timer == 0)
		return;

	if (--sc->tx_timer == 0) {
		FUNC1(sc->dev, "Tx watchdog timeout: resetting\n");
#ifdef notyet
		/*
		 * XXX: Commented out, because reset break input.
		 */
		rt_stop_locked(sc);
		rt_init_locked(sc);
#endif
		FUNC2(ifp, IFCOUNTER_OERRORS, 1);
		sc->tx_watchdog_timeouts++;
	}
	FUNC0(&sc->tx_watchdog_ch, hz, rt_tx_watchdog, sc);
}