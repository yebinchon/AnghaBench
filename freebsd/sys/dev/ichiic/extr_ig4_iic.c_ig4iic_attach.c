
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dev; int intr_handle; int intr_res; int * iicbus; int version; int call_lock; int io_lock; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int ENXIO ;
 int IG4_HAS_ADDREGS (int ) ;
 int IG4_I2C_ENABLE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_SPIN ;
 int bus_generic_attach (int ) ;
 int bus_setup_intr (int ,int ,int,int ,int *,TYPE_1__*,int *) ;
 int * device_add_child (int ,char*,int) ;
 int device_printf (int ,char*,...) ;
 int ig4iic_get_config (TYPE_1__*) ;
 int ig4iic_intr ;
 int ig4iic_set_config (TYPE_1__*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ set_controller (TYPE_1__*,int ) ;
 int sx_init (int *,char*) ;

int
ig4iic_attach(ig4iic_softc_t *sc)
{
 int error;

 mtx_init(&sc->io_lock, "IG4 I/O lock", ((void*)0), MTX_SPIN);
 sx_init(&sc->call_lock, "IG4 call lock");

 ig4iic_get_config(sc);

 error = ig4iic_set_config(sc, IG4_HAS_ADDREGS(sc->version));
 if (error)
  goto done;

 sc->iicbus = device_add_child(sc->dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(sc->dev, "iicbus driver not found\n");
  error = ENXIO;
  goto done;
 }

 if (set_controller(sc, IG4_I2C_ENABLE)) {
  device_printf(sc->dev, "controller error during attach-2\n");
  error = ENXIO;
  goto done;
 }
 if (set_controller(sc, 0)) {
  device_printf(sc->dev, "controller error during attach-3\n");
  error = ENXIO;
  goto done;
 }
 error = bus_setup_intr(sc->dev, sc->intr_res, INTR_TYPE_MISC | INTR_MPSAFE,
          ig4iic_intr, ((void*)0), sc, &sc->intr_handle);
 if (error) {
  device_printf(sc->dev,
         "Unable to setup irq: error %d\n", error);
 }

 error = bus_generic_attach(sc->dev);
 if (error) {
  device_printf(sc->dev,
         "failed to attach child: error %d\n", error);
 }

done:
 return (error);
}
