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
struct vtnet_softc {int /*<<< orphan*/  vtnet_flags; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  VTNET_FLAG_SUSPENDED ; 
 struct vtnet_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct vtnet_softc *sc;
	struct ifnet *ifp;

	sc = FUNC2(dev);
	ifp = sc->vtnet_ifp;

	FUNC0(sc);
	if (ifp->if_flags & IFF_UP)
		FUNC3(sc);
	sc->vtnet_flags &= ~VTNET_FLAG_SUSPENDED;
	FUNC1(sc);

	return (0);
}