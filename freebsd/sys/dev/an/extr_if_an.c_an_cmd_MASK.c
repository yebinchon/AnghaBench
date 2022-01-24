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
struct an_softc {int /*<<< orphan*/  mpi350; } ;

/* Variables and functions */
 int AN_CMD_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int AN_EV_CLR_STUCK_BUSY ; 
 int AN_EV_CMD ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int AN_STAT_CMD_CODE ; 
 int AN_TIMEOUT ; 
 int FUNC11 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 

__attribute__((used)) static int
FUNC13(struct an_softc *sc, int cmd, int val)
{
	int			i, s = 0;

	FUNC3(sc);
	FUNC12(sc, FUNC4(sc->mpi350), val);
	FUNC12(sc, FUNC5(sc->mpi350), 0);
	FUNC12(sc, FUNC6(sc->mpi350), 0);
	FUNC12(sc, FUNC0(sc->mpi350), cmd);

	for (i = 0; i < AN_TIMEOUT; i++) {
		if (FUNC11(sc, FUNC2(sc->mpi350)) & AN_EV_CMD)
			break;
		else {
			if (FUNC11(sc, FUNC0(sc->mpi350)) == cmd)
				FUNC12(sc, FUNC0(sc->mpi350), cmd);
		}
	}

	for (i = 0; i < AN_TIMEOUT; i++) {
		FUNC11(sc, FUNC7(sc->mpi350));
		FUNC11(sc, FUNC8(sc->mpi350));
		FUNC11(sc, FUNC9(sc->mpi350));
		s = FUNC11(sc, FUNC10(sc->mpi350));
		if ((s & AN_STAT_CMD_CODE) == (cmd & AN_STAT_CMD_CODE))
			break;
	}

	/* Ack the command */
	FUNC12(sc, FUNC1(sc->mpi350), AN_EV_CMD);

	if (FUNC11(sc, FUNC0(sc->mpi350)) & AN_CMD_BUSY)
		FUNC12(sc, FUNC1(sc->mpi350), AN_EV_CLR_STUCK_BUSY);

	if (i == AN_TIMEOUT)
		return(ETIMEDOUT);

	return(0);
}