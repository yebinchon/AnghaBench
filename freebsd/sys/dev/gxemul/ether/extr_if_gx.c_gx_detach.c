
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gx_softc {int sc_intr; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct gx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
gx_detach(device_t dev)
{
 struct gx_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr);


 return (0);
}
