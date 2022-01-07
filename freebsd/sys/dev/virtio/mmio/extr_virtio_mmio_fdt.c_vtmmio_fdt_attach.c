
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int dummy; } ;
typedef int device_t ;


 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_attach (int ) ;
 int vtmmio_setup_platform (int ,struct vtmmio_softc*) ;

__attribute__((used)) static int
vtmmio_fdt_attach(device_t dev)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);
 vtmmio_setup_platform(dev, sc);

 return (vtmmio_attach(dev));
}
