
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_softc {int sc_initialized; } ;
typedef int device_t ;


 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 struct ofw_pci_softc* device_get_softc (int ) ;
 int ofw_pci_init (int ) ;

int
ofw_pci_attach(device_t dev)
{
 struct ofw_pci_softc *sc;
 int error;

 sc = device_get_softc(dev);
 if (!sc->sc_initialized) {
  error = ofw_pci_init(dev);
  if (error != 0)
   return (error);
 }

 device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
