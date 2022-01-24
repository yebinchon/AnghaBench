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
struct vtnet_softc {int vtnet_flags; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_capenable; } ;

/* Variables and functions */
 int IFCAP_VLAN_HWFILTER ; 
 int VTNET_FLAG_CTRL_RX ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_softc*) ; 

__attribute__((used)) static void
FUNC3(struct vtnet_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->vtnet_ifp;

	if (sc->vtnet_flags & VTNET_FLAG_CTRL_RX) {
		/* Restore promiscuous and all-multicast modes. */
		FUNC0(sc);
		/* Restore filtered MAC addresses. */
		FUNC1(sc);
	}

	if (ifp->if_capenable & IFCAP_VLAN_HWFILTER)
		FUNC2(sc);
}