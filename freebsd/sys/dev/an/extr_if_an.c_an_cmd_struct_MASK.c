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
struct an_reply {int an_resp0; int an_resp1; int an_resp2; int an_status; } ;
struct an_command {int an_parm0; int an_parm1; int an_parm2; int an_cmd; } ;

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
 int AN_TIMEOUT ; 
 int FUNC11 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct an_softc *sc, struct an_command *cmd,
    struct an_reply *reply)
{
	int			i;

	FUNC3(sc);
	for (i = 0; i != AN_TIMEOUT; i++) {
		if (FUNC11(sc, FUNC0(sc->mpi350)) & AN_CMD_BUSY) {
			FUNC13(1000);
		} else
			break;
	}

	if( i == AN_TIMEOUT) {
		FUNC14("BUSY\n");
		return(ETIMEDOUT);
	}

	FUNC12(sc, FUNC4(sc->mpi350), cmd->an_parm0);
	FUNC12(sc, FUNC5(sc->mpi350), cmd->an_parm1);
	FUNC12(sc, FUNC6(sc->mpi350), cmd->an_parm2);
	FUNC12(sc, FUNC0(sc->mpi350), cmd->an_cmd);

	for (i = 0; i < AN_TIMEOUT; i++) {
		if (FUNC11(sc, FUNC2(sc->mpi350)) & AN_EV_CMD)
			break;
		FUNC13(1000);
	}

	reply->an_resp0 = FUNC11(sc, FUNC7(sc->mpi350));
	reply->an_resp1 = FUNC11(sc, FUNC8(sc->mpi350));
	reply->an_resp2 = FUNC11(sc, FUNC9(sc->mpi350));
	reply->an_status = FUNC11(sc, FUNC10(sc->mpi350));

	if (FUNC11(sc, FUNC0(sc->mpi350)) & AN_CMD_BUSY)
		FUNC12(sc, FUNC1(sc->mpi350),
		    AN_EV_CLR_STUCK_BUSY);

	/* Ack the command */
	FUNC12(sc, FUNC1(sc->mpi350), AN_EV_CMD);

	if (i == AN_TIMEOUT)
		return(ETIMEDOUT);

	return(0);
}