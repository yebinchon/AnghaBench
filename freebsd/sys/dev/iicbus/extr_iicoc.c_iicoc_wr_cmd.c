
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int OC_I2C_CMD_REG ;
 int OC_I2C_DATA_REG ;
 int OC_STATUS_TIP ;
 int device_printf (int ,char*) ;
 int iicoc_dev_write (int ,int ,int ) ;
 scalar_t__ iicoc_wait_on_status (int ,int ) ;

__attribute__((used)) static int
iicoc_wr_cmd(device_t dev, uint8_t data, uint8_t cmd)
{

 iicoc_dev_write(dev, OC_I2C_DATA_REG, data);
 iicoc_dev_write(dev, OC_I2C_CMD_REG, cmd);
 if (iicoc_wait_on_status(dev, OC_STATUS_TIP) < 0) {
  device_printf(dev, "write: Timeout waiting for TIP clear.\n");
  return (-1);
 }
 return (0);
}
