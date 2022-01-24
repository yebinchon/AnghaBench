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
struct ncr53c9x_softc {int sc_ntarg; struct ncr53c9x_linfo* sc_omess; scalar_t__ sc_omess_self; struct ncr53c9x_linfo* sc_imess; scalar_t__ sc_imess_self; struct ncr53c9x_linfo* sc_tinfo; struct ncr53c9x_linfo* ecb_array; int /*<<< orphan*/  sc_sim; int /*<<< orphan*/  sc_path; int /*<<< orphan*/  sc_watchdog; } ;
struct ncr53c9x_linfo {int /*<<< orphan*/  luns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 struct ncr53c9x_linfo* FUNC0 (int /*<<< orphan*/ *) ; 
 struct ncr53c9x_linfo* FUNC1 (struct ncr53c9x_linfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ncr53c9x_linfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  ncr53c9x_async ; 
 int /*<<< orphan*/  FUNC8 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(struct ncr53c9x_softc *sc)
{
	struct ncr53c9x_linfo *li, *nextli;
	int t;

	FUNC4(&sc->sc_watchdog);

	FUNC2(sc);

	if (sc->sc_tinfo) {
		/* Cancel all commands. */
		FUNC8(sc, CAM_REQ_ABORTED);

		/* Free logical units. */
		for (t = 0; t < sc->sc_ntarg; t++) {
			for (li = FUNC0(&sc->sc_tinfo[t].luns); li;
			    li = nextli) {
				nextli = FUNC1(li, link);
				FUNC7(li, M_DEVBUF);
			}
		}
	}

	FUNC11(0, ncr53c9x_async, sc->sc_sim, sc->sc_path);
	FUNC10(sc->sc_path);
	FUNC9(FUNC6(sc->sc_sim));
	FUNC5(sc->sc_sim, TRUE);

	FUNC3(sc);

	FUNC7(sc->ecb_array, M_DEVBUF);
	FUNC7(sc->sc_tinfo, M_DEVBUF);
	if (sc->sc_imess_self)
		FUNC7(sc->sc_imess, M_DEVBUF);
	if (sc->sc_omess_self)
		FUNC7(sc->sc_omess, M_DEVBUF);

	return (0);
}