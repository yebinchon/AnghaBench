
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int,int,int,int,int) ;
 int CHIP_IS_E1 (struct bxe_softc*) ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int DELAY (int) ;
 int FALSE ;
 int MISC_REG_UNPREPARED ;
 int PGLUE_B_REG_LATCHED_ERRORS_CLR ;
 int PGLUE_B_REG_TAGS_63_32 ;
 int PXP2_REG_PGL_EXP_ROM2 ;
 int PXP2_REG_RD_BLK_CNT ;
 int PXP2_REG_RD_PORT_IS_IDLE_0 ;
 int PXP2_REG_RD_PORT_IS_IDLE_1 ;
 int PXP2_REG_RD_SR_CNT ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int TRUE ;
 scalar_t__ bxe_er_poll_igu_vq (struct bxe_softc*) ;
 int bxe_process_kill_chip_reset (struct bxe_softc*,int ) ;
 int bxe_pxp_prep (struct bxe_softc*) ;
 scalar_t__ bxe_reset_mcp_comp (struct bxe_softc*,int) ;
 int bxe_reset_mcp_prep (struct bxe_softc*,int*) ;
 int bxe_set_234_gates (struct bxe_softc*,int ) ;
 int mb () ;
 int wmb () ;

__attribute__((used)) static int
bxe_process_kill(struct bxe_softc *sc,
                 uint8_t global)
{
    int cnt = 1000;
    uint32_t val = 0;
    uint32_t sr_cnt, blk_cnt, port_is_idle_0, port_is_idle_1, pgl_exp_rom2;
    uint32_t tags_63_32 = 0;


    do {
        sr_cnt = REG_RD(sc, PXP2_REG_RD_SR_CNT);
        blk_cnt = REG_RD(sc, PXP2_REG_RD_BLK_CNT);
        port_is_idle_0 = REG_RD(sc, PXP2_REG_RD_PORT_IS_IDLE_0);
        port_is_idle_1 = REG_RD(sc, PXP2_REG_RD_PORT_IS_IDLE_1);
        pgl_exp_rom2 = REG_RD(sc, PXP2_REG_PGL_EXP_ROM2);
        if (CHIP_IS_E3(sc)) {
            tags_63_32 = REG_RD(sc, PGLUE_B_REG_TAGS_63_32);
        }

        if ((sr_cnt == 0x7e) && (blk_cnt == 0xa0) &&
            ((port_is_idle_0 & 0x1) == 0x1) &&
            ((port_is_idle_1 & 0x1) == 0x1) &&
            (pgl_exp_rom2 == 0xffffffff) &&
            (!CHIP_IS_E3(sc) || (tags_63_32 == 0xffffffff)))
            break;
        DELAY(1000);
    } while (cnt-- > 0);

    if (cnt <= 0) {
        BLOGE(sc, "ERROR: Tetris buffer didn't get empty or there "
                  "are still outstanding read requests after 1s! "
                  "sr_cnt=0x%08x, blk_cnt=0x%08x, port_is_idle_0=0x%08x, "
                  "port_is_idle_1=0x%08x, pgl_exp_rom2=0x%08x\n",
              sr_cnt, blk_cnt, port_is_idle_0,
              port_is_idle_1, pgl_exp_rom2);
        return (-1);
    }

    mb();


    bxe_set_234_gates(sc, TRUE);


    if (!CHIP_IS_E1x(sc) && bxe_er_poll_igu_vq(sc)) {
        return (-1);
    }




    REG_WR(sc, MISC_REG_UNPREPARED, 0);
    mb();


    wmb();





    DELAY(1000);



    if (global) {
        bxe_reset_mcp_prep(sc, &val);
    }


    bxe_pxp_prep(sc);
    mb();


    bxe_process_kill_chip_reset(sc, global);
    mb();


    if (!CHIP_IS_E1(sc))
        REG_WR(sc, PGLUE_B_REG_LATCHED_ERRORS_CLR, 0x7f);



    if (global && bxe_reset_mcp_comp(sc, val)) {
        return (-1);
    }




    bxe_set_234_gates(sc, FALSE);






    return (0);
}
