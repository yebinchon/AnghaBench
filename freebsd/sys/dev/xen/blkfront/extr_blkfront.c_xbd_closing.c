
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int * xbd_disk; } ;
typedef int device_t ;


 int DPRINTK (char*,int ) ;
 int XenbusStateClosed ;
 int XenbusStateClosing ;
 struct xbd_softc* device_get_softc (int ) ;
 int disk_destroy (int *) ;
 int xenbus_get_node (int ) ;
 int xenbus_set_state (int ,int ) ;

__attribute__((used)) static void
xbd_closing(device_t dev)
{
 struct xbd_softc *sc = device_get_softc(dev);

 xenbus_set_state(dev, XenbusStateClosing);

 DPRINTK("xbd_closing: %s removed\n", xenbus_get_node(dev));

 if (sc->xbd_disk != ((void*)0)) {
  disk_destroy(sc->xbd_disk);
  sc->xbd_disk = ((void*)0);
 }

 xenbus_set_state(dev, XenbusStateClosed);
}
