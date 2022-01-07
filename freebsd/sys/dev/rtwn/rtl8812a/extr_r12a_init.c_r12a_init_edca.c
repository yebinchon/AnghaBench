
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_USTIME_EDCA ;
 int R92C_USTIME_TSF ;
 int r92c_init_edca (struct rtwn_softc*) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;

void
r12a_init_edca(struct rtwn_softc *sc)
{
 r92c_init_edca(sc);


 rtwn_write_1(sc, R92C_USTIME_TSF, 0x50);
 rtwn_write_1(sc, R92C_USTIME_EDCA, 0x50);
}
