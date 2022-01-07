
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {scalar_t__ bge_asicrev; int bge_dev; } ;
typedef int device_t ;


 scalar_t__ BGE_ASICREV_BCM5906 ;
 int BGE_PCI_MEMWIN_BASEADDR ;
 int BGE_PCI_MEMWIN_DATA ;
 int BGE_SEND_RING_1_TO_4 ;
 int BGE_STATS_BLOCK ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static uint32_t
bge_readmem_ind(struct bge_softc *sc, int off)
{
 device_t dev;
 uint32_t val;

 if (sc->bge_asicrev == BGE_ASICREV_BCM5906 &&
     off >= BGE_STATS_BLOCK && off < BGE_SEND_RING_1_TO_4)
  return (0);

 dev = sc->bge_dev;

 pci_write_config(dev, BGE_PCI_MEMWIN_BASEADDR, off, 4);
 val = pci_read_config(dev, BGE_PCI_MEMWIN_DATA, 4);
 pci_write_config(dev, BGE_PCI_MEMWIN_BASEADDR, 0, 4);
 return (val);
}
