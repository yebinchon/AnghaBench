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
struct ifnet {int if_flags; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct bfe_softc {struct ifnet* bfe_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 struct bfe_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct bfe_softc *sc;
	struct ifnet *ifp;

	sc = FUNC6(dev);
	ifp = sc->bfe_ifp;
	FUNC0(sc);
	FUNC3(sc);
	if (ifp->if_flags & IFF_UP) {
		FUNC4(sc);
		if (ifp->if_drv_flags & IFF_DRV_RUNNING &&
		    !FUNC2(&ifp->if_snd))
			FUNC5(ifp);
	}
	FUNC1(sc);

	return (0);
}