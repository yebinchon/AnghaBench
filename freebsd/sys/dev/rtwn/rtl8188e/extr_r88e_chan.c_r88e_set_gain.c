
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int dummy; } ;


 int R92C_OFDM0_AGCCORE1 (int ) ;
 int R92C_OFDM0_AGCCORE1_GAIN_M ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int ,int ) ;

void
r88e_set_gain(struct rtwn_softc *sc, uint8_t gain)
{

 rtwn_bb_setbits(sc, R92C_OFDM0_AGCCORE1(0),
     R92C_OFDM0_AGCCORE1_GAIN_M, gain);
}
