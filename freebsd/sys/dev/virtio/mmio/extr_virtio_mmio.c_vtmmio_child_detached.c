
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int dummy; } ;
typedef int device_t ;


 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_release_child_resources (struct vtmmio_softc*) ;
 int vtmmio_reset (struct vtmmio_softc*) ;

__attribute__((used)) static void
vtmmio_child_detached(device_t dev, device_t child)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 vtmmio_reset(sc);
 vtmmio_release_child_resources(sc);
}
