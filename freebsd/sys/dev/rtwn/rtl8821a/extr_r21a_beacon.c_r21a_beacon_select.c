
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int KASSERT (int ,char*) ;
 int R21A_DWBCN1_CTRL ;
 int R21A_DWBCN1_CTRL_SEL_BCN1 ;
 int rtwn_setbits_1_shift (struct rtwn_softc*,int ,int ,int ,int) ;

void
r21a_beacon_select(struct rtwn_softc *sc, int id)
{
 switch (id) {
 case 0:

  rtwn_setbits_1_shift(sc, R21A_DWBCN1_CTRL,
      R21A_DWBCN1_CTRL_SEL_BCN1, 0, 2);
  break;
 case 1:

  rtwn_setbits_1_shift(sc, R21A_DWBCN1_CTRL,
      0, R21A_DWBCN1_CTRL_SEL_BCN1, 2);
  break;
 default:
  KASSERT(0, ("wrong port id %d\n", id));
  break;
 }
}
