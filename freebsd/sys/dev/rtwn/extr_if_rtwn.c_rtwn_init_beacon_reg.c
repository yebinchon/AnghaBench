
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_BCNDMATIM ;
 int R92C_BCNTCFG ;
 int R92C_BCN_CTRL (int) ;
 int R92C_BCN_CTRL_DIS_TSF_UDT0 ;
 int R92C_DRVERLYINT ;
 int R92C_TBTT_PROHIBIT ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static void
rtwn_init_beacon_reg(struct rtwn_softc *sc)
{
 rtwn_write_1(sc, R92C_BCN_CTRL(0), R92C_BCN_CTRL_DIS_TSF_UDT0);
 rtwn_write_1(sc, R92C_BCN_CTRL(1), R92C_BCN_CTRL_DIS_TSF_UDT0);
 rtwn_write_2(sc, R92C_TBTT_PROHIBIT, 0x6404);
 rtwn_write_1(sc, R92C_DRVERLYINT, 0x05);
 rtwn_write_1(sc, R92C_BCNDMATIM, 0x02);
 rtwn_write_2(sc, R92C_BCNTCFG, 0x660f);
}
