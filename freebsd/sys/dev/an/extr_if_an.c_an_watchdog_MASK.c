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
struct ifnet {int dummy; } ;
struct an_softc {scalar_t__ mpi350; struct ifnet* an_ifp; scalar_t__ an_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 

__attribute__((used)) static void
FUNC6(struct an_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->an_gone)
		return;

	ifp = sc->an_ifp;
	FUNC5(ifp, "device timeout\n");

	FUNC3(sc);
	if (sc->mpi350)
		FUNC2(sc);
	FUNC1(sc);

	FUNC4(ifp, IFCOUNTER_OERRORS, 1);
}