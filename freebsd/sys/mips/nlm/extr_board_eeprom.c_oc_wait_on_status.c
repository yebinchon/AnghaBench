
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int I2C_TIMEOUT ;
 int OC_I2C_STATUS_REG ;
 int oc_read_reg (int ) ;

__attribute__((used)) static int
oc_wait_on_status(uint8_t bit)
{
 int tries = I2C_TIMEOUT;
 uint8_t status;

 do {
  status = oc_read_reg(OC_I2C_STATUS_REG);
 } while ((status & bit) != 0 && --tries > 0);

 return (tries == 0 ? -1: 0);
}
