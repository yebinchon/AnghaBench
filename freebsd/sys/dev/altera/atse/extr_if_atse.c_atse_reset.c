
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct atse_softc {int atse_dev; } ;


 int ATSE_ETH_ADDR_ALL ;
 int BASE_CFG_COMMAND_CONFIG ;
 int BASE_CFG_COMMAND_CONFIG_CNTL_FRM_ENA ;
 int BASE_CFG_COMMAND_CONFIG_CRC_FWD ;
 int BASE_CFG_COMMAND_CONFIG_ENA_10 ;
 int BASE_CFG_COMMAND_CONFIG_ETH_SPEED ;
 int BASE_CFG_COMMAND_CONFIG_LOOP_ENA ;
 int BASE_CFG_COMMAND_CONFIG_PAD_EN ;
 int BASE_CFG_COMMAND_CONFIG_RX_ENA ;
 int BASE_CFG_COMMAND_CONFIG_RX_ERR_DISC ;
 int BASE_CFG_COMMAND_CONFIG_SW_RESET ;
 int BASE_CFG_COMMAND_CONFIG_TX_ADDR_INS ;
 int BASE_CFG_COMMAND_CONFIG_TX_ENA ;
 int BASE_CFG_FRM_LENGTH ;
 int BASE_CFG_PAUSE_QUANT ;
 int BASE_CFG_RX_ALMOST_EMPTY ;
 int BASE_CFG_RX_ALMOST_FULL ;
 int BASE_CFG_RX_SECTION_EMPTY ;
 int BASE_CFG_RX_SECTION_FULL ;
 int BASE_CFG_TX_ALMOST_EMPTY ;
 int BASE_CFG_TX_ALMOST_FULL ;
 int BASE_CFG_TX_IPG_LENGTH ;
 int BASE_CFG_TX_SECTION_EMPTY ;
 int BASE_CFG_TX_SECTION_FULL ;
 int CSR_READ_4 (struct atse_softc*,int ) ;
 int CSR_WRITE_4 (struct atse_softc*,int ,int) ;
 int DELAY (int) ;
 int ENXIO ;
 int FIFO_DEPTH_RX ;
 int FIFO_DEPTH_TX ;
 int PCS_CONTROL ;
 int PCS_CONTROL_AUTO_NEGOTIATION_ENABLE ;
 int PCS_CONTROL_ISOLATE ;
 int PCS_CONTROL_LOOPBACK ;
 int PCS_CONTROL_POWERDOWN ;
 int PCS_CONTROL_RESET ;
 int PCS_EXT_IF_MODE ;
 int PCS_EXT_IF_MODE_SGMII_ENA ;
 int PCS_EXT_IF_MODE_USE_SGMII_AN ;
 int PCS_EXT_LINK_TIMER_0 ;
 int PCS_EXT_LINK_TIMER_1 ;
 int PCS_READ_2 (struct atse_softc*,int ) ;
 int PCS_WRITE_2 (struct atse_softc*,int ,int) ;
 int RX_CMD_STAT ;
 int RX_CMD_STAT_RX_SHIFT16 ;
 int TX_CMD_STAT ;
 int TX_CMD_STAT_OMIT_CRC ;
 int TX_CMD_STAT_TX_SHIFT16 ;
 int atse_get_eth_address (struct atse_softc*) ;
 int atse_set_eth_address (struct atse_softc*,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
atse_reset(struct atse_softc *sc)
{
 uint32_t val4, mask;
 uint16_t val;
 int i;
 PCS_WRITE_2(sc, PCS_EXT_LINK_TIMER_0, 0x0D40);
 PCS_WRITE_2(sc, PCS_EXT_LINK_TIMER_1, 0x0003);


 val = PCS_EXT_IF_MODE_SGMII_ENA|PCS_EXT_IF_MODE_USE_SGMII_AN;
 PCS_WRITE_2(sc, PCS_EXT_IF_MODE, val);



 val = PCS_READ_2(sc, PCS_CONTROL);
 val &= ~(PCS_CONTROL_ISOLATE|PCS_CONTROL_POWERDOWN);
 val &= ~PCS_CONTROL_LOOPBACK;
 val |= PCS_CONTROL_AUTO_NEGOTIATION_ENABLE;
 PCS_WRITE_2(sc, PCS_CONTROL, val);


 val = PCS_READ_2(sc, PCS_CONTROL);
 val |= PCS_CONTROL_RESET;
 PCS_WRITE_2(sc, PCS_CONTROL, val);


 for (i = 0; i < 100; i++) {
  val = PCS_READ_2(sc, PCS_CONTROL);
  if ((val & PCS_CONTROL_RESET) == 0) {
   break;
  }
  DELAY(10);
 }

 if ((val & PCS_CONTROL_RESET) != 0) {
  device_printf(sc->atse_dev, "PCS reset timed out.\n");
  return (ENXIO);
 }



 mask = BASE_CFG_COMMAND_CONFIG_TX_ENA|BASE_CFG_COMMAND_CONFIG_RX_ENA;
 val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
 val4 &= ~mask;

 CSR_WRITE_4(sc, BASE_CFG_COMMAND_CONFIG, val4);

 for (i = 0; i < 100; i++) {
  val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
  if ((val4 & mask) == 0) {
   break;
  }
  DELAY(10);
 }
 if ((val4 & mask) != 0) {
  device_printf(sc->atse_dev, "Disabling MAC TX/RX timed out.\n");
  return (ENXIO);
 }

 CSR_WRITE_4(sc, BASE_CFG_TX_SECTION_EMPTY, FIFO_DEPTH_TX - 16);
 CSR_WRITE_4(sc, BASE_CFG_TX_ALMOST_FULL, 3);
 CSR_WRITE_4(sc, BASE_CFG_TX_ALMOST_EMPTY, 8);
 CSR_WRITE_4(sc, BASE_CFG_RX_SECTION_EMPTY, FIFO_DEPTH_RX - 16);
 CSR_WRITE_4(sc, BASE_CFG_RX_ALMOST_FULL, 8);
 CSR_WRITE_4(sc, BASE_CFG_RX_ALMOST_EMPTY, 8);





 CSR_WRITE_4(sc, BASE_CFG_TX_SECTION_FULL, 0);
 CSR_WRITE_4(sc, BASE_CFG_RX_SECTION_FULL, 0);




 atse_get_eth_address(sc);
 atse_set_eth_address(sc, ATSE_ETH_ADDR_ALL);


 CSR_WRITE_4(sc, BASE_CFG_FRM_LENGTH, 1518);
 CSR_WRITE_4(sc, BASE_CFG_TX_IPG_LENGTH, 12);
 CSR_WRITE_4(sc, BASE_CFG_PAUSE_QUANT, 0xFFFF);

 val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
 val4 &= ~BASE_CFG_COMMAND_CONFIG_ETH_SPEED;

 val4 &= ~BASE_CFG_COMMAND_CONFIG_ENA_10;
 val4 |= BASE_CFG_COMMAND_CONFIG_PAD_EN;
 val4 &= ~BASE_CFG_COMMAND_CONFIG_CRC_FWD;




 val4 |= BASE_CFG_COMMAND_CONFIG_RX_ERR_DISC;

 val &= ~BASE_CFG_COMMAND_CONFIG_LOOP_ENA;
 CSR_WRITE_4(sc, BASE_CFG_COMMAND_CONFIG, val4);






 val4 = CSR_READ_4(sc, TX_CMD_STAT);
 val4 &= ~(TX_CMD_STAT_OMIT_CRC|TX_CMD_STAT_TX_SHIFT16);
 CSR_WRITE_4(sc, TX_CMD_STAT, val4);

 val4 = CSR_READ_4(sc, RX_CMD_STAT);
 val4 &= ~RX_CMD_STAT_RX_SHIFT16;
 val4 |= RX_CMD_STAT_RX_SHIFT16;
 CSR_WRITE_4(sc, RX_CMD_STAT, val4);


 val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
 val4 |= BASE_CFG_COMMAND_CONFIG_SW_RESET;
 CSR_WRITE_4(sc, BASE_CFG_COMMAND_CONFIG, val4);

 for (i = 0; i < 100; i++) {
  val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
  if ((val4 & BASE_CFG_COMMAND_CONFIG_SW_RESET) == 0) {
   break;
  }
  DELAY(10);
 }
 if ((val4 & BASE_CFG_COMMAND_CONFIG_SW_RESET) != 0) {
  device_printf(sc->atse_dev, "MAC reset timed out.\n");
  return (ENXIO);
 }


 mask = BASE_CFG_COMMAND_CONFIG_TX_ENA|BASE_CFG_COMMAND_CONFIG_RX_ENA;
 val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
 val4 |= mask;
 CSR_WRITE_4(sc, BASE_CFG_COMMAND_CONFIG, val4);

 for (i = 0; i < 100; i++) {
  val4 = CSR_READ_4(sc, BASE_CFG_COMMAND_CONFIG);
  if ((val4 & mask) == mask) {
   break;
  }
  DELAY(10);
 }
 if ((val4 & mask) != mask) {
  device_printf(sc->atse_dev, "Enabling MAC TX/RX timed out.\n");
  return (ENXIO);
 }

 return (0);
}
