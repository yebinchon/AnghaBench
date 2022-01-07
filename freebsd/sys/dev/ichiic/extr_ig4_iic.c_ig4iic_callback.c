
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int poll; int call_lock; } ;
typedef TYPE_1__ ig4iic_softc_t ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int IIC_EBUSBSY ;


 int IIC_WAIT ;
 TYPE_1__* device_get_softc (int ) ;
 int errno2iic (int ) ;
 int sx_try_xlock (int *) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

int
ig4iic_callback(device_t dev, int index, caddr_t data)
{
 ig4iic_softc_t *sc = device_get_softc(dev);
 int error = 0;
 int how;

 switch (index) {
 case 128:

  how = *(int *)data;
  if ((how & IIC_WAIT) == 0) {
   if (sx_try_xlock(&sc->call_lock) == 0)
    error = IIC_EBUSBSY;
   else
    sc->poll = 1;
  } else
   sx_xlock(&sc->call_lock);
  break;

 case 129:
  sc->poll = 0;
  sx_unlock(&sc->call_lock);
  break;

 default:
  error = errno2iic(EINVAL);
 }

 return (error);
}
