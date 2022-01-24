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
struct vtbe_softc {struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct vtbe_softc*) ; 

__attribute__((used)) static void
FUNC1(struct vtbe_softc *sc)
{
	struct ifnet *ifp = sc->ifp;

	FUNC0(sc);

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
}