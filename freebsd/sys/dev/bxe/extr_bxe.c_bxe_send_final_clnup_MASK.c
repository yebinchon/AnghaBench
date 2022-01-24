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
 int BAR_CSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int,int) ; 
 int SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT ; 
 int XSDM_REG_OPERATION_GEN ; 
 int /*<<< orphan*/  XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE ; 
 int /*<<< orphan*/  XSTORM_AGG_INT_FINAL_CLEANUP_INDEX ; 
 int FUNC8 (struct bxe_softc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,char*) ; 

__attribute__((used)) static int
FUNC10(struct bxe_softc *sc,
                     uint8_t          clnup_func,
                     uint32_t         poll_cnt)
{
    uint32_t op_gen_command = 0;
    uint32_t comp_addr = (BAR_CSTRORM_INTMEM +
                          FUNC2(clnup_func));
    int ret = 0;

    if (FUNC6(sc, comp_addr)) {
        FUNC1(sc, "Cleanup complete was not 0 before sending\n");
        return (1);
    }

    op_gen_command |= FUNC4(XSTORM_AGG_INT_FINAL_CLEANUP_INDEX);
    op_gen_command |= FUNC5(XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE);
    op_gen_command |= FUNC3(clnup_func);
    op_gen_command |= 1 << SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT;

    FUNC0(sc, DBG_LOAD, "sending FW Final cleanup\n");
    FUNC7(sc, XSDM_REG_OPERATION_GEN, op_gen_command);

    if (FUNC8(sc, comp_addr, 1, poll_cnt) != 1) {
        FUNC1(sc, "FW final cleanup did not succeed\n");
        FUNC0(sc, DBG_LOAD, "At timeout completion address contained %x\n",
              (FUNC6(sc, comp_addr)));
        FUNC9(sc, ("FLR cleanup failed\n"));
        return (1);
    }

    /* Zero completion for nxt FLR */
    FUNC7(sc, comp_addr, 0);

    return (ret);
}