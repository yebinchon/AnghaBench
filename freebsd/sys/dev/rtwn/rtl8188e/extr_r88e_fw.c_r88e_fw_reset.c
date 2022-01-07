
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_CPUEN ;
 int RTWN_FW_RESET_SHUTDOWN ;
 int rtwn_read_2 (struct rtwn_softc*,int ) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

void
r88e_fw_reset(struct rtwn_softc *sc, int reason)
{
 uint16_t reg;

 reg = rtwn_read_2(sc, R92C_SYS_FUNC_EN);
 rtwn_write_2(sc, R92C_SYS_FUNC_EN, reg & ~R92C_SYS_FUNC_EN_CPUEN);

 if (reason != RTWN_FW_RESET_SHUTDOWN) {
  rtwn_write_2(sc, R92C_SYS_FUNC_EN,
      reg | R92C_SYS_FUNC_EN_CPUEN);
 }
}
