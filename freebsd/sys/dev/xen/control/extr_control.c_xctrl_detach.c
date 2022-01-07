
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xctrl_softc {int xctrl_watch; } ;
typedef int device_t ;


 struct xctrl_softc* device_get_softc (int ) ;
 int xs_unregister_watch (int *) ;

__attribute__((used)) static int
xctrl_detach(device_t dev)
{
 struct xctrl_softc *xctrl;

 xctrl = device_get_softc(dev);


 xs_unregister_watch(&xctrl->xctrl_watch);

 return (0);
}
