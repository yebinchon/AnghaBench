
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int DBG_LOAD ;
 int MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK ;
 int MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK ;
 int MISC_REG_AEU_GENERAL_MASK ;
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ;
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int SC_PORT (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_disable_close_the_gate(struct bxe_softc *sc)
{
    uint32_t val;
    int port = SC_PORT(sc);

    BLOGD(sc, DBG_LOAD,
          "Disabling 'close the gates'\n");

    if (CHIP_IS_E1(sc)) {
        uint32_t addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
                               MISC_REG_AEU_MASK_ATTN_FUNC_0;
        val = REG_RD(sc, addr);
        val &= ~(0x300);
        REG_WR(sc, addr, val);
    } else {
        val = REG_RD(sc, MISC_REG_AEU_GENERAL_MASK);
        val &= ~(MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK |
                 MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK);
        REG_WR(sc, MISC_REG_AEU_GENERAL_MASK, val);
    }
}
