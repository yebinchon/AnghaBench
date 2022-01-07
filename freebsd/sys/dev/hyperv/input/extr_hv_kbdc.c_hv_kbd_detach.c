
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hs_xact_ctx; } ;
typedef TYPE_1__ hv_kbd_sc ;
typedef int device_t ;


 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hv_kbd_detach1 (int ) ;
 int hv_kbd_drv_detach (int ) ;
 int hv_kbd_fini (TYPE_1__*) ;
 int vmbus_xact_ctx_destroy (int *) ;

__attribute__((used)) static int
hv_kbd_detach(device_t dev)
{
 int ret;
 hv_kbd_sc *sc = device_get_softc(dev);
 hv_kbd_fini(sc);
 if (sc->hs_xact_ctx != ((void*)0))
  vmbus_xact_ctx_destroy(sc->hs_xact_ctx);
 ret = hv_kbd_detach1(dev);
 if (!ret)
  device_printf(dev, "Fail to detach\n");
 return hv_kbd_drv_detach(dev);
}
