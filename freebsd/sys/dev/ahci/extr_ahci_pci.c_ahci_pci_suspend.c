
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int r_mem; } ;
typedef int device_t ;


 int AHCI_GHC ;
 int AHCI_GHC_IE ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int bus_generic_suspend (int ) ;
 struct ahci_controller* device_get_softc (int ) ;

__attribute__((used)) static int
ahci_pci_suspend(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);

 bus_generic_suspend(dev);

 ATA_OUTL(ctlr->r_mem, AHCI_GHC,
      ATA_INL(ctlr->r_mem, AHCI_GHC) & (~AHCI_GHC_IE));
 return 0;
}
