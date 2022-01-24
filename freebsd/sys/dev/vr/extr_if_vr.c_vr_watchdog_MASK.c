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
struct TYPE_2__ {scalar_t__ vr_tx_cnt; } ;
struct vr_softc {scalar_t__ vr_watchdog_timer; int vr_flags; struct ifnet* vr_ifp; TYPE_1__ vr_cdata; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VR_F_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct vr_softc*) ; 

__attribute__((used)) static void
FUNC7(struct vr_softc *sc)
{
	struct ifnet		*ifp;

	FUNC1(sc);

	if (sc->vr_watchdog_timer == 0 || --sc->vr_watchdog_timer)
		return;

	ifp = sc->vr_ifp;
	/*
	 * Reclaim first as we don't request interrupt for every packets.
	 */
	FUNC6(sc);
	if (sc->vr_cdata.vr_tx_cnt == 0)
		return;

	if ((sc->vr_flags & VR_F_LINK) == 0) {
		if (bootverbose)
			FUNC3(sc->vr_ifp, "watchdog timeout "
			   "(missed link)\n");
		FUNC2(ifp, IFCOUNTER_OERRORS, 1);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC4(sc);
		return;
	}

	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	FUNC3(ifp, "watchdog timeout\n");

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);

	if (!FUNC0(&ifp->if_snd))
		FUNC5(ifp);
}