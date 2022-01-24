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
struct gem_softc {int /*<<< orphan*/  sc_flags; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEM_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct gem_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*) ; 

void
FUNC3(struct gem_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;

	FUNC0(sc);
	/*
	 * On resume all registers have to be initialized again like
	 * after power-on.
	 */
	sc->sc_flags &= ~GEM_INITED;
	if (ifp->if_flags & IFF_UP)
		FUNC2(sc);
	FUNC1(sc);
}