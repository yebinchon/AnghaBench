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
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {int /*<<< orphan*/  fp_hc_idx; int /*<<< orphan*/  igu_sb_id; int /*<<< orphan*/  tq_task; int /*<<< orphan*/  tq; int /*<<< orphan*/  index; struct bxe_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 int /*<<< orphan*/  USTORM_ID ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct bxe_fastpath*) ; 
 scalar_t__ FUNC5 (struct bxe_fastpath*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*,struct bxe_fastpath*) ; 
 scalar_t__ FUNC7 (struct bxe_softc*,struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct bxe_fastpath *fp)
{
    struct bxe_softc *sc = fp->sc;
    uint8_t more_tx = FALSE;
    uint8_t more_rx = FALSE;

    FUNC0(sc, DBG_INTR, "---> FP TASK ISR (%d) <---\n", fp->index);

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
        /* still more work to do, bail out if this ISR and process later */
        FUNC10(fp->tq, &fp->tq_task);
        return;
    }

    /*
     * Here we write the fastpath index taken before doing any tx or rx work.
     * It is very well possible other hw events occurred up to this point and
     * they were actually processed accordingly above. Since we're going to
     * write an older fastpath index, an interrupt is coming which we might
     * not do any work in.
     */
    FUNC3(sc, fp->igu_sb_id, USTORM_ID,
               FUNC9(fp->fp_hc_idx), IGU_INT_ENABLE, 1);
}