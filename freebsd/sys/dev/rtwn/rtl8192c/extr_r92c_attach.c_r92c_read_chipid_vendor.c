
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int chip; } ;


 scalar_t__ MS (int,int ) ;
 int R92C_CHIP_92C ;
 int R92C_CHIP_92C_1T2R ;
 int R92C_CHIP_UMC_A_CUT ;
 int R92C_HPON_FSM ;
 int R92C_HPON_FSM_CHIP_BONDING_ID ;
 scalar_t__ R92C_HPON_FSM_CHIP_BONDING_ID_92C_1T2R ;
 int R92C_SYS_CFG_CHIP_VER_RTL ;
 int R92C_SYS_CFG_TYPE_92C ;
 int R92C_SYS_CFG_VENDOR_UMC ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;

void
r92c_read_chipid_vendor(struct rtwn_softc *sc, uint32_t reg_sys_cfg)
{
 struct r92c_softc *rs = sc->sc_priv;

 if (reg_sys_cfg & R92C_SYS_CFG_TYPE_92C) {
  rs->chip |= R92C_CHIP_92C;

  if (MS(rtwn_read_4(sc, R92C_HPON_FSM),
      R92C_HPON_FSM_CHIP_BONDING_ID) ==
      R92C_HPON_FSM_CHIP_BONDING_ID_92C_1T2R)
   rs->chip |= R92C_CHIP_92C_1T2R;
 }
 if (reg_sys_cfg & R92C_SYS_CFG_VENDOR_UMC) {
  if (MS(reg_sys_cfg, R92C_SYS_CFG_CHIP_VER_RTL) == 0)
   rs->chip |= R92C_CHIP_UMC_A_CUT;
 }
}
