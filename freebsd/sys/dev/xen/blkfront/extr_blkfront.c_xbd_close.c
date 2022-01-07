
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {scalar_t__ xbd_users; int xbd_dev; int xbd_flags; } ;
struct disk {struct xbd_softc* d_drv1; } ;


 int ENXIO ;
 int XBDF_OPEN ;
 scalar_t__ XenbusStateClosing ;
 int xbd_closing (int ) ;
 scalar_t__ xenbus_get_otherend_state (int ) ;

__attribute__((used)) static int
xbd_close(struct disk *dp)
{
 struct xbd_softc *sc = dp->d_drv1;

 if (sc == ((void*)0))
  return (ENXIO);
 sc->xbd_flags &= ~XBDF_OPEN;
 if (--(sc->xbd_users) == 0) {





  if (xenbus_get_otherend_state(sc->xbd_dev) ==
      XenbusStateClosing)
   xbd_closing(sc->xbd_dev);
 }
 return (0);
}
