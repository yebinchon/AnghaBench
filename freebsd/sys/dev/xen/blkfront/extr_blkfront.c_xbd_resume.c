
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_state; } ;
typedef int device_t ;


 int DPRINTK (char*,int ) ;
 int XBD_STATE_CONNECTED ;
 struct xbd_softc* device_get_softc (int ) ;
 int xbd_free (struct xbd_softc*) ;
 int xbd_initialize (struct xbd_softc*) ;
 scalar_t__ xen_suspend_cancelled ;
 int xenbus_get_node (int ) ;

__attribute__((used)) static int
xbd_resume(device_t dev)
{
 struct xbd_softc *sc = device_get_softc(dev);

 if (xen_suspend_cancelled) {
  sc->xbd_state = XBD_STATE_CONNECTED;
  return (0);
 }

 DPRINTK("xbd_resume: %s\n", xenbus_get_node(dev));

 xbd_free(sc);
 xbd_initialize(sc);
 return (0);
}
