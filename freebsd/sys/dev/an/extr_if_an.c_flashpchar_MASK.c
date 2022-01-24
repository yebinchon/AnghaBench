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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, int byte, int dwelltime)
{
	int		echo;
	int		pollbusy, waittime;
	struct an_softc	*sc = ifp->if_softc;

	byte |= 0x8000;

	if (dwelltime == 0)
		dwelltime = 200;

	waittime = dwelltime;

	/*
	 * Wait for busy bit d15 to go false indicating buffer empty
	 */
	do {
		pollbusy = FUNC2(sc, FUNC0(sc->mpi350));

		if (pollbusy & 0x8000) {
			FUNC4(sc, 50);
			waittime -= 50;
			continue;
		} else
			break;
	}
	while (waittime >= 0);

	/* timeout for busy clear wait */

	if (waittime <= 0) {
		FUNC5(ifp, "flash putchar busywait timeout!\n");
		return -1;
	}
	/*
	 * Port is clear now write byte and wait for it to echo back
	 */
	do {
		FUNC3(sc, FUNC0(sc->mpi350), byte);
		FUNC4(sc, 50);
		dwelltime -= 50;
		echo = FUNC2(sc, FUNC1(sc->mpi350));
	} while (dwelltime >= 0 && echo != byte);


	FUNC3(sc, FUNC1(sc->mpi350), 0);

	return echo == byte;
}