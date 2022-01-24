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
struct age_softc {struct ifnet* age_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct age_softc*) ; 
 struct age_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct age_softc *sc;
	struct ifnet *ifp;

	sc = FUNC4(dev);

	FUNC0(sc);
	FUNC3(sc);
	ifp = sc->age_ifp;
	if ((ifp->if_flags & IFF_UP) != 0)
		FUNC2(sc);

	FUNC1(sc);

	return (0);
}