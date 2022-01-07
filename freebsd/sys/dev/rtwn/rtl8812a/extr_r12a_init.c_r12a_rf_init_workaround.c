
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R12A_RF_B_CTRL ;
 int R92C_RF_CTRL ;
 int R92C_RF_CTRL_EN ;
 int R92C_RF_CTRL_RSTB ;
 int R92C_RF_CTRL_SDMRSTB ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static void
r12a_rf_init_workaround(struct rtwn_softc *sc)
{

 rtwn_write_1(sc, R92C_RF_CTRL,
     R92C_RF_CTRL_EN | R92C_RF_CTRL_SDMRSTB);
 rtwn_write_1(sc, R92C_RF_CTRL,
     R92C_RF_CTRL_EN | R92C_RF_CTRL_RSTB |
     R92C_RF_CTRL_SDMRSTB);
 rtwn_write_1(sc, R12A_RF_B_CTRL,
     R92C_RF_CTRL_EN | R92C_RF_CTRL_SDMRSTB);
 rtwn_write_1(sc, R12A_RF_B_CTRL,
     R92C_RF_CTRL_EN | R92C_RF_CTRL_RSTB |
     R92C_RF_CTRL_SDMRSTB);
}
