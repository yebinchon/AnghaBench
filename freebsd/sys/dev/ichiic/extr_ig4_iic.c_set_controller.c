
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ig4iic_softc_t ;


 int IG4_I2C_ENABLE ;
 int IG4_REG_CLR_INTR ;
 int IG4_REG_ENABLE_STATUS ;
 int IG4_REG_I2C_EN ;
 int IIC_ETIMEOUT ;
 int ig4iic_set_intr_mask (int *,int ) ;
 int pause (char*,int) ;
 int reg_read (int *,int ) ;
 int reg_write (int *,int ,int) ;

__attribute__((used)) static int
set_controller(ig4iic_softc_t *sc, uint32_t ctl)
{
 int retry;
 int error;
 uint32_t v;





 ig4iic_set_intr_mask(sc, 0);
 if (ctl & IG4_I2C_ENABLE)
  reg_read(sc, IG4_REG_CLR_INTR);

 reg_write(sc, IG4_REG_I2C_EN, ctl);
 error = IIC_ETIMEOUT;

 for (retry = 100; retry > 0; --retry) {
  v = reg_read(sc, IG4_REG_ENABLE_STATUS);
  if (((v ^ ctl) & IG4_I2C_ENABLE) == 0) {
   error = 0;
   break;
  }
  pause("i2cslv", 1);
 }
 return (error);
}
