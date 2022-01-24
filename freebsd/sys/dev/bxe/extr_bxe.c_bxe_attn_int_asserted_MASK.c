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
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bxe_softc {int attn_state; TYPE_1__ devinfo; } ;

/* Variables and functions */
 int ATTN_GENERAL_ATTN_1 ; 
 int ATTN_GENERAL_ATTN_2 ; 
 int ATTN_GENERAL_ATTN_3 ; 
 int ATTN_GENERAL_ATTN_4 ; 
 int ATTN_GENERAL_ATTN_5 ; 
 int ATTN_GENERAL_ATTN_6 ; 
 int ATTN_HARD_WIRED_MASK ; 
 int ATTN_NIG_FOR_FUNC ; 
 int ATTN_SW_TIMER_4_FUNC ; 
 int BAR_IGU_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,...) ; 
 int COMMAND_REG_ATTN_BITS_SET ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int GPIO_2_FUNC ; 
 int GPIO_3_FUNC ; 
 int GPIO_4_FUNC ; 
 int HC_REG_COMMAND_REG ; 
 scalar_t__ HW_LOCK_RESOURCE_PORT0_ATT_MASK ; 
 int IGU_CMD_ATTN_BIT_SET_UPPER ; 
 int IGU_REG_ATTENTION_ACK_BITS ; 
 scalar_t__ INT_BLOCK_HC ; 
 int MAX_IGU_ATTN_ACK_TO ; 
 int MISC_REG_AEU_GENERAL_ATTN_1 ; 
 int MISC_REG_AEU_GENERAL_ATTN_2 ; 
 int MISC_REG_AEU_GENERAL_ATTN_3 ; 
 int MISC_REG_AEU_GENERAL_ATTN_4 ; 
 int MISC_REG_AEU_GENERAL_ATTN_5 ; 
 int MISC_REG_AEU_GENERAL_ATTN_6 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ; 
 int NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int NIG_REG_MASK_INTERRUPT_PORT1 ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int,int) ; 
 int FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(struct bxe_softc *sc,
                      uint32_t         asserted)
{
    int port = FUNC4(sc);
    uint32_t aeu_addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
                               MISC_REG_AEU_MASK_ATTN_FUNC_0;
    uint32_t nig_int_mask_addr = port ? NIG_REG_MASK_INTERRUPT_PORT1 :
                                        NIG_REG_MASK_INTERRUPT_PORT0;
    uint32_t aeu_mask;
    uint32_t nig_mask = 0;
    uint32_t reg_addr;
    uint32_t igu_acked;
    uint32_t cnt;

    if (sc->attn_state & asserted) {
        FUNC1(sc, "IGU ERROR attn=0x%08x\n", asserted);
    }

    FUNC5(sc, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);

    aeu_mask = FUNC2(sc, aeu_addr);

    FUNC0(sc, DBG_INTR, "aeu_mask 0x%08x newly asserted 0x%08x\n",
          aeu_mask, asserted);

    aeu_mask &= ~(asserted & 0x3ff);

    FUNC0(sc, DBG_INTR, "new mask 0x%08x\n", aeu_mask);

    FUNC3(sc, aeu_addr, aeu_mask);

    FUNC8(sc, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);

    FUNC0(sc, DBG_INTR, "attn_state 0x%08x\n", sc->attn_state);
    sc->attn_state |= asserted;
    FUNC0(sc, DBG_INTR, "new state 0x%08x\n", sc->attn_state);

    if (asserted & ATTN_HARD_WIRED_MASK) {
        if (asserted & ATTN_NIG_FOR_FUNC) {

	    FUNC6(sc);
            /* save nig interrupt mask */
            nig_mask = FUNC2(sc, nig_int_mask_addr);

            /* If nig_mask is not set, no need to call the update function */
            if (nig_mask) {
                FUNC3(sc, nig_int_mask_addr, 0);

                FUNC7(sc);
            }

            /* handle unicore attn? */
        }

        if (asserted & ATTN_SW_TIMER_4_FUNC) {
            FUNC0(sc, DBG_INTR, "ATTN_SW_TIMER_4_FUNC!\n");
        }

        if (asserted & GPIO_2_FUNC) {
            FUNC0(sc, DBG_INTR, "GPIO_2_FUNC!\n");
        }

        if (asserted & GPIO_3_FUNC) {
            FUNC0(sc, DBG_INTR, "GPIO_3_FUNC!\n");
        }

        if (asserted & GPIO_4_FUNC) {
            FUNC0(sc, DBG_INTR, "GPIO_4_FUNC!\n");
        }

        if (port == 0) {
            if (asserted & ATTN_GENERAL_ATTN_1) {
                FUNC0(sc, DBG_INTR, "ATTN_GENERAL_ATTN_1!\n");
                FUNC3(sc, MISC_REG_AEU_GENERAL_ATTN_1, 0x0);
            }
            if (asserted & ATTN_GENERAL_ATTN_2) {
                FUNC0(sc, DBG_INTR, "ATTN_GENERAL_ATTN_2!\n");
                FUNC3(sc, MISC_REG_AEU_GENERAL_ATTN_2, 0x0);
            }
            if (asserted & ATTN_GENERAL_ATTN_3) {
                FUNC0(sc, DBG_INTR, "ATTN_GENERAL_ATTN_3!\n");
                FUNC3(sc, MISC_REG_AEU_GENERAL_ATTN_3, 0x0);
            }
        } else {
            if (asserted & ATTN_GENERAL_ATTN_4) {
                FUNC0(sc, DBG_INTR, "ATTN_GENERAL_ATTN_4!\n");
                FUNC3(sc, MISC_REG_AEU_GENERAL_ATTN_4, 0x0);
            }
            if (asserted & ATTN_GENERAL_ATTN_5) {
                FUNC0(sc, DBG_INTR, "ATTN_GENERAL_ATTN_5!\n");
                FUNC3(sc, MISC_REG_AEU_GENERAL_ATTN_5, 0x0);
            }
            if (asserted & ATTN_GENERAL_ATTN_6) {
                FUNC0(sc, DBG_INTR, "ATTN_GENERAL_ATTN_6!\n");
                FUNC3(sc, MISC_REG_AEU_GENERAL_ATTN_6, 0x0);
            }
        }
    } /* hardwired */

    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        reg_addr = (HC_REG_COMMAND_REG + port*32 + COMMAND_REG_ATTN_BITS_SET);
    } else {
        reg_addr = (BAR_IGU_INTMEM + IGU_CMD_ATTN_BIT_SET_UPPER*8);
    }

    FUNC0(sc, DBG_INTR, "about to mask 0x%08x at %s addr 0x%08x\n",
          asserted,
          (sc->devinfo.int_block == INT_BLOCK_HC) ? "HC" : "IGU", reg_addr);
    FUNC3(sc, reg_addr, asserted);

    /* now set back the mask */
    if (asserted & ATTN_NIG_FOR_FUNC) {
        /*
         * Verify that IGU ack through BAR was written before restoring
         * NIG mask. This loop should exit after 2-3 iterations max.
         */
        if (sc->devinfo.int_block != INT_BLOCK_HC) {
            cnt = 0;

            do {
                igu_acked = FUNC2(sc, IGU_REG_ATTENTION_ACK_BITS);
            } while (((igu_acked & ATTN_NIG_FOR_FUNC) == 0) &&
                     (++cnt < MAX_IGU_ATTN_ACK_TO));

            if (!igu_acked) {
                FUNC1(sc, "Failed to verify IGU ack on time\n");
            }

            FUNC10();
        }

        FUNC3(sc, nig_int_mask_addr, nig_mask);

	FUNC9(sc);
    }
}