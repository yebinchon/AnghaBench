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
struct vtnet_softc {struct ifnet* vtnet_ifp; int /*<<< orphan*/  vtnet_dev; } ;
struct ifnet {int if_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (struct vtnet_softc*,int) ; 
 scalar_t__ FUNC3 (struct vtnet_softc*,int) ; 

__attribute__((used)) static void
FUNC4(struct vtnet_softc *sc)
{
	device_t dev;
	struct ifnet *ifp;

	dev = sc->vtnet_dev;
	ifp = sc->vtnet_ifp;

	FUNC0(sc);

	if (FUNC3(sc, ifp->if_flags & IFF_PROMISC) != 0)
		FUNC1(dev, "cannot %s promiscuous mode\n",
		    ifp->if_flags & IFF_PROMISC ? "enable" : "disable");

	if (FUNC2(sc, ifp->if_flags & IFF_ALLMULTI) != 0)
		FUNC1(dev, "cannot %s all-multicast mode\n",
		    ifp->if_flags & IFF_ALLMULTI ? "enable" : "disable");
}