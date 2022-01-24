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
struct lance_softc {int /*<<< orphan*/  sc_wdog_ch; struct ifnet* sc_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct lance_softc*) ; 

void
FUNC6(struct lance_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;

	FUNC0(sc);
	FUNC5(sc);
	FUNC1(sc);
	FUNC2(&sc->sc_wdog_ch);
	FUNC3(ifp);
	FUNC4(ifp);
}