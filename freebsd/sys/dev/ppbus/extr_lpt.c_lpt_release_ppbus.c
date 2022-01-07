
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpt_data {int sc_state; } ;
typedef int device_t ;


 struct lpt_data* DEVTOSOFTC (int ) ;
 int HAVEBUS ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;
 int ppb_release_bus (int ,int ) ;

__attribute__((used)) static int
lpt_release_ppbus(device_t dev)
{
 device_t ppbus = device_get_parent(dev);
 struct lpt_data *sc = DEVTOSOFTC(dev);
 int error = 0;

 ppb_assert_locked(ppbus);
 if (sc->sc_state & HAVEBUS) {
  error = ppb_release_bus(ppbus, dev);
  if (error == 0)
   sc->sc_state &= ~HAVEBUS;
 }
 return (error);
}
