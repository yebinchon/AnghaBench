
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int IIC_ENOACK ;
 int OC_I2C_STATUS_REG ;
 int OC_STATUS_NACK ;
 int device_printf (int ,char*) ;
 int iicoc_dev_read (int ,int ) ;
 scalar_t__ iicoc_wr_cmd (int ,int ,int ) ;

__attribute__((used)) static int
iicoc_wr_ack_cmd(device_t dev, uint8_t data, uint8_t cmd)
{
 if (iicoc_wr_cmd(dev, data, cmd) < 0)
  return (-1);

 if (iicoc_dev_read(dev, OC_I2C_STATUS_REG) & OC_STATUS_NACK) {
  device_printf(dev, "write: I2C command ACK Error.\n");
  return (IIC_ENOACK);
 }
 return (0);
}
