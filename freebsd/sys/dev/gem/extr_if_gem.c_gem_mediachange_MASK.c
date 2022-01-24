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
struct ifnet {struct gem_softc* if_softc; } ;
struct gem_softc {int /*<<< orphan*/  sc_mii; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gem_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct ifnet *ifp)
{
	struct gem_softc *sc = ifp->if_softc;
	int error;

	/* XXX add support for serial media. */

	FUNC0(sc);
	error = FUNC2(sc->sc_mii);
	FUNC1(sc);
	return (error);
}