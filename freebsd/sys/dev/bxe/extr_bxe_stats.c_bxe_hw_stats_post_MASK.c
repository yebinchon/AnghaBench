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
typedef  scalar_t__ uint32_t ;
struct dmae_cmd {int dst_addr_lo; int len; int comp_addr_lo; int comp_val; scalar_t__ comp_addr_hi; scalar_t__ dst_addr_hi; int /*<<< orphan*/  src_addr_hi; int /*<<< orphan*/  src_addr_lo; scalar_t__ opcode; } ;
struct bxe_softc {scalar_t__ func_stx; scalar_t__ executer_idx; int /*<<< orphan*/  func_stats; struct dmae_cmd stats_dmae; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct dmae_cmd) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DMAE_COMP_GRC ; 
 scalar_t__ DMAE_COMP_VAL ; 
 int /*<<< orphan*/  DMAE_DST_GRC ; 
 int DMAE_REG_CMD_MEM ; 
 int /*<<< orphan*/  DMAE_SRC_PCI ; 
 int FUNC4 (struct bxe_softc*) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,struct dmae_cmd*,int) ; 
 int* dmae_reg_go_c ; 
 int /*<<< orphan*/  func_stats ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dmae_cmd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* stats_comp ; 

__attribute__((used)) static void
FUNC13(struct bxe_softc *sc)
{
    struct dmae_cmd *dmae = &sc->stats_dmae;
    uint32_t *stats_comp = FUNC0(sc, stats_comp);
    int loader_idx;
    uint32_t opcode;

    *stats_comp = DMAE_COMP_VAL;
    if (FUNC3(sc)) {
        return;
    }

    /* Update MCP's statistics if possible */
    if (sc->func_stx) {
        FUNC11(FUNC0(sc, func_stats), &sc->func_stats,
               sizeof(sc->func_stats));
    }

    /* loader */
    if (sc->executer_idx) {
        loader_idx = FUNC5(sc);
        opcode =  FUNC8(sc, DMAE_SRC_PCI, DMAE_DST_GRC,
                                  TRUE, DMAE_COMP_GRC);
        opcode = FUNC9(opcode);

        FUNC12(dmae, 0, sizeof(struct dmae_cmd));
        dmae->opcode = opcode;
        dmae->src_addr_lo = FUNC7(FUNC1(sc, dmae[0]));
        dmae->src_addr_hi = FUNC6(FUNC1(sc, dmae[0]));
        dmae->dst_addr_lo = ((DMAE_REG_CMD_MEM +
                              sizeof(struct dmae_cmd) *
                              (loader_idx + 1)) >> 2);
        dmae->dst_addr_hi = 0;
        dmae->len = sizeof(struct dmae_cmd) >> 2;
        if (FUNC2(sc)) {
            dmae->len--;
        }
        dmae->comp_addr_lo = (dmae_reg_go_c[loader_idx + 1] >> 2);
        dmae->comp_addr_hi = 0;
        dmae->comp_val = 1;

        *stats_comp = 0;
        FUNC10(sc, dmae, loader_idx);
    } else if (sc->func_stx) {
        *stats_comp = 0;
        FUNC10(sc, dmae, FUNC4(sc));
    }
}