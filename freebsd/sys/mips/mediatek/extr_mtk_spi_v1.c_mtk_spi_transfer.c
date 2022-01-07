
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int tx_data_sz; int rx_data_sz; scalar_t__ rx_data; scalar_t__ tx_data; scalar_t__ tx_cmd; scalar_t__ rx_cmd; } ;
struct mtk_spi_softc {scalar_t__ nonflash; } ;
typedef int device_t ;


 int CAPT_ON_CLK_FALL ;
 int ENXIO ;
 int MSBFIRST ;
 int MTK_SPICFG ;
 int MTK_SPI_READ ;
 int MTK_SPI_WRITE ;
 int SPIBUS_CS_HIGH ;
 int SPICLKPOL ;
 int SPI_WRITE (struct mtk_spi_softc*,int ,int) ;
 int TX_ON_CLK_FALL ;
 struct mtk_spi_softc* device_get_softc (int ) ;
 int fls (int) ;
 int mtk_soc_get_cpuclk () ;
 int mtk_spi_chip_activate (struct mtk_spi_softc*) ;
 int mtk_spi_chip_deactivate (struct mtk_spi_softc*) ;
 int mtk_spi_txrx (struct mtk_spi_softc*,int*,int ) ;
 int spibus_get_clock (int ,int*) ;
 int spibus_get_cs (int ,int*) ;
 int spibus_get_mode (int ,int*) ;

__attribute__((used)) static int
mtk_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct mtk_spi_softc *sc;
 uint8_t *buf, byte, *tx_buf;
 uint32_t cs, clock, mode;
 int i, sz, error = 0, write = 0;
 int div, clk, cfgreg;

 sc = device_get_softc(dev);

 spibus_get_cs(child, &cs);
 spibus_get_clock(child, &clock);
 spibus_get_mode(child, &mode);

 cs &= ~SPIBUS_CS_HIGH;

 if (cs != 0)

  return (ENXIO);

 cfgreg = MSBFIRST;
 switch(mode) {
  case 0:

  case 3:
   cfgreg |= SPICLKPOL | TX_ON_CLK_FALL;
                        break;
  case 1:
   cfgreg |= TX_ON_CLK_FALL;
                        break;
  case 2:
   cfgreg |= CAPT_ON_CLK_FALL;
                        break;
 }





 if (clock != 0) {
  div = (mtk_soc_get_cpuclk() + (clock - 1)) / clock;
  clk = fls(div) - 2;
  if (clk < 0)
   clk = 0;
  else if (clk > 6)
   clk = 6;
 } else {
  clk = 6;
 }

 SPI_WRITE(sc, MTK_SPICFG, cfgreg | clk);

 if (sc->nonflash == 0) {

  tx_buf = (uint8_t *)(cmd->tx_cmd);


  switch(tx_buf[0]) {
   case 132:
    cmd->tx_cmd_sz = 1;
    cmd->rx_cmd_sz = 3;
    break;
   case 137:
   case 136:
   case 128:
   case 129:
    cmd->tx_cmd_sz = 1;
    cmd->rx_cmd_sz = 0;
    break;
   case 131:
    cmd->tx_cmd_sz = 1;
    cmd->rx_cmd_sz = 1;
    break;
   case 133:
   case 135:
    cmd->rx_cmd_sz = cmd->tx_data_sz = 0;
    break;
   case 130:
    cmd->rx_cmd_sz = 0;
    break;
   case 134:
    cmd->rx_cmd_sz = cmd->rx_data_sz = 0;
    break;
  }
 }

 mtk_spi_chip_activate(sc);

 if (cmd->tx_cmd_sz + cmd->rx_cmd_sz) {
  buf = (uint8_t *)(cmd->rx_cmd);
  tx_buf = (uint8_t *)(cmd->tx_cmd);
  sz = cmd->tx_cmd_sz;
  if (sc->nonflash == 0)
   sz += cmd->rx_cmd_sz;

  for (i = 0; i < sz; i++) {
                        if(i < cmd->tx_cmd_sz) {
           byte = tx_buf[i];
           error = mtk_spi_txrx(sc, &byte,
               MTK_SPI_WRITE);
           if (error)
            goto mtk_spi_transfer_fail;
                                continue;
                        }
                        error = mtk_spi_txrx(sc, &byte,
              MTK_SPI_READ);
          if (error)
           goto mtk_spi_transfer_fail;
   buf[i] = byte;
  }
 }





 if (cmd->tx_data_sz + cmd->rx_data_sz) {
  write = (cmd->tx_data_sz > 0)?1:0;
  buf = (uint8_t *)(write ? cmd->tx_data : cmd->rx_data);
  sz = write ? cmd->tx_data_sz : cmd->rx_data_sz;

  for (i = 0; i < sz; i++) {
   byte = buf[i];
   error = mtk_spi_txrx(sc, &byte,
       write ? MTK_SPI_WRITE : MTK_SPI_READ);
   if (error)
    goto mtk_spi_transfer_fail;
   buf[i] = byte;
  }
 }
mtk_spi_transfer_fail:
 mtk_spi_chip_deactivate(sc);

 return (error);
}
