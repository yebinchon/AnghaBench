
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {scalar_t__ bge_asicrev; int bge_dev; } ;
typedef int device_t ;


 scalar_t__ BGE_ASICREV_BCM5906 ;
 int BGE_PCI_MEMWIN_BASEADDR ;
 int BGE_PCI_MEMWIN_DATA ;
 int BGE_SEND_RING_1_TO_4 ;
 int BGE_STATS_BLOCK ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
bge_writemem_ind(struct bge_softc *sc, int off, int val)
{
 device_t dev;

 if (sc->bge_asicrev == BGE_ASICREV_BCM5906 &&
     off >= BGE_STATS_BLOCK && off < BGE_SEND_RING_1_TO_4)
  return;

 dev = sc->bge_dev;

 pci_write_config(dev, BGE_PCI_MEMWIN_BASEADDR, off, 4);
 pci_write_config(dev, BGE_PCI_MEMWIN_DATA, val, 4);
 pci_write_config(dev, BGE_PCI_MEMWIN_BASEADDR, 0, 4);
}
