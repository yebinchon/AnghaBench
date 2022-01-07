
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int OC_I2C_CMD_REG ;
 int OC_I2C_DATA_REG ;
 int OC_STATUS_TIP ;
 scalar_t__ oc_wait_on_status (int ) ;
 int oc_write_reg (int ,int ) ;

__attribute__((used)) static int
oc_wr_cmd(uint8_t data, uint8_t cmd)
{
 oc_write_reg(OC_I2C_DATA_REG, data);
 oc_write_reg(OC_I2C_CMD_REG, cmd);

 if (oc_wait_on_status(OC_STATUS_TIP) < 0)
  return (-1);
 return (0);
}
