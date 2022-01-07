
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_command {int rx_cmd_sz; int tx_cmd_sz; struct spi_command* rx_cmd; struct spi_command* tx_cmd; } ;
typedef struct spi_command uint8_t ;
typedef int txBuf ;
struct mx25l_softc {int sc_dev; int sc_parent; } ;
typedef int rxBuf ;
typedef int cmd ;


 struct spi_command CMD_WRITE_DISABLE ;
 struct spi_command CMD_WRITE_ENABLE ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 int memset (struct spi_command*,int ,int) ;

__attribute__((used)) static int
mx25l_set_writable(struct mx25l_softc *sc, int writable)
{
 uint8_t txBuf[1], rxBuf[1];
 struct spi_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 memset(txBuf, 0, sizeof(txBuf));
 memset(rxBuf, 0, sizeof(rxBuf));

 txBuf[0] = writable ? CMD_WRITE_ENABLE : CMD_WRITE_DISABLE;
 cmd.tx_cmd = txBuf;
 cmd.rx_cmd = rxBuf;
 cmd.rx_cmd_sz = 1;
 cmd.tx_cmd_sz = 1;
 err = SPIBUS_TRANSFER(sc->sc_parent, sc->sc_dev, &cmd);
 return (err);
}
