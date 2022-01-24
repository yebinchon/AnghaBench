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
struct my_softc {scalar_t__ my_timer; struct ifnet* my_ifp; int /*<<< orphan*/  my_watchdog; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*) ; 
 int /*<<< orphan*/  PHY_BMSR ; 
 int PHY_BMSR_LINKSTAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct my_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct my_softc*) ; 
 int FUNC6 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct my_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct my_softc *sc;
	struct ifnet *ifp;

	sc = arg;
	FUNC1(sc);
	FUNC2(&sc->my_watchdog, hz, my_watchdog, sc);
	if (sc->my_timer == 0 || --sc->my_timer > 0)
		return;

	ifp = sc->my_ifp;
	FUNC3(ifp, IFCOUNTER_OERRORS, 1);
	FUNC4(ifp, "watchdog timeout\n");
	if (!(FUNC6(sc, PHY_BMSR) & PHY_BMSR_LINKSTAT))
		FUNC4(ifp, "no carrier - transceiver cable problem?\n");
	FUNC9(sc);
	FUNC7(sc);
	FUNC5(sc);
	if (!FUNC0(&ifp->if_snd))
		FUNC8(ifp);
}