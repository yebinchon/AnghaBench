
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_dev; } ;
typedef int device_t ;


 int BGE_PCI_REG_BASEADDR ;
 int BGE_PCI_REG_DATA ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
bge_writereg_ind(struct bge_softc *sc, int off, int val)
{
 device_t dev;

 dev = sc->bge_dev;

 pci_write_config(dev, BGE_PCI_REG_BASEADDR, off, 4);
 pci_write_config(dev, BGE_PCI_REG_DATA, val, 4);
}
