
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int tx_data_sz; int rx_data_sz; scalar_t__ rx_data; scalar_t__ tx_data; scalar_t__ rx_cmd; scalar_t__ tx_cmd; } ;
struct chipc_spi_softc {int dummy; } ;
typedef int device_t ;


 int BHND_DEBUG_DEV (int ,char*) ;
 int CHIPC_SPI_FLASHADDR ;
 int CHIPC_SPI_FLASHCTL ;
 int EIO ;
 int KASSERT (int,char*) ;
 int SPI_BARRIER_WRITE (struct chipc_spi_softc*) ;
 int SPI_WRITE (struct chipc_spi_softc*,int ,int ) ;
 scalar_t__ chipc_spi_txrx (struct chipc_spi_softc*,int ,int *) ;
 struct chipc_spi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct chipc_spi_softc *sc;
 uint8_t *buf_in;
 uint8_t *buf_out;
 int i;

 sc = device_get_softc(dev);
 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));

 if (cmd->tx_cmd_sz == 0) {
  BHND_DEBUG_DEV(child, "size of command is ZERO");
  return (EIO);
 }

 SPI_BARRIER_WRITE(sc);
 SPI_WRITE(sc, CHIPC_SPI_FLASHADDR, 0);
 SPI_BARRIER_WRITE(sc);




 buf_out = (uint8_t *)cmd->tx_cmd;
 buf_in = (uint8_t *)cmd->rx_cmd;
 for (i = 0; i < cmd->tx_cmd_sz; i++)
   if (chipc_spi_txrx(sc, buf_out[i], &(buf_in[i])))
    return (EIO);




 buf_out = (uint8_t *)cmd->tx_data;
 buf_in = (uint8_t *)cmd->rx_data;
 for (i = 0; i < cmd->tx_data_sz; i++)
  if (chipc_spi_txrx(sc, buf_out[i], &(buf_in[i])))
   return (EIO);




 SPI_BARRIER_WRITE(sc);
 SPI_WRITE(sc, CHIPC_SPI_FLASHCTL, 0);
 SPI_BARRIER_WRITE(sc);

 return (0);
}
