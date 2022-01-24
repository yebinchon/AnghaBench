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
typedef  scalar_t__ uint8_t ;
struct bxe_softc {int /*<<< orphan*/  ifp; } ;
struct bxe_fastpath {int /*<<< orphan*/  fp_hc_idx; int /*<<< orphan*/  igu_sb_id; int /*<<< orphan*/  tq_task; int /*<<< orphan*/  tq; int /*<<< orphan*/  index; struct bxe_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 scalar_t__ FALSE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 int /*<<< orphan*/  USTORM_ID ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct bxe_fastpath*) ; 
 scalar_t__ FUNC5 (struct bxe_fastpath*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*,struct bxe_fastpath*) ; 
 scalar_t__ FUNC7 (struct bxe_softc*,struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_fastpath*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void *context,
                 int  pending)
{
    struct bxe_fastpath *fp = (struct bxe_fastpath *)context;
    struct bxe_softc *sc = fp->sc;
    uint8_t more_tx = FALSE;
    uint8_t more_rx = FALSE;

    FUNC0(sc, DBG_INTR, "---> FP TASK QUEUE (%d) <---\n", fp->index);

    /* XXX
     * IFF_DRV_RUNNING state can't be checked here since we process
     * slowpath events on a client queue during setup. Instead
     * we need to add a "process/continue" flag here that the driver
     * can use to tell the task here not to do anything.
     */
#if 0
    if (!(if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING)) {
        return;
    }
#endif

    /* update the fastpath index */
    FUNC8(fp);

    /* XXX add loop here if ever support multiple tx CoS */
    /* fp->txdata[cos] */
    if (FUNC5(fp)) {
        FUNC1(fp);
        more_tx = FUNC7(sc, fp);
        FUNC2(fp);
    }

    if (FUNC4(fp)) {
        more_rx = FUNC6(sc, fp);
    }

    if (more_rx /*|| more_tx*/) {
        /* still more work to do */
        FUNC11(fp->tq, &fp->tq_task);
        return;
    }

    FUNC3(sc, fp->igu_sb_id, USTORM_ID,
               FUNC10(fp->fp_hc_idx), IGU_INT_ENABLE, 1);
}