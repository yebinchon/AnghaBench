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
struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int /*<<< orphan*/  mpi350; } ;

/* Variables and functions */
 int AN_CMD_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AN_EV_CLR_STUCK_BUSY ; 
 int FUNC2 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp)
{
	struct an_softc *sc = ifp->if_softc;

	if (FUNC2(sc, FUNC0(sc->mpi350)) & AN_CMD_BUSY) {
		FUNC3(sc, FUNC1(sc->mpi350),
			    AN_EV_CLR_STUCK_BUSY);
		return 1;
	}
	return 0;
}