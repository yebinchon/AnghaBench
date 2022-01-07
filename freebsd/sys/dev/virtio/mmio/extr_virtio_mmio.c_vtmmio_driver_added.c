
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int dummy; } ;
typedef int driver_t ;
typedef int device_t ;


 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_probe_and_attach_child (struct vtmmio_softc*) ;

__attribute__((used)) static void
vtmmio_driver_added(device_t dev, driver_t *driver)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 vtmmio_probe_and_attach_child(sc);
}
