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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MISC_REG_UNPREPARED ; 
 int /*<<< orphan*/  PGLUE_B_REG_LATCHED_ERRORS_CLR ; 
 int /*<<< orphan*/  PGLUE_B_REG_TAGS_63_32 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_EXP_ROM2 ; 
 int /*<<< orphan*/  PXP2_REG_RD_BLK_CNT ; 
 int /*<<< orphan*/  PXP2_REG_RD_PORT_IS_IDLE_0 ; 
 int /*<<< orphan*/  PXP2_REG_RD_PORT_IS_IDLE_1 ; 
 int /*<<< orphan*/  PXP2_REG_RD_SR_CNT ; 
 int FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 scalar_t__ FUNC10 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int
FUNC15(struct bxe_softc *sc,
                 uint8_t          global)
{
    int cnt = 1000;
    uint32_t val = 0;
    uint32_t sr_cnt, blk_cnt, port_is_idle_0, port_is_idle_1, pgl_exp_rom2;
    uint32_t tags_63_32 = 0;

    /* Empty the Tetris buffer, wait for 1s */
    do {
        sr_cnt  = FUNC5(sc, PXP2_REG_RD_SR_CNT);
        blk_cnt = FUNC5(sc, PXP2_REG_RD_BLK_CNT);
        port_is_idle_0 = FUNC5(sc, PXP2_REG_RD_PORT_IS_IDLE_0);
        port_is_idle_1 = FUNC5(sc, PXP2_REG_RD_PORT_IS_IDLE_1);
        pgl_exp_rom2 = FUNC5(sc, PXP2_REG_PGL_EXP_ROM2);
        if (FUNC3(sc)) {
            tags_63_32 = FUNC5(sc, PGLUE_B_REG_TAGS_63_32);
        }

        if ((sr_cnt == 0x7e) && (blk_cnt == 0xa0) &&
            ((port_is_idle_0 & 0x1) == 0x1) &&
            ((port_is_idle_1 & 0x1) == 0x1) &&
            (pgl_exp_rom2 == 0xffffffff) &&
            (!FUNC3(sc) || (tags_63_32 == 0xffffffff)))
            break;
        FUNC4(1000);
    } while (cnt-- > 0);

    if (cnt <= 0) {
        FUNC0(sc, "ERROR: Tetris buffer didn't get empty or there "
                  "are still outstanding read requests after 1s! "
                  "sr_cnt=0x%08x, blk_cnt=0x%08x, port_is_idle_0=0x%08x, "
                  "port_is_idle_1=0x%08x, pgl_exp_rom2=0x%08x\n",
              sr_cnt, blk_cnt, port_is_idle_0,
              port_is_idle_1, pgl_exp_rom2);
        return (-1);
    }

    FUNC13();

    /* Close gates #2, #3 and #4 */
    FUNC12(sc, TRUE);

    /* Poll for IGU VQs for 57712 and newer chips */
    if (!FUNC2(sc) && FUNC7(sc)) {
        return (-1);
    }

    /* XXX indicate that "process kill" is in progress to MCP */

    /* clear "unprepared" bit */
    FUNC6(sc, MISC_REG_UNPREPARED, 0);
    FUNC13();

    /* Make sure all is written to the chip before the reset */
    FUNC14();

    /*
     * Wait for 1ms to empty GLUE and PCI-E core queues,
     * PSWHST, GRC and PSWRD Tetris buffer.
     */
    FUNC4(1000);

    /* Prepare to chip reset: */
    /* MCP */
    if (global) {
        FUNC11(sc, &val);
    }

    /* PXP */
    FUNC9(sc);
    FUNC13();

    /* reset the chip */
    FUNC8(sc, global);
    FUNC13();

    /* clear errors in PGB */
    if (!FUNC1(sc))
        FUNC6(sc, PGLUE_B_REG_LATCHED_ERRORS_CLR, 0x7f);

    /* Recover after reset: */
    /* MCP */
    if (global && FUNC10(sc, val)) {
        return (-1);
    }

    /* XXX add resetting the NO_MCP mode DB here */

    /* Open the gates #2, #3 and #4 */
    FUNC12(sc, FALSE);

    /* XXX
     * IGU/AEU preparation bring back the AEU/IGU to a reset state
     * re-enable attentions
     */

    return (0);
}