
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_kbd; } ;
typedef TYPE_1__ hv_kbd_sc ;
typedef int device_t ;


 scalar_t__ KBD_IS_CONFIGURED (int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hvkbd_disable (int *) ;
 int kbd_detach (int *) ;
 int kbd_unregister (int *) ;

int
hv_kbd_drv_detach(device_t dev)
{
 int error = 0;
 hv_kbd_sc *sc = device_get_softc(dev);
 hvkbd_disable(&sc->sc_kbd);
 if (KBD_IS_CONFIGURED(&sc->sc_kbd)) {
  error = kbd_unregister(&sc->sc_kbd);
  if (error) {
   device_printf(dev, "WARNING: kbd_unregister() "
       "returned non-zero! (ignored)\n");
  }
 }



 return (error);
}
