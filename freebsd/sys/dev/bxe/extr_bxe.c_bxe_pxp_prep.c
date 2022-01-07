
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int CHIP_IS_E1 (struct bxe_softc*) ;
 int PXP2_REG_RD_START_INIT ;
 int PXP2_REG_RQ_RBC_DONE ;
 int REG_WR (struct bxe_softc*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void
bxe_pxp_prep(struct bxe_softc *sc)
{
    if (!CHIP_IS_E1(sc)) {
        REG_WR(sc, PXP2_REG_RD_START_INIT, 0);
        REG_WR(sc, PXP2_REG_RQ_RBC_DONE, 0);
        wmb();
    }
}
