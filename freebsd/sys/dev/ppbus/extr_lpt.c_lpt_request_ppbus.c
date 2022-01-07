
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
 int ppb_request_bus (int ,int ,int) ;

__attribute__((used)) static int
lpt_request_ppbus(device_t dev, int how)
{
 device_t ppbus = device_get_parent(dev);
 struct lpt_data *sc = DEVTOSOFTC(dev);
 int error;





 ppb_assert_locked(ppbus);
 if (sc->sc_state & HAVEBUS)
  return (0);

 error = ppb_request_bus(ppbus, dev, how);
 if (error == 0)
  sc->sc_state |= HAVEBUS;
 return (error);
}
