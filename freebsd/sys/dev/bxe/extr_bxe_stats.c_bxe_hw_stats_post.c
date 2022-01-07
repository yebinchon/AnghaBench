
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dmae_cmd {int dst_addr_lo; int len; int comp_addr_lo; int comp_val; scalar_t__ comp_addr_hi; scalar_t__ dst_addr_hi; int src_addr_hi; int src_addr_lo; scalar_t__ opcode; } ;
struct bxe_softc {scalar_t__ func_stx; scalar_t__ executer_idx; int func_stats; struct dmae_cmd stats_dmae; } ;


 scalar_t__* BXE_SP (struct bxe_softc*,int ) ;
 int BXE_SP_MAPPING (struct bxe_softc*,struct dmae_cmd) ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DMAE_COMP_GRC ;
 scalar_t__ DMAE_COMP_VAL ;
 int DMAE_DST_GRC ;
 int DMAE_REG_CMD_MEM ;
 int DMAE_SRC_PCI ;
 int INIT_DMAE_C (struct bxe_softc*) ;
 int PMF_DMAE_C (struct bxe_softc*) ;
 int TRUE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 scalar_t__ bxe_dmae_opcode (struct bxe_softc*,int ,int ,int ,int ) ;
 scalar_t__ bxe_dmae_opcode_clr_src_reset (scalar_t__) ;
 int bxe_post_dmae (struct bxe_softc*,struct dmae_cmd*,int) ;
 int* dmae_reg_go_c ;
 int func_stats ;
 int memcpy (scalar_t__*,int *,int) ;
 int memset (struct dmae_cmd*,int ,int) ;
 scalar_t__* stats_comp ;

__attribute__((used)) static void
bxe_hw_stats_post(struct bxe_softc *sc)
{
    struct dmae_cmd *dmae = &sc->stats_dmae;
    uint32_t *stats_comp = BXE_SP(sc, stats_comp);
    int loader_idx;
    uint32_t opcode;

    *stats_comp = DMAE_COMP_VAL;
    if (CHIP_REV_IS_SLOW(sc)) {
        return;
    }


    if (sc->func_stx) {
        memcpy(BXE_SP(sc, func_stats), &sc->func_stats,
               sizeof(sc->func_stats));
    }


    if (sc->executer_idx) {
        loader_idx = PMF_DMAE_C(sc);
        opcode = bxe_dmae_opcode(sc, DMAE_SRC_PCI, DMAE_DST_GRC,
                                  TRUE, DMAE_COMP_GRC);
        opcode = bxe_dmae_opcode_clr_src_reset(opcode);

        memset(dmae, 0, sizeof(struct dmae_cmd));
        dmae->opcode = opcode;
        dmae->src_addr_lo = U64_LO(BXE_SP_MAPPING(sc, dmae[0]));
        dmae->src_addr_hi = U64_HI(BXE_SP_MAPPING(sc, dmae[0]));
        dmae->dst_addr_lo = ((DMAE_REG_CMD_MEM +
                              sizeof(struct dmae_cmd) *
                              (loader_idx + 1)) >> 2);
        dmae->dst_addr_hi = 0;
        dmae->len = sizeof(struct dmae_cmd) >> 2;
        if (CHIP_IS_E1(sc)) {
            dmae->len--;
        }
        dmae->comp_addr_lo = (dmae_reg_go_c[loader_idx + 1] >> 2);
        dmae->comp_addr_hi = 0;
        dmae->comp_val = 1;

        *stats_comp = 0;
        bxe_post_dmae(sc, dmae, loader_idx);
    } else if (sc->func_stx) {
        *stats_comp = 0;
        bxe_post_dmae(sc, dmae, INIT_DMAE_C(sc));
    }
}
