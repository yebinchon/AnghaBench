
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_softc {int sc_dma_tag; int * sc_bus; } ;
typedef int device_t ;


 int ENXIO ;
 int PCI_RES_BUS ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_get_dma_tag (int ) ;
 struct pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int pcib_get_bus (int ) ;
 int pcib_get_domain (int ) ;

int
pci_attach_common(device_t dev)
{
 struct pci_softc *sc;
 int busno, domain;




 sc = device_get_softc(dev);
 domain = pcib_get_domain(dev);
 busno = pcib_get_bus(dev);
 if (bootverbose)
  device_printf(dev, "domain=%d, physical bus=%d\n",
      domain, busno);
 sc->sc_dma_tag = bus_get_dma_tag(dev);
 return (0);
}
