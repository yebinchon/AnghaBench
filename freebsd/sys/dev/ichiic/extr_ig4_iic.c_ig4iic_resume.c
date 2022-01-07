
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; int call_lock; int version; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int IG4_HAS_ADDREGS (int ) ;
 int bus_generic_resume (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ ig4iic_set_config (TYPE_1__*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int ig4iic_resume(ig4iic_softc_t *sc)
{
 int error;

 sx_xlock(&sc->call_lock);
 if (ig4iic_set_config(sc, IG4_HAS_ADDREGS(sc->version)))
  device_printf(sc->dev, "controller error during resume\n");
 sx_xunlock(&sc->call_lock);

 error = bus_generic_resume(sc->dev);

 return (error);
}
