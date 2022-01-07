
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int call_lock; int io_lock; int * intr_handle; int * iicbus; int intr_res; int dev; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int IG4_REG_INTR_MASK ;
 int bus_generic_detach (int ) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 scalar_t__ device_is_attached (int ) ;
 int mtx_destroy (int *) ;
 int reg_write (TYPE_1__*,int ,int ) ;
 int set_controller (TYPE_1__*,int ) ;
 int sx_destroy (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
ig4iic_detach(ig4iic_softc_t *sc)
{
 int error;

 if (device_is_attached(sc->dev)) {
  error = bus_generic_detach(sc->dev);
  if (error)
   return (error);
 }
 if (sc->iicbus)
  device_delete_child(sc->dev, sc->iicbus);
 if (sc->intr_handle)
  bus_teardown_intr(sc->dev, sc->intr_res, sc->intr_handle);

 sx_xlock(&sc->call_lock);

 sc->iicbus = ((void*)0);
 sc->intr_handle = ((void*)0);
 reg_write(sc, IG4_REG_INTR_MASK, 0);
 set_controller(sc, 0);

 sx_xunlock(&sc->call_lock);

 mtx_destroy(&sc->io_lock);
 sx_destroy(&sc->call_lock);

 return (0);
}
