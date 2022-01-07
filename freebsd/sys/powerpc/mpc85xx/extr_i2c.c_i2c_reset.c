
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_BAUD_RATE_DEF ;
 int I2C_BAUD_RATE_FAST ;
 int I2C_CONTROL_REG ;
 int I2C_DFSRR_REG ;
 int I2C_DFSSR_DIV ;
 int I2C_ENABLE ;
 int I2C_FDR_REG ;
 int I2C_STATUS_REG ;


 int IIC_NOERR ;


 struct i2c_softc* device_get_softc (int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_reset(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
 struct i2c_softc *sc;
 uint8_t baud_rate;

 sc = device_get_softc(dev);

 switch (speed) {
 case 131:
  baud_rate = I2C_BAUD_RATE_FAST;
  break;
 case 129:
 case 128:
 case 130:
 default:
  baud_rate = I2C_BAUD_RATE_DEF;
  break;
 }

 mtx_lock(&sc->mutex);
 i2c_write_reg(sc, I2C_CONTROL_REG, 0x0);
 i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
 DELAY(1000);
 i2c_write_reg(sc, I2C_FDR_REG, baud_rate);
 i2c_write_reg(sc, I2C_DFSRR_REG, I2C_DFSSR_DIV);
 i2c_write_reg(sc, I2C_CONTROL_REG, I2C_ENABLE);
 DELAY(1000);
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
