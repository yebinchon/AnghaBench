
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int ss_scl_hcnt; int ss_scl_lcnt; int fs_scl_hcnt; int fs_scl_lcnt; int bus_speed; int ss_sda_hold; int fs_sda_hold; } ;
struct TYPE_8__ {scalar_t__ version; scalar_t__ slave_valid; TYPE_1__ cfg; scalar_t__ intr_mask; int dev; } ;
typedef TYPE_2__ ig4iic_softc_t ;


 int ENXIO ;
 scalar_t__ IG4_ATOM ;
 int IG4_COMP_MIN_VER ;
 int IG4_CTL_MASTER ;
 int IG4_CTL_RESTARTEN ;
 int IG4_CTL_SLAVE_DISABLE ;
 int IG4_CTL_SPEED_MASK ;
 int IG4_CTL_SPEED_STD ;
 int IG4_DEVICE_IDLE ;
 int IG4_GENERAL_SWMODE ;
 scalar_t__ IG4_HASWELL ;
 scalar_t__ IG4_HAS_ADDREGS (scalar_t__) ;
 int IG4_REG_ACTIVE_LTR_VALUE ;
 int IG4_REG_AUTO_LTR_VALUE ;
 int IG4_REG_CLR_INTR ;
 int IG4_REG_COMP_PARAM1 ;
 int IG4_REG_COMP_TYPE ;
 int IG4_REG_COMP_VER ;
 int IG4_REG_CTL ;
 int IG4_REG_DEVIDLE_CTRL ;
 int IG4_REG_FS_SCL_HCNT ;
 int IG4_REG_FS_SCL_LCNT ;
 int IG4_REG_GENERAL ;
 int IG4_REG_IDLE_LTR_VALUE ;
 int IG4_REG_INTR_MASK ;
 int IG4_REG_RESETS_HSW ;
 int IG4_REG_RESETS_SKL ;
 int IG4_REG_RX_TL ;
 int IG4_REG_SDA_HOLD ;
 int IG4_REG_SS_SCL_HCNT ;
 int IG4_REG_SS_SCL_LCNT ;
 int IG4_REG_SW_LTR_VALUE ;
 int IG4_REG_TX_TL ;
 int IG4_RESETS_ASSERT_HSW ;
 int IG4_RESETS_ASSERT_SKL ;
 int IG4_RESETS_DEASSERT_HSW ;
 int IG4_RESETS_DEASSERT_SKL ;
 int IG4_RESTORE_REQUIRED ;
 int device_printf (int ,char*) ;
 int pause (char*,int) ;
 int reg_read (TYPE_2__*,int ) ;
 int reg_write (TYPE_2__*,int ,int) ;
 scalar_t__ set_controller (TYPE_2__*,int ) ;

__attribute__((used)) static int
ig4iic_set_config(ig4iic_softc_t *sc, bool reset)
{
 uint32_t v;

 v = reg_read(sc, IG4_REG_DEVIDLE_CTRL);
 if (IG4_HAS_ADDREGS(sc->version) && (v & IG4_RESTORE_REQUIRED)) {
  reg_write(sc, IG4_REG_DEVIDLE_CTRL, IG4_DEVICE_IDLE | IG4_RESTORE_REQUIRED);
  reg_write(sc, IG4_REG_DEVIDLE_CTRL, 0);
  pause("i2crst", 1);
  reset = 1;
 }

 if ((sc->version == IG4_HASWELL || sc->version == IG4_ATOM) && reset) {
  reg_write(sc, IG4_REG_RESETS_HSW, IG4_RESETS_ASSERT_HSW);
  reg_write(sc, IG4_REG_RESETS_HSW, IG4_RESETS_DEASSERT_HSW);
 } else if (IG4_HAS_ADDREGS(sc->version) && reset) {
  reg_write(sc, IG4_REG_RESETS_SKL, IG4_RESETS_ASSERT_SKL);
  reg_write(sc, IG4_REG_RESETS_SKL, IG4_RESETS_DEASSERT_SKL);
 }

 if (sc->version == IG4_ATOM)
  v = reg_read(sc, IG4_REG_COMP_TYPE);

 if (sc->version == IG4_HASWELL || sc->version == IG4_ATOM) {
  v = reg_read(sc, IG4_REG_COMP_PARAM1);
  v = reg_read(sc, IG4_REG_GENERAL);




  if (sc->version == IG4_HASWELL &&
      (v & IG4_GENERAL_SWMODE) == 0) {
   v |= IG4_GENERAL_SWMODE;
   reg_write(sc, IG4_REG_GENERAL, v);
   v = reg_read(sc, IG4_REG_GENERAL);
  }
 }

 if (sc->version == IG4_HASWELL) {
  v = reg_read(sc, IG4_REG_SW_LTR_VALUE);
  v = reg_read(sc, IG4_REG_AUTO_LTR_VALUE);
 } else if (IG4_HAS_ADDREGS(sc->version)) {
  v = reg_read(sc, IG4_REG_ACTIVE_LTR_VALUE);
  v = reg_read(sc, IG4_REG_IDLE_LTR_VALUE);
 }

 if (sc->version == IG4_HASWELL || sc->version == IG4_ATOM) {
  v = reg_read(sc, IG4_REG_COMP_VER);
  if (v < IG4_COMP_MIN_VER)
   return(ENXIO);
 }

 if (set_controller(sc, 0)) {
  device_printf(sc->dev, "controller error during attach-1\n");
  return (ENXIO);
 }

 reg_read(sc, IG4_REG_CLR_INTR);
 reg_write(sc, IG4_REG_INTR_MASK, 0);
 sc->intr_mask = 0;

 reg_write(sc, IG4_REG_SS_SCL_HCNT, sc->cfg.ss_scl_hcnt);
 reg_write(sc, IG4_REG_SS_SCL_LCNT, sc->cfg.ss_scl_lcnt);
 reg_write(sc, IG4_REG_FS_SCL_HCNT, sc->cfg.fs_scl_hcnt);
 reg_write(sc, IG4_REG_FS_SCL_LCNT, sc->cfg.fs_scl_lcnt);
 reg_write(sc, IG4_REG_SDA_HOLD,
     (sc->cfg.bus_speed & IG4_CTL_SPEED_MASK) == IG4_CTL_SPEED_STD ?
       sc->cfg.ss_sda_hold : sc->cfg.fs_sda_hold);
 reg_write(sc, IG4_REG_RX_TL, 0);
 reg_write(sc, IG4_REG_TX_TL, 0);

 reg_write(sc, IG4_REG_CTL,
    IG4_CTL_MASTER |
    IG4_CTL_SLAVE_DISABLE |
    IG4_CTL_RESTARTEN |
    (sc->cfg.bus_speed & IG4_CTL_SPEED_MASK));


 sc->slave_valid = 0;

 return (0);
}
