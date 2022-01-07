
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_softc {int dummy; } ;
typedef int device_t ;


 int I2CCR_MEN ;
 int I2CCR_TXAK ;
 int I2CSR_MAL ;
 int I2CSR_MCF ;
 int I2CSR_MIF ;
 int I2CSR_RXAK ;
 int I2C_CONTROL_REG ;
 int I2C_STATUS_REG ;
 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int IIC_NOERR ;
 int debugf (char*,...) ;
 int i2c_read_reg (struct i2c_softc*,int ) ;
 int i2c_write_reg (struct i2c_softc*,int ,int) ;

__attribute__((used)) static int
i2c_do_wait(device_t dev, struct i2c_softc *sc, int write, int start)
{
 int err;
 uint8_t status;

 status = i2c_read_reg(sc, I2C_STATUS_REG);
 if (status & I2CSR_MIF) {
  if (write && start && (status & I2CSR_RXAK)) {
   debugf("no ack %s", start ?
       "after sending slave address" : "");
   err = IIC_ENOACK;
   goto error;
  }
  if (status & I2CSR_MAL) {
   debugf("arbitration lost");
   err = IIC_EBUSERR;
   goto error;
  }
  if (!write && !(status & I2CSR_MCF)) {
   debugf("transfer unfinished");
   err = IIC_EBUSERR;
   goto error;
  }
 }

 return (IIC_NOERR);

error:
 i2c_write_reg(sc, I2C_STATUS_REG, 0x0);
 i2c_write_reg(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_TXAK);
 return (err);
}
