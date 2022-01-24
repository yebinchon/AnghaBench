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
 int FUNC1 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, int uSec)
{
	int		statword = 0xffff;
	int		delay = 0;
	struct an_softc	*sc = ifp->if_softc;

	while ((statword & AN_CMD_BUSY) && delay <= (1000 * 100)) {
		FUNC2(sc, 10);
		delay += 10;
		statword = FUNC1(sc, FUNC0(sc->mpi350));

		if ((AN_CMD_BUSY & statword) && (delay % 200)) {
			FUNC3(ifp);
		}
	}

	return 0 == (AN_CMD_BUSY & statword);
}