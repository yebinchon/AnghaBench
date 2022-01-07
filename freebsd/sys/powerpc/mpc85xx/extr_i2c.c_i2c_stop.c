
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2CCR_MEN ;
 int I2CCR_TXAK ;
 int I2C_CONTROL_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_stop(device_t dev)
{
 struct i2c_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->mutex);
 i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_TXAK);
 DELAY(1000);
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
