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
struct TYPE_2__ {scalar_t__ jme_tx_cnt; } ;
struct jme_softc {scalar_t__ jme_watchdog_timer; int jme_flags; struct ifnet* jme_ifp; TYPE_1__ jme_cdata; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int JME_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_softc*) ; 

__attribute__((used)) static void
FUNC7(struct jme_softc *sc)
{
	struct ifnet *ifp;

	FUNC1(sc);

	if (sc->jme_watchdog_timer == 0 || --sc->jme_watchdog_timer)
		return;

	ifp = sc->jme_ifp;
	if ((sc->jme_flags & JME_FLAG_LINK) == 0) {
		FUNC3(sc->jme_ifp, "watchdog timeout (missed link)\n");
		FUNC2(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC4(sc);
		return;
	}
	FUNC6(sc);
	if (sc->jme_cdata.jme_tx_cnt == 0) {
		FUNC3(sc->jme_ifp,
		    "watchdog timeout (missed Tx interrupts) -- recovering\n");
		if (!FUNC0(&ifp->if_snd))
			FUNC5(ifp);
		return;
	}

	FUNC3(sc->jme_ifp, "watchdog timeout\n");
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);
	if (!FUNC0(&ifp->if_snd))
		FUNC5(ifp);
}