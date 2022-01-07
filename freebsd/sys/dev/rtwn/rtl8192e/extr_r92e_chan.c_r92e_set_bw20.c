
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int nrxchains; } ;


 int R12A_DATA_SEC ;
 int R12A_DATA_SEC_NO_EXT ;
 int R88E_RF_CHNLBW_BW20 ;
 int R92C_FPGA0_RFMOD ;
 int R92C_FPGA1_RFMOD ;
 int R92C_OFDM0_TXPSEUDONOISEWGT ;
 int R92C_RFMOD_40MHZ ;
 int R92C_RF_CHNLBW ;
 int R92C_WMAC_TRXPTCL_CTL ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_rf_setbits (struct rtwn_softc*,int,int ,int ,int) ;
 int rtwn_setbits_2 (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static void
r92e_set_bw20(struct rtwn_softc *sc, uint8_t chan)
{
 int i;

 rtwn_setbits_2(sc, R92C_WMAC_TRXPTCL_CTL, 0x180, 0);
 rtwn_write_1(sc, R12A_DATA_SEC, R12A_DATA_SEC_NO_EXT);

 rtwn_bb_setbits(sc, R92C_FPGA0_RFMOD, R92C_RFMOD_40MHZ, 0);
 rtwn_bb_setbits(sc, R92C_FPGA1_RFMOD, R92C_RFMOD_40MHZ, 0);


 for (i = 0; i < sc->nrxchains; i++)
  rtwn_rf_setbits(sc, i, R92C_RF_CHNLBW,
      R88E_RF_CHNLBW_BW20, 0xc00);

 rtwn_bb_setbits(sc, R92C_OFDM0_TXPSEUDONOISEWGT, 0xc0000000, 0);
}
