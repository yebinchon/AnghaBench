
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_HIMR ;
 int R92C_HISR ;
 int R92C_INT_ENABLE ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r92ce_start_xfers(struct rtwn_softc *sc)
{

 rtwn_write_4(sc, R92C_HISR, 0xffffffff);


 rtwn_write_4(sc, R92C_HIMR, R92C_INT_ENABLE);
}
