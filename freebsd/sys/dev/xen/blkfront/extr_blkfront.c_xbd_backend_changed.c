
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int * xbd_disk; int xbd_users; } ;
typedef int device_t ;
typedef int XenbusState ;


 int DPRINTK (char*,int) ;
 int KASSERT (int ,char*) ;
 struct xbd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int disk_gone (int *) ;
 int xbd_closing (int ) ;
 int xbd_connect (struct xbd_softc*) ;
 int xbd_initialize (struct xbd_softc*) ;

__attribute__((used)) static void
xbd_backend_changed(device_t dev, XenbusState backend_state)
{
 struct xbd_softc *sc = device_get_softc(dev);

 DPRINTK("backend_state=%d\n", backend_state);

 switch (backend_state) {
 case 128:
 case 131:
 case 130:
 case 129:
 case 136:
  break;

 case 133:
 case 132:
  xbd_initialize(sc);
  break;

 case 134:
  xbd_initialize(sc);
  xbd_connect(sc);
  break;

 case 135:
  if (sc->xbd_users > 0) {
   device_printf(dev, "detaching with pending users\n");
   KASSERT(sc->xbd_disk != ((void*)0),
       ("NULL disk with pending users\n"));
   disk_gone(sc->xbd_disk);
  } else {
   xbd_closing(dev);
  }
  break;
 }
}
