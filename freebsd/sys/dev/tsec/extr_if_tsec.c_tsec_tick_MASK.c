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
struct tsec_softc {int tsec_link; int /*<<< orphan*/  tsec_callout; int /*<<< orphan*/  tsec_mii; struct ifnet* tsec_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct tsec_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct tsec_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct tsec_softc *sc = arg;
	struct ifnet *ifp;
	int link;

	FUNC1(sc);

	FUNC6(sc);

	ifp = sc->tsec_ifp;
	link = sc->tsec_link;

	FUNC4(sc->tsec_mii);

	if (link == 0 && sc->tsec_link == 1 &&
	    (!FUNC0(&ifp->if_snd)))
		FUNC5(ifp);

	/* Schedule another timeout one second from now. */
	FUNC3(&sc->tsec_callout, hz, tsec_tick, sc);

	FUNC2(sc);
}