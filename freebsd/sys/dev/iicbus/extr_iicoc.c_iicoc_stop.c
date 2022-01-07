
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicoc_softc {int sc_mtx; } ;
typedef int device_t ;


 int OC_COMMAND_STOP ;
 int OC_I2C_CMD_REG ;
 int OC_STATUS_BUSY ;
 struct iicoc_softc* device_get_softc (int ) ;
 int iicoc_dev_write (int ,int ,int ) ;
 int iicoc_wait_on_status (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
iicoc_stop(device_t dev)
{
 int error = 0;
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->sc_mtx);
 iicoc_dev_write(dev, OC_I2C_CMD_REG, OC_COMMAND_STOP);
 iicoc_wait_on_status(dev, OC_STATUS_BUSY);
 mtx_unlock(&sc->sc_mtx);
 return (error);

}
