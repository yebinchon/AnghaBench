
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2CCR_RSTA ;
 int I2C_CONTROL_REG ;
 int I2C_DATA_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_do_wait (int ,struct i2c_softc*,int,int) ;
 int i2c_flag_set (struct i2c_softc*,int ,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_repeated_start(device_t dev, u_char slave, int timeout)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 mtx_lock(&sc->mutex);

 i2c_flag_set(sc, I2C_CONTROL_REG ,I2CCR_RSTA);

 i2c_write_reg(sc, I2C_DATA_REG, slave);
 DELAY(1250);

 error = i2c_do_wait(dev, sc, 1, 1);
 mtx_unlock(&sc->mutex);

 if (error)
  return (error);

 return (IIC_NOERR);
}
