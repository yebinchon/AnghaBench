
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R88E_MBID_TXBCN_RPT (int) ;
 int R92C_BCN_CTRL (int) ;
 int R92C_BCN_CTRL_EN_BCN ;
 int R92C_MBID_NUM ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;

void
r88e_beacon_enable(struct rtwn_softc *sc, int id, int enable)
{

 if (enable) {
  rtwn_setbits_1(sc, R92C_MBID_NUM, 0, R88E_MBID_TXBCN_RPT(id));
  rtwn_setbits_1(sc, R92C_BCN_CTRL(id),
      0, R92C_BCN_CTRL_EN_BCN);
 } else {
  rtwn_setbits_1(sc, R92C_MBID_NUM, R88E_MBID_TXBCN_RPT(id), 0);
  rtwn_setbits_1(sc, R92C_BCN_CTRL(id),
      R92C_BCN_CTRL_EN_BCN, 0);
 }
}
