
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_command {int tx_cmd_sz; int rx_cmd_sz; struct spi_command** rx_cmd; struct spi_command** tx_cmd; } ;
typedef struct spi_command uint8_t ;
typedef int txBuf ;
struct at45d_mfg_info {int ext_id; int jedec_id; } ;
typedef int rxBuf ;
typedef int device_t ;
typedef int cmd ;


 struct spi_command MANUFACTURER_ID ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 int be16dec (struct spi_command*) ;
 int be32dec (struct spi_command*) ;
 int device_get_parent (int ) ;
 int memset (struct spi_command*,int ,int) ;

__attribute__((used)) static int
at45d_get_mfg_info(device_t dev, struct at45d_mfg_info *resp)
{
 uint8_t rxBuf[8], txBuf[8];
 struct spi_command cmd;
 int err;

 memset(&cmd, 0, sizeof(cmd));
 memset(txBuf, 0, sizeof(txBuf));
 memset(rxBuf, 0, sizeof(rxBuf));

 txBuf[0] = MANUFACTURER_ID;
 cmd.tx_cmd = &txBuf;
 cmd.rx_cmd = &rxBuf;
 cmd.tx_cmd_sz = cmd.rx_cmd_sz = 7;
 err = SPIBUS_TRANSFER(device_get_parent(dev), dev, &cmd);
 if (err)
  return (err);

 resp->jedec_id = be32dec(rxBuf + 1);
 resp->ext_id = be16dec(rxBuf + 5);

 return (0);
}
