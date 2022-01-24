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
struct vge_softc {scalar_t__ vge_timer; struct ifnet* vge_ifp; int /*<<< orphan*/  vge_watchdog; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct vge_softc*) ; 
 int /*<<< orphan*/  VGE_RX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct vge_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vge_softc*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct vge_softc *sc;
	struct ifnet *ifp;

	sc = arg;
	FUNC0(sc);
	FUNC6(sc);
	FUNC1(&sc->vge_watchdog, hz, vge_watchdog, sc);
	if (sc->vge_timer == 0 || --sc->vge_timer > 0)
		return;

	ifp = sc->vge_ifp;
	FUNC3(ifp, "watchdog timeout\n");
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);

	FUNC7(sc);
	FUNC5(sc, VGE_RX_DESC_CNT);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);
}