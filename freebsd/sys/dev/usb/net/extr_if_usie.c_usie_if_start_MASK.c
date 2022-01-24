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
struct usie_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_if_xfer; } ;
struct ifnet {int if_drv_flags; struct usie_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int IFF_DRV_RUNNING ; 
 size_t USIE_IF_TX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct usie_softc *sc = ifp->if_softc;

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
		FUNC0("Not running\n");
		return;
	}
	FUNC2(&sc->sc_mtx);
	FUNC4(sc->sc_if_xfer[USIE_IF_TX]);
	FUNC3(&sc->sc_mtx);

	FUNC1(3, "interface started\n");
}