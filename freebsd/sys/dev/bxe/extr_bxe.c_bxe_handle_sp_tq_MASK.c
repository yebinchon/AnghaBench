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
typedef  int uint16_t ;
struct bxe_softc {int /*<<< orphan*/  def_att_idx; int /*<<< orphan*/  igu_dsb_id; int /*<<< orphan*/  def_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTENTION_ID ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 int BXE_DEF_SB_ATT_IDX ; 
 int BXE_DEF_SB_IDX ; 
 int /*<<< orphan*/  DBG_SP ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 int /*<<< orphan*/  IGU_INT_NOP ; 
 int /*<<< orphan*/  USTORM_ID ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *context,
                 int  pending)
{
    struct bxe_softc *sc = (struct bxe_softc *)context;
    uint16_t status;

    FUNC0(sc, DBG_SP, "---> SP TASK <---\n");

    /* what work needs to be performed? */
    status = FUNC6(sc);

    FUNC0(sc, DBG_SP, "dsb status 0x%04x\n", status);

    /* HW attentions */
    if (status & BXE_DEF_SB_ATT_IDX) {
        FUNC0(sc, DBG_SP, "---> ATTN INTR <---\n");
        FUNC4(sc);
        status &= ~BXE_DEF_SB_ATT_IDX;
    }

    /* SP events: STAT_QUERY and others */
    if (status & BXE_DEF_SB_IDX) {
        /* handle EQ completions */
        FUNC0(sc, DBG_SP, "---> EQ INTR <---\n");
        FUNC5(sc);
        FUNC3(sc, sc->igu_dsb_id, USTORM_ID,
                   FUNC7(sc->def_idx), IGU_INT_NOP, 1);
        status &= ~BXE_DEF_SB_IDX;
    }

    /* if status is non zero then something went wrong */
    if (FUNC2(status)) {
        FUNC1(sc, "Got an unknown SP interrupt! (0x%04x)\n", status);
    }

    /* ack status block only if something was actually handled */
    FUNC3(sc, sc->igu_dsb_id, ATTENTION_ID,
               FUNC7(sc->def_att_idx), IGU_INT_ENABLE, 1);

    /*
     * Must be called after the EQ processing (since eq leads to sriov
     * ramrod completion flows).
     * This flow may have been scheduled by the arrival of a ramrod
     * completion, or by the sriov code rescheduling itself.
     */
    // XXX bxe_iov_sp_task(sc);

}