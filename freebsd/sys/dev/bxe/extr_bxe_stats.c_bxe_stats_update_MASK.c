#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {int /*<<< orphan*/  sp_err_timeout_task; int /*<<< orphan*/  ifp; int /*<<< orphan*/  stats_pending; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  BXE_ERR_STATS_TO ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ DMAE_COMP_VAL ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*) ; 
 scalar_t__ FUNC11 (struct bxe_softc*) ; 
 int hz ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__* stats_comp ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC14(struct bxe_softc *sc)
{
    uint32_t *stats_comp = FUNC2(sc, stats_comp);

    if (FUNC6(sc)) {
        return;
    }

    if (FUNC3(sc)) {
        if (*stats_comp != DMAE_COMP_VAL) {
            return;
        }

        if (sc->port.pmf) {
            FUNC8(sc);
        }

        if (FUNC11(sc)) {
            if (sc->stats_pending++ == 3) {
		if (FUNC12(sc->ifp) & IFF_DRV_RUNNING) {
		    FUNC0(sc, "Storm stats not updated for 3 times, resetting\n");
		    FUNC1(sc, BXE_ERR_STATS_TO);
		    FUNC13(taskqueue_thread,
                            &sc->sp_err_timeout_task, hz/10);
		}
            }
            return;
        }
    } else {
        /*
         * VF doesn't collect HW statistics, and doesn't get completions,
         * performs only update.
         */
        FUNC11(sc);
    }

    FUNC9(sc);
    FUNC5(sc);

    /* vf is done */
    if (FUNC4(sc)) {
        return;
    }

    FUNC7(sc);
    FUNC10(sc);
}