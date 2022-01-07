
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_users; int xbd_flags; } ;
struct disk {int d_unit; struct xbd_softc* d_drv1; } ;


 int ENXIO ;
 int XBDF_OPEN ;
 int printf (char*,int) ;

__attribute__((used)) static int
xbd_open(struct disk *dp)
{
 struct xbd_softc *sc = dp->d_drv1;

 if (sc == ((void*)0)) {
  printf("xbd%d: not found", dp->d_unit);
  return (ENXIO);
 }

 sc->xbd_flags |= XBDF_OPEN;
 sc->xbd_users++;
 return (0);
}
