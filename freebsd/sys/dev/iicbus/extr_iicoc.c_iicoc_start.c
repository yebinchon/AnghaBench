
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iicoc_softc {int i2cdev_addr; int sc_mtx; } ;
typedef int device_t ;


 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int IIC_NOERR ;
 int OC_COMMAND_START ;
 int OC_COMMAND_STOP ;
 int OC_I2C_CMD_REG ;
 int OC_I2C_STATUS_REG ;
 int OC_STATUS_AL ;
 int OC_STATUS_BUSY ;
 struct iicoc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int iicoc_dev_read (int ,int ) ;
 int iicoc_dev_write (int ,int ,int ) ;
 scalar_t__ iicoc_wait_on_status (int ,int ) ;
 scalar_t__ iicoc_wr_ack_cmd (int ,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
iicoc_start(device_t dev, u_char slave, int timeout)
{
 int error = IIC_EBUSERR;
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->sc_mtx);
 sc->i2cdev_addr = (slave >> 1);


 if (iicoc_wait_on_status(dev, OC_STATUS_BUSY) < 0)
  goto i2c_stx_error;


 if (iicoc_wr_ack_cmd(dev, slave, OC_COMMAND_START)) {
  device_printf(dev,
      "I2C write slave address [0x%x] failed.\n", slave);
  error = IIC_ENOACK;
  goto i2c_stx_error;
 }


 if (iicoc_dev_read(dev, OC_I2C_STATUS_REG) & OC_STATUS_AL) {
  device_printf(dev, "I2C Bus Arbitration Lost, Aborting.\n");
  error = IIC_EBUSERR;
  goto i2c_stx_error;
 }
 error = IIC_NOERR;
 mtx_unlock(&sc->sc_mtx);
 return (error);
i2c_stx_error:
 iicoc_dev_write(dev, OC_I2C_CMD_REG, OC_COMMAND_STOP);
 iicoc_wait_on_status(dev, OC_STATUS_BUSY);
 mtx_unlock(&sc->sc_mtx);
 return (error);
}
