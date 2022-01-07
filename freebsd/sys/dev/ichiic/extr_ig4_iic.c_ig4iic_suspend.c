
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int call_lock; int version; int dev; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int IG4_DEVICE_IDLE ;
 scalar_t__ IG4_HAS_ADDREGS (int ) ;
 int IG4_REG_DEVIDLE_CTRL ;
 int IG4_REG_RESETS_SKL ;
 int IG4_RESETS_ASSERT_SKL ;
 int bus_generic_suspend (int ) ;
 int reg_write (TYPE_1__*,int ,int ) ;
 int set_controller (TYPE_1__*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
ig4iic_suspend(ig4iic_softc_t *sc)
{
 int error;


 error = bus_generic_suspend(sc->dev);

 sx_xlock(&sc->call_lock);
 set_controller(sc, 0);
 if (IG4_HAS_ADDREGS(sc->version)) {



  reg_write(sc, IG4_REG_DEVIDLE_CTRL, IG4_DEVICE_IDLE);





  reg_write(sc, IG4_REG_RESETS_SKL, IG4_RESETS_ASSERT_SKL);
 }
 sx_xunlock(&sc->call_lock);

 return (error);
}
