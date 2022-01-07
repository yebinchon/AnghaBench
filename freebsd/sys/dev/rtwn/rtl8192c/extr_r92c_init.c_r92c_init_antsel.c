
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int ntxchains; int nrxchains; int sc_ant; } ;


 int MS (int ,int ) ;
 int R92C_FPGA0_RFIFACEOE (int ) ;
 int R92C_FPGA0_RFIFACEOE0_ANT ;
 int R92C_FPGA0_RFPARAM (int ) ;
 int R92C_LEDCFG2 ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int ,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int) ;

void
r92c_init_antsel(struct rtwn_softc *sc)
{
 uint32_t reg;

 if (sc->ntxchains != 1 || sc->nrxchains != 1)
  return;

 rtwn_setbits_1(sc, R92C_LEDCFG2, 0, 0x80);
 rtwn_bb_setbits(sc, R92C_FPGA0_RFPARAM(0), 0, 0x2000);
 reg = rtwn_bb_read(sc, R92C_FPGA0_RFIFACEOE(0));
 sc->sc_ant = MS(reg, R92C_FPGA0_RFIFACEOE0_ANT);
 rtwn_setbits_1(sc, R92C_LEDCFG2, 0x80, 0);
}
