
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_dev; } ;
typedef int device_t ;


 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
vtpci_alloc_msi(struct vtpci_softc *sc)
{
 device_t dev;
 int nmsi, cnt, required;

 dev = sc->vtpci_dev;
 required = 1;

 nmsi = pci_msi_count(dev);
 if (nmsi < required)
  return (1);

 cnt = required;
 if (pci_alloc_msi(dev, &cnt) == 0 && cnt >= required)
  return (0);

 pci_release_msi(dev);

 return (1);
}
