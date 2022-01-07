
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_HIMR ;
 int R92C_HISR ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r92ce_init_intr(struct rtwn_softc *sc)
{

 rtwn_write_4(sc, R92C_HISR, 0x00000000);
 rtwn_write_4(sc, R92C_HIMR, 0x00000000);
}
