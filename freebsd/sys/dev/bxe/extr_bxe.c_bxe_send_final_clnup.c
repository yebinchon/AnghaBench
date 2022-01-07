
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BAR_CSTRORM_INTMEM ;
 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET (int ) ;
 int DBG_LOAD ;
 int OP_GEN_AGG_VECT (int ) ;
 int OP_GEN_PARAM (int ) ;
 int OP_GEN_TYPE (int ) ;
 scalar_t__ REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT ;
 int XSDM_REG_OPERATION_GEN ;
 int XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE ;
 int XSTORM_AGG_INT_FINAL_CLEANUP_INDEX ;
 int bxe_flr_clnup_reg_poll (struct bxe_softc*,int,int,int) ;
 int bxe_panic (struct bxe_softc*,char*) ;

__attribute__((used)) static int
bxe_send_final_clnup(struct bxe_softc *sc,
                     uint8_t clnup_func,
                     uint32_t poll_cnt)
{
    uint32_t op_gen_command = 0;
    uint32_t comp_addr = (BAR_CSTRORM_INTMEM +
                          CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET(clnup_func));
    int ret = 0;

    if (REG_RD(sc, comp_addr)) {
        BLOGE(sc, "Cleanup complete was not 0 before sending\n");
        return (1);
    }

    op_gen_command |= OP_GEN_PARAM(XSTORM_AGG_INT_FINAL_CLEANUP_INDEX);
    op_gen_command |= OP_GEN_TYPE(XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE);
    op_gen_command |= OP_GEN_AGG_VECT(clnup_func);
    op_gen_command |= 1 << SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT;

    BLOGD(sc, DBG_LOAD, "sending FW Final cleanup\n");
    REG_WR(sc, XSDM_REG_OPERATION_GEN, op_gen_command);

    if (bxe_flr_clnup_reg_poll(sc, comp_addr, 1, poll_cnt) != 1) {
        BLOGE(sc, "FW final cleanup did not succeed\n");
        BLOGD(sc, DBG_LOAD, "At timeout completion address contained %x\n",
              (REG_RD(sc, comp_addr)));
        bxe_panic(sc, ("FLR cleanup failed\n"));
        return (1);
    }


    REG_WR(sc, comp_addr, 0);

    return (ret);
}
