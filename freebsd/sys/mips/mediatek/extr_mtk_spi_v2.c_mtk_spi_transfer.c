
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int tx_data_sz; int rx_data_sz; scalar_t__ rx_data; scalar_t__ tx_data; scalar_t__ tx_cmd; scalar_t__ rx_cmd; } ;
struct mtk_spi_softc {int dummy; } ;
typedef int device_t ;
 int ENXIO ;
 int MTK_SPI_READ ;
 int MTK_SPI_WRITE ;
 int SPIBUS_CS_HIGH ;
 struct mtk_spi_softc* device_get_softc (int ) ;
 int mtk_spi_chip_activate (struct mtk_spi_softc*) ;
 int mtk_spi_chip_deactivate (struct mtk_spi_softc*) ;
 int mtk_spi_txrx (struct mtk_spi_softc*,int*,int ) ;
 int spibus_get_cs (int ,int *) ;

__attribute__((used)) static int
mtk_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct mtk_spi_softc *sc;
 uint8_t *buf, byte, *tx_buf;
 uint32_t cs;
 int i, sz, error, write = 0;

 sc = device_get_softc(dev);

 spibus_get_cs(child, &cs);

 cs &= ~SPIBUS_CS_HIGH;

 if (cs != 0)

  return (ENXIO);


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

 mtk_spi_chip_activate(sc);

 if (cmd->tx_cmd_sz + cmd->rx_cmd_sz) {
  buf = (uint8_t *)(cmd->rx_cmd);
  tx_buf = (uint8_t *)(cmd->tx_cmd);
  sz = cmd->tx_cmd_sz + cmd->rx_cmd_sz;

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

 return (0);
}
