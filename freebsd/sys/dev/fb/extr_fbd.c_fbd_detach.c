
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbd_softc {int sc_info; } ;
typedef int device_t ;


 struct fbd_softc* device_get_softc (int ) ;
 int fbd_unregister (int ) ;

__attribute__((used)) static int
fbd_detach(device_t dev)
{
 struct fbd_softc *sc;
 int err;

 sc = device_get_softc(dev);

 err = fbd_unregister(sc->sc_info);

 return (err);
}
