
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int I2C_TIMEOUT ;
 int OC_I2C_STATUS_REG ;
 int iicoc_dev_read (int ,int ) ;

__attribute__((used)) static int
iicoc_wait_on_status(device_t dev, uint8_t bit)
{
 int tries = I2C_TIMEOUT;
 uint8_t status;

 do {
  status = iicoc_dev_read(dev, OC_I2C_STATUS_REG);
 } while ((status & bit) != 0 && --tries > 0);

 return (tries == 0 ? -1: 0);
}
