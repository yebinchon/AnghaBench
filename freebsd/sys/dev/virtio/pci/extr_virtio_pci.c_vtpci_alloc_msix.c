
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_nmsix_resources; int vtpci_dev; } ;
typedef int device_t ;


 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
vtpci_alloc_msix(struct vtpci_softc *sc, int nvectors)
{
 device_t dev;
 int nmsix, cnt, required;

 dev = sc->vtpci_dev;


 required = nvectors + 1;

 nmsix = pci_msix_count(dev);
 if (nmsix < required)
  return (1);

 cnt = required;
 if (pci_alloc_msix(dev, &cnt) == 0 && cnt >= required) {
  sc->vtpci_nmsix_resources = required;
  return (0);
 }

 pci_release_msi(dev);

 return (1);
}
