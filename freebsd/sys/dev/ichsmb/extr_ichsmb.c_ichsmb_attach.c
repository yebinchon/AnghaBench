
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int ich_func_t ;
typedef int device_t ;
struct TYPE_4__ {int mutex; int irq_handle; int irq_res; int io_res; int * smb; } ;


 int DRIVER_SMBUS ;
 int ENXIO ;
 int ICH_HST_STA ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 scalar_t__ bus_generic_attach ;
 int bus_setup_intr (int ,int ,int,int *,int ,TYPE_1__* const,int *) ;
 int bus_write_1 (int ,int ,int) ;
 int config_intrhook_oneshot (int ,int ) ;
 int * device_add_child (int ,int ,int) ;
 int device_get_nameunit (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ichsmb_device_intr ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;

int
ichsmb_attach(device_t dev)
{
 const sc_p sc = device_get_softc(dev);
 int error;


 mtx_init(&sc->mutex, device_get_nameunit(dev), "ichsmb", MTX_DEF);


 if ((sc->smb = device_add_child(dev, DRIVER_SMBUS, -1)) == ((void*)0)) {
  device_printf(dev, "no \"%s\" child found\n", DRIVER_SMBUS);
  error = ENXIO;
  goto fail;
 }


 bus_write_1(sc->io_res, ICH_HST_STA, 0xff);


 error = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), ichsmb_device_intr, sc, &sc->irq_handle);
 if (error != 0) {
  device_printf(dev, "can't setup irq\n");
  goto fail;
 }


 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);

 return (0);

fail:
 mtx_destroy(&sc->mutex);
 return (error);
}
