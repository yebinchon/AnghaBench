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
typedef  int uint32_t ;
struct bxe_softc {int /*<<< orphan*/  link_params; } ;
struct bxe_mac_vals {int /*<<< orphan*/ * bmac_val; scalar_t__ bmac_addr; int /*<<< orphan*/  emac_val; scalar_t__ emac_addr; int /*<<< orphan*/  umac_val; scalar_t__ umac_addr; int /*<<< orphan*/  xmac_val; scalar_t__ xmac_addr; } ;
typedef  int /*<<< orphan*/  mac_vals ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 scalar_t__ BRB1_REG_NUM_OF_FULL_BLOCKS ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ DORQ_REG_NORM_CID_OFST ; 
 scalar_t__ FALSE ; 
 int MISC_REGISTERS_RESET_REG_1_RST_BRB1 ; 
 int MISC_REGISTERS_RESET_REG_1_RST_DORQ ; 
 scalar_t__ MISC_REG_RESET_REG_1 ; 
 scalar_t__ NIG_REG_NIG_INT_STS_CLR_0 ; 
 int FUNC3 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (struct bxe_softc*,scalar_t__) ; 
 int FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,struct bxe_mac_vals*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_mac_vals*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(struct bxe_softc *sc)
{
    uint32_t reset_reg, tmp_reg = 0, rc;
    uint8_t prev_undi = FALSE;
    struct bxe_mac_vals mac_vals;
    uint32_t timer_count = 1000;
    uint32_t prev_brb;

    /*
     * It is possible a previous function received 'common' answer,
     * but hasn't loaded yet, therefore creating a scenario of
     * multiple functions receiving 'common' on the same path.
     */
    FUNC0(sc, DBG_LOAD, "Common unload Flow\n");

    FUNC13(&mac_vals, 0, sizeof(mac_vals));

    if (FUNC6(sc)) {
        return (FUNC8(sc));
    }

    reset_reg = FUNC3(sc, MISC_REG_RESET_REG_1);

    /* Reset should be performed after BRB is emptied */
    if (reset_reg & MISC_REGISTERS_RESET_REG_1_RST_BRB1) {
        /* Close the MAC Rx to prevent BRB from filling up */
        FUNC9(sc, &mac_vals);

        /* close LLH filters towards the BRB */
        FUNC12(&sc->link_params, 0);

        /*
         * Check if the UNDI driver was previously loaded.
         * UNDI driver initializes CID offset for normal bell to 0x7
         */
        if (reset_reg & MISC_REGISTERS_RESET_REG_1_RST_DORQ) {
            tmp_reg = FUNC3(sc, DORQ_REG_NORM_CID_OFST);
            if (tmp_reg == 0x7) {
                FUNC0(sc, DBG_LOAD, "UNDI previously loaded\n");
                prev_undi = TRUE;
                /* clear the UNDI indication */
                FUNC4(sc, DORQ_REG_NORM_CID_OFST, 0);
                /* clear possible idle check errors */
                FUNC3(sc, NIG_REG_NIG_INT_STS_CLR_0);
            }
        }

        /* wait until BRB is empty */
        tmp_reg = FUNC3(sc, BRB1_REG_NUM_OF_FULL_BLOCKS);
        while (timer_count) {
            prev_brb = tmp_reg;

            tmp_reg = FUNC3(sc, BRB1_REG_NUM_OF_FULL_BLOCKS);
            if (!tmp_reg) {
                break;
            }

            FUNC0(sc, DBG_LOAD, "BRB still has 0x%08x\n", tmp_reg);

            /* reset timer as long as BRB actually gets emptied */
            if (prev_brb > tmp_reg) {
                timer_count = 1000;
            } else {
                timer_count--;
            }

            /* If UNDI resides in memory, manually increment it */
            if (prev_undi) {
                FUNC10(sc, FUNC5(sc), 1);
            }

            FUNC2(10);
        }

        if (!timer_count) {
            FUNC1(sc, "Failed to empty BRB\n");
        }
    }

    /* No packets are in the pipeline, path is ready for reset */
    FUNC11(sc);

    if (mac_vals.xmac_addr) {
        FUNC4(sc, mac_vals.xmac_addr, mac_vals.xmac_val);
    }
    if (mac_vals.umac_addr) {
        FUNC4(sc, mac_vals.umac_addr, mac_vals.umac_val);
    }
    if (mac_vals.emac_addr) {
        FUNC4(sc, mac_vals.emac_addr, mac_vals.emac_val);
    }
    if (mac_vals.bmac_addr) {
        FUNC4(sc, mac_vals.bmac_addr, mac_vals.bmac_val[0]);
        FUNC4(sc, mac_vals.bmac_addr + 4, mac_vals.bmac_val[1]);
    }

    rc = FUNC7(sc, prev_undi);
    if (rc) {
        FUNC8(sc);
        return (rc);
    }

    return (FUNC8(sc));
}