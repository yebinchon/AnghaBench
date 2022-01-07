
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,char*) ;
 int CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int DBG_LOAD ;
 int HC_CONFIG_0_REG_BLOCK_DISABLE_0 ;
 int HC_CONFIG_1_REG_BLOCK_DISABLE_1 ;
 int HC_REG_CONFIG_0 ;
 int HC_REG_CONFIG_1 ;
 int IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE ;
 int IGU_REG_BLOCK_CONFIGURATION ;
 int PXP_REG_HST_DISCARD_DOORBELLS ;
 int PXP_REG_HST_DISCARD_INTERNAL_WRITES ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void
bxe_set_234_gates(struct bxe_softc *sc,
                  uint8_t close)
{
    uint32_t val;


    if (!CHIP_IS_E1(sc)) {

        REG_WR(sc, PXP_REG_HST_DISCARD_DOORBELLS, !!close);

        REG_WR(sc, PXP_REG_HST_DISCARD_INTERNAL_WRITES, !!close);
    }


    if (CHIP_IS_E1x(sc)) {

        val = REG_RD(sc, HC_REG_CONFIG_1);
        REG_WR(sc, HC_REG_CONFIG_1,
               (!close) ? (val | HC_CONFIG_1_REG_BLOCK_DISABLE_1) :
               (val & ~(uint32_t)HC_CONFIG_1_REG_BLOCK_DISABLE_1));

        val = REG_RD(sc, HC_REG_CONFIG_0);
        REG_WR(sc, HC_REG_CONFIG_0,
               (!close) ? (val | HC_CONFIG_0_REG_BLOCK_DISABLE_0) :
               (val & ~(uint32_t)HC_CONFIG_0_REG_BLOCK_DISABLE_0));
    } else {

        val = REG_RD(sc, IGU_REG_BLOCK_CONFIGURATION);

        REG_WR(sc, IGU_REG_BLOCK_CONFIGURATION,
               (!close) ?
               (val | IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE) :
               (val & ~(uint32_t)IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE));
    }

    BLOGD(sc, DBG_LOAD, "%s gates #2, #3 and #4\n",
          close ? "closing" : "opening");

    wmb();
}
