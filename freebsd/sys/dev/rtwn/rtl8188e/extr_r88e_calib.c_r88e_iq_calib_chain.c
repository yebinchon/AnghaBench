
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int MS (int,int ) ;
 int R88E_RF_WE_LUT ;
 int R92C_FPGA0_IQK ;
 int R92C_IQK_AGC_PTS ;
 int R92C_IQK_AGC_RSP ;
 int R92C_POWER_IQK_RESULT ;
 int R92C_RF_RCK_OS ;
 int R92C_RF_TXPA_G (int) ;
 int R92C_RX_IQK ;
 int R92C_RX_IQK_PI (int ) ;
 int R92C_RX_IQK_TONE (int ) ;
 int R92C_RX_POWER_IQK_AFTER (int ) ;
 int R92C_RX_POWER_IQK_BEFORE (int ) ;
 int R92C_TX_IQK ;
 int R92C_TX_IQK_PI (int ) ;
 int R92C_TX_IQK_TONE (int ) ;
 int R92C_TX_POWER_IQK_AFTER (int ) ;
 int R92C_TX_POWER_IQK_BEFORE (int ) ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_rf_write (struct rtwn_softc*,int ,int ,int) ;

__attribute__((used)) static int
r88e_iq_calib_chain(struct rtwn_softc *sc, uint16_t tx[2], uint16_t rx[2])
{
 uint32_t status;


 rtwn_bb_write(sc, R92C_FPGA0_IQK, 0);
 rtwn_rf_write(sc, 0, R88E_RF_WE_LUT, 0x800a0);
 rtwn_rf_write(sc, 0, R92C_RF_RCK_OS, 0x30000);
 rtwn_rf_write(sc, 0, R92C_RF_TXPA_G(0), 0xf);
 rtwn_rf_write(sc, 0, R92C_RF_TXPA_G(1), 0xf117b);
 rtwn_bb_write(sc, R92C_FPGA0_IQK, 0x80800000);


 rtwn_bb_write(sc, R92C_TX_IQK, 0x01007c00);
 rtwn_bb_write(sc, R92C_RX_IQK, 0x81004800);


 rtwn_bb_write(sc, R92C_TX_IQK_TONE(0), 0x10008c1c);
 rtwn_bb_write(sc, R92C_RX_IQK_TONE(0), 0x30008c1c);
 rtwn_bb_write(sc, R92C_TX_IQK_PI(0), 0x82160804);
 rtwn_bb_write(sc, R92C_RX_IQK_PI(0), 0x28160000);


 rtwn_bb_write(sc, R92C_IQK_AGC_RSP, 0x0046a911);


 rtwn_bb_write(sc, R92C_IQK_AGC_PTS, 0xf9000000);
 rtwn_bb_write(sc, R92C_IQK_AGC_PTS, 0xf8000000);


 rtwn_delay(sc, 10000);


 status = rtwn_bb_read(sc, R92C_RX_POWER_IQK_AFTER(0));
 if (status & (1 << 28))
  return (0);


 tx[0] = MS(rtwn_bb_read(sc, R92C_TX_POWER_IQK_BEFORE(0)),
     R92C_POWER_IQK_RESULT);
 tx[1] = MS(rtwn_bb_read(sc, R92C_TX_POWER_IQK_AFTER(0)),
     R92C_POWER_IQK_RESULT);
 if (tx[0] == 0x142 || tx[1] == 0x042)
  return (0);

 rtwn_bb_write(sc, R92C_TX_IQK, 0x80007c00 | (tx[0] << 16) | tx[1]);


 rtwn_bb_write(sc, R92C_FPGA0_IQK, 0);
 rtwn_rf_write(sc, 0, R88E_RF_WE_LUT, 0x800a0);
 rtwn_rf_write(sc, 0, R92C_RF_RCK_OS, 0x30000);
 rtwn_rf_write(sc, 0, R92C_RF_TXPA_G(0), 0xf);
 rtwn_rf_write(sc, 0, R92C_RF_TXPA_G(1), 0xf7ffa);
 rtwn_bb_write(sc, R92C_FPGA0_IQK, 0x80800000);


 rtwn_bb_write(sc, R92C_RX_IQK, 0x01004800);


 rtwn_bb_write(sc, R92C_TX_IQK_TONE(0), 0x30008c1c);
 rtwn_bb_write(sc, R92C_RX_IQK_TONE(0), 0x10008c1c);
 rtwn_bb_write(sc, R92C_TX_IQK_PI(0), 0x82160c05);
 rtwn_bb_write(sc, R92C_RX_IQK_PI(0), 0x28160c05);


 rtwn_bb_write(sc, R92C_IQK_AGC_RSP, 0x0046a911);


 rtwn_bb_write(sc, R92C_IQK_AGC_PTS, 0xf9000000);
 rtwn_bb_write(sc, R92C_IQK_AGC_PTS, 0xf8000000);


 rtwn_delay(sc, 10000);


 status = rtwn_bb_read(sc, R92C_RX_POWER_IQK_AFTER(0));
 if (status & (1 << 27))
  return (1);


 rx[0] = MS(rtwn_bb_read(sc, R92C_RX_POWER_IQK_BEFORE(0)),
     R92C_POWER_IQK_RESULT);
 rx[1] = MS(status, R92C_POWER_IQK_RESULT);
 if (rx[0] == 0x132 || rx[1] == 0x036)
  return (1);

 return (3);
}
