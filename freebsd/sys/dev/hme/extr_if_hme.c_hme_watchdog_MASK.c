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
typedef  int /*<<< orphan*/  u_int ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct hme_softc {scalar_t__ sc_wdog_timer; int sc_flags; int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EJUSTRETURN ; 
 int HME_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HME_SEBI_STAT ; 
 scalar_t__ FUNC2 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  KTR_HME ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct hme_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;

	FUNC1(sc, MA_OWNED);

#ifdef HMEDEBUG
	CTR1(KTR_HME, "hme_watchdog: status %x",
	    (u_int)HME_SEB_READ_4(sc, HME_SEBI_STAT));
#endif

	if (sc->sc_wdog_timer == 0 || --sc->sc_wdog_timer != 0)
		return (0);

	if ((sc->sc_flags & HME_LINK) != 0)
		FUNC3(sc->sc_dev, "device timeout\n");
	else if (bootverbose)
		FUNC3(sc->sc_dev, "device timeout (no link)\n");
	FUNC6(ifp, IFCOUNTER_OERRORS, 1);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);
	FUNC5(ifp);
	return (EJUSTRETURN);
}