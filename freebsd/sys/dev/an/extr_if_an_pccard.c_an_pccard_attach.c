
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int irq_handle; int irq_res; int irq_rid; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_NET ;
 int an_alloc_irq (int ,int ,int ) ;
 int an_attach (struct an_softc*,int) ;
 int an_intr ;
 int an_probe (int ) ;
 int an_release_resources (int ) ;
 int bus_setup_intr (int ,int ,int ,int *,int ,struct an_softc*,int *) ;
 int device_get_flags (int ) ;
 struct an_softc* device_get_softc (int ) ;

__attribute__((used)) static int
an_pccard_attach(device_t dev)
{
 struct an_softc *sc = device_get_softc(dev);
 int flags = device_get_flags(dev);
 int error;

 error = an_probe(dev);
 if (error == 0) {
  error = ENXIO;
  goto fail;
 }
 error = an_alloc_irq(dev, 0, 0);
 if (error != 0)
  goto fail;

 an_alloc_irq(dev, sc->irq_rid, 0);

 error = an_attach(sc, flags);
 if (error)
  goto fail;




 error = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_NET,
          ((void*)0), an_intr, sc, &sc->irq_handle);
fail:
 if (error)
  an_release_resources(dev);
 return (error);
}
