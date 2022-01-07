
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbd_softc {int * sc_info; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int * FB_GETINFO (int ) ;
 int device_get_parent (int ) ;
 struct fbd_softc* device_get_softc (int ) ;
 int fbd_register (int *) ;

__attribute__((used)) static int
fbd_attach(device_t dev)
{
 struct fbd_softc *sc;
 int err;

 sc = device_get_softc(dev);

 sc->sc_dev = dev;
 sc->sc_info = FB_GETINFO(device_get_parent(dev));
 if (sc->sc_info == ((void*)0))
  return (ENXIO);
 err = fbd_register(sc->sc_info);

 return (err);
}
