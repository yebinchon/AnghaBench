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
struct uhso_softc {int /*<<< orphan*/  sc_mtx; struct ifnet* sc_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uhso_softc*) ; 

__attribute__((used)) static void
FUNC4(void *priv)
{
	struct uhso_softc *sc = priv;
	struct ifnet *ifp = sc->sc_ifp;

	FUNC1(&sc->sc_mtx);
	FUNC3(sc);
	ifp = sc->sc_ifp;
	ifp->if_flags |= IFF_UP;
	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC2(&sc->sc_mtx);

	FUNC0(2, "ifnet initialized\n");
}