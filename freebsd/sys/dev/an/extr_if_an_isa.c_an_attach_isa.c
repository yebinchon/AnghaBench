
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int irq_handle; int irq_res; int an_dev; int irq_rid; int port_rid; } ;
typedef int device_t ;


 int INTR_TYPE_NET ;
 int an_alloc_irq (int ,int ,int ) ;
 int an_alloc_port (int ,int ,int) ;
 int an_attach (struct an_softc*,int) ;
 int an_intr ;
 int an_release_resources (int ) ;
 int bus_setup_intr (int ,int ,int ,int *,int ,struct an_softc*,int *) ;
 int device_get_flags (int ) ;
 struct an_softc* device_get_softc (int ) ;

__attribute__((used)) static int
an_attach_isa(device_t dev)
{
 struct an_softc *sc = device_get_softc(dev);
 int flags = device_get_flags(dev);
 int error;

 an_alloc_port(dev, sc->port_rid, 1);
 an_alloc_irq(dev, sc->irq_rid, 0);

 sc->an_dev = dev;

 error = an_attach(sc, flags);
 if (error) {
  an_release_resources(dev);
  return (error);
 }

 error = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_NET,
          ((void*)0), an_intr, sc, &sc->irq_handle);
 if (error) {
  an_release_resources(dev);
  return (error);
 }
 return (0);
}
