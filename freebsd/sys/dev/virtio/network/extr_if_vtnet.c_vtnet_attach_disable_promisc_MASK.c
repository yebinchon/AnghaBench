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
struct vtnet_softc {int vtnet_flags; int /*<<< orphan*/  vtnet_dev; struct ifnet* vtnet_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_softc*) ; 
 int VTNET_FLAG_CTRL_RX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct vtnet_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vtnet_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->vtnet_ifp;

	FUNC0(sc);
	if ((sc->vtnet_flags & VTNET_FLAG_CTRL_RX) == 0) {
		ifp->if_flags |= IFF_PROMISC;
	} else if (FUNC3(sc, 0) != 0) {
		ifp->if_flags |= IFF_PROMISC;
		FUNC2(sc->vtnet_dev,
		    "cannot disable default promiscuous mode\n");
	}
	FUNC1(sc);
}