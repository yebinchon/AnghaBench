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
struct an_softc {scalar_t__ an_monitor; scalar_t__ an_was_monitor; scalar_t__ mpi350; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_CMD_SET_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*) ; 

__attribute__((used)) static void
FUNC5(struct an_softc *sc, int promisc)
{
	FUNC0(sc);
	if (sc->an_was_monitor) {
		FUNC4(sc);
		if (sc->mpi350)
			FUNC3(sc);
	}
	if (sc->an_monitor || sc->an_was_monitor)
		FUNC2(sc);

	sc->an_was_monitor = sc->an_monitor;
	FUNC1(sc, AN_CMD_SET_MODE, promisc ? 0xffff : 0);

	return;
}