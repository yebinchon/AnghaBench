
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R88E_HIMR ;
 int R88E_HIMRE ;
 int R88E_HISR ;
 int R88E_HISRE ;
 int R88E_INT_ENABLE ;
 int R88E_INT_ENABLE_EX ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r88ee_start_xfers(struct rtwn_softc *sc)
{

 rtwn_write_4(sc, R88E_HISR, 0xffffffff);
 rtwn_write_4(sc, R88E_HISRE, 0xffffffff);


 rtwn_write_4(sc, R88E_HIMR, R88E_INT_ENABLE);
 rtwn_write_4(sc, R88E_HIMRE, R88E_INT_ENABLE_EX);
}
