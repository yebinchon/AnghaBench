
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int chip; } ;


 int MS (int ,int ) ;
 int R12A_CHIP_C_CUT ;
 int R92C_SYS_CFG_CHIP_VER_RTL ;

__attribute__((used)) static void
r12a_read_chipid_vendor(struct rtwn_softc *sc, uint32_t reg_sys_cfg)
{
 struct r12a_softc *rs = sc->sc_priv;

 if (MS(reg_sys_cfg, R92C_SYS_CFG_CHIP_VER_RTL) == 1)
  rs->chip |= R12A_CHIP_C_CUT;
}
