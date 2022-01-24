#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  xferlist; } ;
struct TYPE_3__ {int /*<<< orphan*/  fc; int /*<<< orphan*/ * post_busreset; } ;
struct sbp_targ_softc {int /*<<< orphan*/  mtx; TYPE_2__ fwb; TYPE_1__ fd; struct sbp_targ_lstate* black_hole; struct sbp_targ_lstate** lstate; int /*<<< orphan*/  sim; int /*<<< orphan*/  path; } ;
struct sbp_targ_lstate {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MAX_LUN ; 
 int /*<<< orphan*/  M_SBP_TARG ; 
 int /*<<< orphan*/  FUNC0 (struct sbp_targ_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbp_targ_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sbp_targ_lstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct sbp_targ_softc *sc;
	struct sbp_targ_lstate *lstate;
	int i;

	sc = (struct sbp_targ_softc *)FUNC4(dev);
	sc->fd.post_busreset = NULL;

	FUNC0(sc);
	FUNC10(sc->path);
	FUNC9(FUNC3(sc->sim));
	FUNC2(sc->sim, /*free_devq*/TRUE);
	FUNC1(sc);

	for (i = 0; i < MAX_LUN; i++) {
		lstate = sc->lstate[i];
		if (lstate != NULL) {
			FUNC10(lstate->path);
			FUNC5(lstate, M_SBP_TARG);
		}
	}
	if (sc->black_hole != NULL) {
		FUNC10(sc->black_hole->path);
		FUNC5(sc->black_hole, M_SBP_TARG);
	}

	FUNC6(sc->fd.fc, &sc->fwb);
	FUNC7(&sc->fwb.xferlist);

	FUNC8(&sc->mtx);

	return 0;
}