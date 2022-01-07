
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {int nrxchains; int * rf_prog; struct r92e_softc* sc_priv; } ;
struct r92e_softc {int * rf_chnlbw; } ;


 int R92C_FPGA0_RFIFACEOE (int) ;
 int R92C_FPGA0_RFIFACESW (int) ;
 int R92C_FPGA0_RFMOD ;
 int R92C_HSSI_PARAM2 (int) ;
 int R92C_HSSI_PARAM2_ADDR_LENGTH ;
 int R92C_HSSI_PARAM2_DATA_LENGTH ;
 int R92C_RFMOD_CCK_EN ;
 int R92C_RFMOD_OFDM_EN ;
 int R92C_RF_CHNLBW ;
 scalar_t__ r92c_init_rf_chain (struct rtwn_softc*,int *,int) ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int ,int) ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_rf_read (struct rtwn_softc*,int,int ) ;

void
r92e_init_rf(struct rtwn_softc *sc)
{
 struct r92e_softc *rs = sc->sc_priv;
 uint32_t reg, type;
 int i, chain, idx, off;

 for (chain = 0, i = 0; chain < sc->nrxchains; chain++, i++) {

  idx = chain / 2;
  off = (chain % 2) * 16;
  reg = rtwn_bb_read(sc, R92C_FPGA0_RFIFACESW(idx));
  type = (reg >> off) & 0x10;


  rtwn_bb_setbits(sc, R92C_FPGA0_RFIFACEOE(chain),
      0, 0x100000);
  rtwn_delay(sc, 1);

  rtwn_bb_setbits(sc, R92C_FPGA0_RFIFACEOE(chain),
      0, 0x10);
  rtwn_delay(sc, 1);

  rtwn_bb_setbits(sc, R92C_HSSI_PARAM2(chain),
      R92C_HSSI_PARAM2_ADDR_LENGTH, 0);
  rtwn_delay(sc, 1);
  rtwn_bb_setbits(sc, R92C_HSSI_PARAM2(chain),
      R92C_HSSI_PARAM2_DATA_LENGTH, 0);
  rtwn_delay(sc, 1);


  i += r92c_init_rf_chain(sc, &sc->rf_prog[i], chain);


  rs->rf_chnlbw[chain] = rtwn_rf_read(sc, chain, R92C_RF_CHNLBW);
 }


 rtwn_bb_setbits(sc, R92C_FPGA0_RFMOD, 0, R92C_RFMOD_CCK_EN);
 rtwn_bb_setbits(sc, R92C_FPGA0_RFMOD, 0, R92C_RFMOD_OFDM_EN);
}
