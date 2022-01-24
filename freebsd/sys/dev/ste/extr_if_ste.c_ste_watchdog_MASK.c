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
struct ste_softc {scalar_t__ ste_timer; struct ifnet* ste_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ste_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ste_softc*) ; 

__attribute__((used)) static void
FUNC9(struct ste_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->ste_ifp;
	FUNC1(sc);

	if (sc->ste_timer == 0 || --sc->ste_timer)
		return;

	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	FUNC3(ifp, "watchdog timeout\n");

	FUNC8(sc);
	FUNC7(sc);
	FUNC5(sc, -1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);

	if (!FUNC0(&ifp->if_snd))
		FUNC6(ifp);
}