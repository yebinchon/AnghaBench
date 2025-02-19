
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;


 int R92C_EFUSE_ACCESS ;
 int R92C_EFUSE_ACCESS_ON ;
 int R92C_SYS_CLKR ;
 int R92C_SYS_CLKR_ANA8M ;
 int R92C_SYS_CLKR_LOADER_EN ;
 int R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_ELDR ;
 int rtwn_read_2 (struct rtwn_softc*,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static int
rtwn_efuse_switch_power(struct rtwn_softc *sc)
{
 uint32_t reg;
 int error;

 error = rtwn_write_1(sc, R92C_EFUSE_ACCESS, R92C_EFUSE_ACCESS_ON);
 if (error != 0)
  return (error);

 reg = rtwn_read_2(sc, R92C_SYS_FUNC_EN);
 if (!(reg & R92C_SYS_FUNC_EN_ELDR)) {
  error = rtwn_write_2(sc, R92C_SYS_FUNC_EN,
      reg | R92C_SYS_FUNC_EN_ELDR);
  if (error != 0)
   return (error);
 }
 reg = rtwn_read_2(sc, R92C_SYS_CLKR);
 if ((reg & (R92C_SYS_CLKR_LOADER_EN | R92C_SYS_CLKR_ANA8M)) !=
     (R92C_SYS_CLKR_LOADER_EN | R92C_SYS_CLKR_ANA8M)) {
  error = rtwn_write_2(sc, R92C_SYS_CLKR,
      reg | R92C_SYS_CLKR_LOADER_EN | R92C_SYS_CLKR_ANA8M);
  if (error != 0)
   return (error);
 }

 return (0);
}
