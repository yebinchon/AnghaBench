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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bxe_softc {int attn_state; TYPE_1__ devinfo; struct attn_route* attn_group; int /*<<< orphan*/  sp_err_timeout_task; } ;
struct attn_route {int* sig; } ;

/* Variables and functions */
 int BAR_IGU_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  BXE_ERR_PARITY ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int COMMAND_REG_ATTN_BITS_CLR ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int /*<<< orphan*/  FALSE ; 
 int HC_REG_COMMAND_REG ; 
 scalar_t__ HW_LOCK_RESOURCE_PORT0_ATT_MASK ; 
 int IGU_CMD_ATTN_BIT_CLR_UPPER ; 
 scalar_t__ INT_BLOCK_HC ; 
 int MAX_DYNAMIC_ATTN_GRPS ; 
 int MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 ; 
 int MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 ; 
 int MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 ; 
 int MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 ; 
 int MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ; 
 void* FUNC4 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int,int) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*,int) ; 
 scalar_t__ FUNC14 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct bxe_softc*,scalar_t__) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC19(struct bxe_softc *sc,
                        uint32_t         deasserted)
{
    struct attn_route attn;
    struct attn_route *group_mask;
    int port = FUNC6(sc);
    int index;
    uint32_t reg_addr;
    uint32_t val;
    uint32_t aeu_mask;
    uint8_t global = FALSE;

    /*
     * Need to take HW lock because MCP or other port might also
     * try to handle this event.
     */
    FUNC7(sc);

    if (FUNC14(sc, &global, TRUE)) {
        /* XXX
         * In case of parity errors don't handle attentions so that
         * other function would "see" parity errors.
         */
        // XXX schedule a recovery task...
        /* disable HW interrupts */
        FUNC15(sc);
        FUNC2(sc, BXE_ERR_PARITY);
        FUNC18(taskqueue_thread,
           &sc->sp_err_timeout_task, hz/10);
        FUNC16(sc);
        return;
    }

    attn.sig[0] = FUNC4(sc, MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 + port*4);
    attn.sig[1] = FUNC4(sc, MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 + port*4);
    attn.sig[2] = FUNC4(sc, MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 + port*4);
    attn.sig[3] = FUNC4(sc, MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 + port*4);
    if (!FUNC3(sc)) {
        attn.sig[4] = FUNC4(sc, MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 + port*4);
    } else {
        attn.sig[4] = 0;
    }

    FUNC0(sc, DBG_INTR, "attn: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
          attn.sig[0], attn.sig[1], attn.sig[2], attn.sig[3], attn.sig[4]);

    for (index = 0; index < MAX_DYNAMIC_ATTN_GRPS; index++) {
        if (deasserted & (1 << index)) {
            group_mask = &sc->attn_group[index];

            FUNC0(sc, DBG_INTR,
                  "group[%d]: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n", index,
                  group_mask->sig[0], group_mask->sig[1],
                  group_mask->sig[2], group_mask->sig[3],
                  group_mask->sig[4]);

            FUNC13(sc, attn.sig[4] & group_mask->sig[4]);
            FUNC12(sc, attn.sig[3] & group_mask->sig[3]);
            FUNC10(sc, attn.sig[1] & group_mask->sig[1]);
            FUNC11(sc, attn.sig[2] & group_mask->sig[2]);
            FUNC9(sc, attn.sig[0] & group_mask->sig[0]);
        }
    }

    FUNC16(sc);

    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        reg_addr = (HC_REG_COMMAND_REG + port*32 +
                    COMMAND_REG_ATTN_BITS_CLR);
    } else {
        reg_addr = (BAR_IGU_INTMEM + IGU_CMD_ATTN_BIT_CLR_UPPER*8);
    }

    val = ~deasserted;
    FUNC0(sc, DBG_INTR,
          "about to mask 0x%08x at %s addr 0x%08x\n", val,
          (sc->devinfo.int_block == INT_BLOCK_HC) ? "HC" : "IGU", reg_addr);
    FUNC5(sc, reg_addr, val);

    if (~sc->attn_state & deasserted) {
        FUNC1(sc, "IGU error\n");
    }

    reg_addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
                      MISC_REG_AEU_MASK_ATTN_FUNC_0;

    FUNC8(sc, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);

    aeu_mask = FUNC4(sc, reg_addr);

    FUNC0(sc, DBG_INTR, "aeu_mask 0x%08x newly deasserted 0x%08x\n",
          aeu_mask, deasserted);
    aeu_mask |= (deasserted & 0x3ff);
    FUNC0(sc, DBG_INTR, "new mask 0x%08x\n", aeu_mask);

    FUNC5(sc, reg_addr, aeu_mask);
    FUNC17(sc, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);

    FUNC0(sc, DBG_INTR, "attn_state 0x%08x\n", sc->attn_state);
    sc->attn_state &= ~deasserted;
    FUNC0(sc, DBG_INTR, "new state 0x%08x\n", sc->attn_state);
}