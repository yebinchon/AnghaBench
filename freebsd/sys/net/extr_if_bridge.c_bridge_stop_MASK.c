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
struct ifnet {int if_drv_flags; struct bridge_softc* if_softc; } ;
struct bridge_softc {int /*<<< orphan*/  sc_stp; int /*<<< orphan*/  sc_brcallout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int /*<<< orphan*/  IFBF_FLUSHDYN ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, int disable)
{
	struct bridge_softc *sc = ifp->if_softc;

	FUNC0(sc);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	FUNC3(&sc->sc_brcallout);
	FUNC2(&sc->sc_stp);

	FUNC1(sc, IFBF_FLUSHDYN);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
}