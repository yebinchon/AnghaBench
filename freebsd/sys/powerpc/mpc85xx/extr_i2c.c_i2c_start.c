
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2CCR_MEN ;
 int I2CCR_MSTA ;
 int I2CCR_MTX ;
 int I2CSR_MBB ;
 int I2C_CONTROL_REG ;
 int I2C_DATA_REG ;
 int I2C_STATUS_REG ;
 int IIC_EBUSERR ;
 int IIC_NOERR ;
 int debugf (char*) ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_do_wait (int ,struct i2c_softc*,int,int) ;
 int i2c_read_reg (struct i2c_softc*,int ) ;
 int i2c_stop (int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_start(device_t dev, u_char slave, int timeout)
{
 struct i2c_softc *sc;
 uint8_t status;
 int error;

 sc = device_get_softc(dev);
 DELAY(1000);

 mtx_lock(&sc->mutex);
 status = i2c_read_reg(sc, I2C_STATUS_REG);

 if (status & I2CSR_MBB) {
  debugf("bus busy");
  mtx_unlock(&sc->mutex);
  i2c_stop(dev);
  return (IIC_EBUSERR);
 }


 i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_MSTA | I2CCR_MTX);

 i2c_write_reg(sc, I2C_DATA_REG, slave);
 DELAY(1250);

 error = i2c_do_wait(dev, sc, 1, 1);

 mtx_unlock(&sc->mutex);
 if (error)
  return (error);

 return (IIC_NOERR);
}
