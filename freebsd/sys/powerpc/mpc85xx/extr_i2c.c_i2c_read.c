
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2CCR_MEN ;
 int I2CCR_MSTA ;
 int I2CCR_TXAK ;
 int I2C_CONTROL_REG ;
 int I2C_DATA_REG ;
 int IIC_NOERR ;
 struct i2c_softc* device_get_softc (int ) ;
 int i2c_do_wait (int ,struct i2c_softc*,int ,int ) ;
 int i2c_read_reg (struct i2c_softc*,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
i2c_read(device_t dev, char *buf, int len, int *read, int last, int delay)
{
 struct i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);
 *read = 0;

 mtx_lock(&sc->mutex);
 if (len) {
  if (len == 1)
   i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
       I2CCR_MSTA | I2CCR_TXAK);

  else
   i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
       I2CCR_MSTA);


  i2c_read_reg(sc, I2C_DATA_REG);
  DELAY(1000);
 }

 while (*read < len) {
  DELAY(1000);
  error = i2c_do_wait(dev, sc, 0, 0);
  if (error) {
   mtx_unlock(&sc->mutex);
   return (error);
  }
  if ((*read == len - 2) && last) {
   i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
       I2CCR_MSTA | I2CCR_TXAK);
  }

  if ((*read == len - 1) && last) {
   i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN |
       I2CCR_TXAK);
  }

  *buf++ = i2c_read_reg(sc, I2C_DATA_REG);
  (*read)++;
  DELAY(1250);
 }
 mtx_unlock(&sc->mutex);

 return (IIC_NOERR);
}
