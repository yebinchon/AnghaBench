
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ version; int dev; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 scalar_t__ IG4_ATOM ;
 scalar_t__ IG4_HASWELL ;
 scalar_t__ IG4_HAS_ADDREGS (scalar_t__) ;
 int IG4_REG_ACTIVE_LTR_VALUE ;
 int IG4_REG_AUTO_LTR_VALUE ;
 int IG4_REG_CLK_PARMS ;
 int IG4_REG_COMP_PARAM1 ;
 int IG4_REG_COMP_TYPE ;
 int IG4_REG_COMP_VER ;
 int IG4_REG_CTL ;
 int IG4_REG_DMA_CTRL ;
 int IG4_REG_DMA_RDLR ;
 int IG4_REG_DMA_TDLR ;
 int IG4_REG_ENABLE_STATUS ;
 int IG4_REG_FS_SCL_HCNT ;
 int IG4_REG_FS_SCL_LCNT ;
 int IG4_REG_GENERAL ;
 int IG4_REG_I2C_EN ;
 int IG4_REG_I2C_STA ;
 int IG4_REG_IDLE_LTR_VALUE ;
 int IG4_REG_INTR_MASK ;
 int IG4_REG_INTR_STAT ;
 int IG4_REG_RAW_INTR_STAT ;
 int IG4_REG_RESETS_HSW ;
 int IG4_REG_RESETS_SKL ;
 int IG4_REG_RXFLR ;
 int IG4_REG_RX_TL ;
 int IG4_REG_SDA_HOLD ;
 int IG4_REG_SDA_SETUP ;
 int IG4_REG_SLV_DATA_NACK ;
 int IG4_REG_SS_SCL_HCNT ;
 int IG4_REG_SS_SCL_LCNT ;
 int IG4_REG_SW_LTR_VALUE ;
 int IG4_REG_TAR_ADD ;
 int IG4_REG_TXFLR ;
 int IG4_REG_TX_ABRT_SOURCE ;
 int IG4_REG_TX_TL ;
 scalar_t__ IG4_SKYLAKE ;
 int REGDUMP (TYPE_1__*,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ig4iic_dump(ig4iic_softc_t *sc)
{
 device_printf(sc->dev, "ig4iic register dump:\n");
 REGDUMP(sc, IG4_REG_CTL);
 REGDUMP(sc, IG4_REG_TAR_ADD);
 REGDUMP(sc, IG4_REG_SS_SCL_HCNT);
 REGDUMP(sc, IG4_REG_SS_SCL_LCNT);
 REGDUMP(sc, IG4_REG_FS_SCL_HCNT);
 REGDUMP(sc, IG4_REG_FS_SCL_LCNT);
 REGDUMP(sc, IG4_REG_INTR_STAT);
 REGDUMP(sc, IG4_REG_INTR_MASK);
 REGDUMP(sc, IG4_REG_RAW_INTR_STAT);
 REGDUMP(sc, IG4_REG_RX_TL);
 REGDUMP(sc, IG4_REG_TX_TL);
 REGDUMP(sc, IG4_REG_I2C_EN);
 REGDUMP(sc, IG4_REG_I2C_STA);
 REGDUMP(sc, IG4_REG_TXFLR);
 REGDUMP(sc, IG4_REG_RXFLR);
 REGDUMP(sc, IG4_REG_SDA_HOLD);
 REGDUMP(sc, IG4_REG_TX_ABRT_SOURCE);
 REGDUMP(sc, IG4_REG_SLV_DATA_NACK);
 REGDUMP(sc, IG4_REG_DMA_CTRL);
 REGDUMP(sc, IG4_REG_DMA_TDLR);
 REGDUMP(sc, IG4_REG_DMA_RDLR);
 REGDUMP(sc, IG4_REG_SDA_SETUP);
 REGDUMP(sc, IG4_REG_ENABLE_STATUS);
 REGDUMP(sc, IG4_REG_COMP_PARAM1);
 REGDUMP(sc, IG4_REG_COMP_VER);
 if (sc->version == IG4_ATOM) {
  REGDUMP(sc, IG4_REG_COMP_TYPE);
  REGDUMP(sc, IG4_REG_CLK_PARMS);
 }
 if (sc->version == IG4_HASWELL || sc->version == IG4_ATOM) {
  REGDUMP(sc, IG4_REG_RESETS_HSW);
  REGDUMP(sc, IG4_REG_GENERAL);
 } else if (sc->version == IG4_SKYLAKE) {
  REGDUMP(sc, IG4_REG_RESETS_SKL);
 }
 if (sc->version == IG4_HASWELL) {
  REGDUMP(sc, IG4_REG_SW_LTR_VALUE);
  REGDUMP(sc, IG4_REG_AUTO_LTR_VALUE);
 } else if (IG4_HAS_ADDREGS(sc->version)) {
  REGDUMP(sc, IG4_REG_ACTIVE_LTR_VALUE);
  REGDUMP(sc, IG4_REG_IDLE_LTR_VALUE);
 }
}
