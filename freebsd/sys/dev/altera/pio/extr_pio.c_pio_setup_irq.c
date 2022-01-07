
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_softc {int dev; int ih; int * res; } ;
typedef int device_t ;


 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,void*,void*,int *) ;
 struct pio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
pio_setup_irq(device_t dev, void *intr_handler, void *ih_user)
{
 struct pio_softc *sc;

 sc = device_get_softc(dev);


 if (bus_setup_intr(sc->dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
  ((void*)0), intr_handler, ih_user, &sc->ih)) {
  device_printf(sc->dev, "Unable to setup intr\n");
  return (1);
 }

 return (0);
}
