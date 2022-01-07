
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_command {int rx_cmd_sz; int tx_cmd_sz; struct spi_command* rx_cmd; struct spi_command* tx_cmd; } ;
typedef struct spi_command uint8_t ;
typedef int txBuf ;
typedef int rxBuf ;
typedef int device_t ;
typedef int cmd ;


 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 struct spi_command STATUS_REGISTER_READ ;
 int device_get_parent (int ) ;
 int memset (struct spi_command*,int ,int) ;

__attribute__((used)) static int
at45d_get_status(device_t dev, uint8_t *status)
{
 uint8_t rxBuf[8], txBuf[8];
 struct spi_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 memset(txBuf, 0, sizeof(txBuf));
 memset(rxBuf, 0, sizeof(rxBuf));

 txBuf[0] = STATUS_REGISTER_READ;
 cmd.tx_cmd = txBuf;
 cmd.rx_cmd = rxBuf;
 cmd.rx_cmd_sz = cmd.tx_cmd_sz = 2;
 err = SPIBUS_TRANSFER(device_get_parent(dev), dev, &cmd);
 *status = rxBuf[1];
 return (err);
}
