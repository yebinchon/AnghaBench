
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_DATA_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_do_wait (int ,struct i2c_softc*,int,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_write(device_t dev, const char *buf, int len, int *sent, int timeout)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);
 *sent = 0;

 mtx_lock(&sc->mutex);
 while (*sent < len) {
  i2c_write_reg(sc, I2C_DATA_REG, *buf++);
  DELAY(1250);

  error = i2c_do_wait(dev, sc, 1, 0);
  if (error) {
   mtx_unlock(&sc->mutex);
   return (error);
  }

  (*sent)++;
 }
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
