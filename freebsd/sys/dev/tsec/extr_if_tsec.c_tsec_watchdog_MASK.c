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
struct tsec_softc {scalar_t__ tsec_watchdog; struct ifnet* tsec_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct tsec_softc*) ; 

__attribute__((used)) static void
FUNC5(struct tsec_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->tsec_watchdog == 0 || --sc->tsec_watchdog > 0)
		return;

	ifp = sc->tsec_ifp;
	FUNC1(ifp, IFCOUNTER_OERRORS, 1);
	FUNC2(ifp, "watchdog timeout\n");

	FUNC4(sc);
	FUNC3(sc);
}