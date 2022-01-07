
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_OFDM0_AGCCORE1 (int ) ;
 int r88e_crystalcap_write (struct rtwn_softc*) ;
 int r92c_init_bb_common (struct rtwn_softc*) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;
 int rtwn_delay (struct rtwn_softc*,int) ;

void
r88e_init_bb_common(struct rtwn_softc *sc)
{
 r92c_init_bb_common(sc);

 rtwn_bb_write(sc, R92C_OFDM0_AGCCORE1(0), 0x69553422);
 rtwn_delay(sc, 1);
 rtwn_bb_write(sc, R92C_OFDM0_AGCCORE1(0), 0x69553420);
 rtwn_delay(sc, 1);

 r88e_crystalcap_write(sc);
}
