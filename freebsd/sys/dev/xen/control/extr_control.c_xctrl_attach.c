
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* node; uintptr_t callback_data; int callback; } ;
struct xctrl_softc {TYPE_1__ xctrl_watch; } ;
typedef int device_t ;


 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int SHUTDOWN_PRI_LAST ;
 struct xctrl_softc* device_get_softc (int ) ;
 int shutdown_final ;
 int xctrl_on_watch_event ;
 scalar_t__ xen_pv_domain () ;
 int xen_pv_shutdown_final ;
 int xs_register_watch (TYPE_1__*) ;

__attribute__((used)) static int
xctrl_attach(device_t dev)
{
 struct xctrl_softc *xctrl;

 xctrl = device_get_softc(dev);


 xctrl->xctrl_watch.node = "control/shutdown";
 xctrl->xctrl_watch.callback = xctrl_on_watch_event;
 xctrl->xctrl_watch.callback_data = (uintptr_t)xctrl;
 xs_register_watch(&xctrl->xctrl_watch);

 if (xen_pv_domain())
  EVENTHANDLER_REGISTER(shutdown_final, xen_pv_shutdown_final, ((void*)0),
                        SHUTDOWN_PRI_LAST);

 return (0);
}
