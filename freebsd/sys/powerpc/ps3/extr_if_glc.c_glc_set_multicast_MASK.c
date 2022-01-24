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
struct ifnet {int if_flags; } ;
struct glc_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int /*<<< orphan*/  glc_add_maddr ; 
 int FUNC0 (struct ifnet*,int /*<<< orphan*/ ,struct glc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct glc_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	int naddrs;

	/* Clear multicast filter */
	FUNC2(sc->sc_bus, sc->sc_dev, 0, 1);

	/* Add broadcast */
	FUNC1(sc->sc_bus, sc->sc_dev,
	    0xffffffffffffL, 0);

	if ((ifp->if_flags & IFF_ALLMULTI) != 0) {
		FUNC1(sc->sc_bus, sc->sc_dev, 0, 1);
	} else {
		naddrs = FUNC0(ifp, glc_add_maddr, sc);
		if (naddrs + 1 == 32)
			FUNC1(sc->sc_bus,
			    sc->sc_dev, 0, 1);
	}
}