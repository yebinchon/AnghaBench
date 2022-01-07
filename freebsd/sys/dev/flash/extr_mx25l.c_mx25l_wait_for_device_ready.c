
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct spi_command {int* tx_cmd; int* rx_cmd; int rx_cmd_sz; int tx_cmd_sz; } ;
struct mx25l_softc {int sc_dev; int sc_parent; } ;
typedef int cmd ;


 int CMD_READ_STATUS ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 int STATUS_WIP ;
 int memset (struct spi_command*,int ,int) ;

__attribute__((used)) static int
mx25l_wait_for_device_ready(struct mx25l_softc *sc)
{
 uint8_t txBuf[2], rxBuf[2];
 struct spi_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));

 do {
  txBuf[0] = CMD_READ_STATUS;
  cmd.tx_cmd = txBuf;
  cmd.rx_cmd = rxBuf;
  cmd.rx_cmd_sz = 2;
  cmd.tx_cmd_sz = 2;
  err = SPIBUS_TRANSFER(sc->sc_parent, sc->sc_dev, &cmd);
 } while (err == 0 && (rxBuf[1] & STATUS_WIP));

 return (err);
}
