
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct bge_softc {int bge_dev; } ;
typedef int device_t ;


 scalar_t__ PCI_FUNCMAX ;
 int * pci_find_dbsf (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ pci_get_bus (int ) ;
 scalar_t__ pci_get_domain (int ) ;
 scalar_t__ pci_get_function (int ) ;
 scalar_t__ pci_get_slot (int ) ;

__attribute__((used)) static int
bge_has_multiple_ports(struct bge_softc *sc)
{
 device_t dev = sc->bge_dev;
 u_int b, d, f, fscan, s;

 d = pci_get_domain(dev);
 b = pci_get_bus(dev);
 s = pci_get_slot(dev);
 f = pci_get_function(dev);
 for (fscan = 0; fscan <= PCI_FUNCMAX; fscan++)
  if (fscan != f && pci_find_dbsf(d, b, s, fscan) != ((void*)0))
   return (1);
 return (0);
}
