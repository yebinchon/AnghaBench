
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int * vtpci_res; int * vtpci_msix_res; int * vtpci_child_dev; } ;
typedef int * device_t ;


 int PCIR_BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int *,int ,int ,int *) ;
 int device_delete_child (int *,int *) ;
 struct vtpci_softc* device_get_softc (int *) ;
 int vtpci_reset (struct vtpci_softc*) ;

__attribute__((used)) static int
vtpci_detach(device_t dev)
{
 struct vtpci_softc *sc;
 device_t child;
 int error;

 sc = device_get_softc(dev);

 if ((child = sc->vtpci_child_dev) != ((void*)0)) {
  error = device_delete_child(dev, child);
  if (error)
   return (error);
  sc->vtpci_child_dev = ((void*)0);
 }

 vtpci_reset(sc);

 if (sc->vtpci_msix_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(1),
      sc->vtpci_msix_res);
  sc->vtpci_msix_res = ((void*)0);
 }

 if (sc->vtpci_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(0),
      sc->vtpci_res);
  sc->vtpci_res = ((void*)0);
 }

 return (0);
}
