
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {int max_dma; } ;


 int ATA_UDMA2 ;
 scalar_t__ ata_dma_check_80pin ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;

__attribute__((used)) static int
ata_jmicron_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);

 mode = min(mode, ctlr->chip->max_dma);

 if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
     pci_read_config(parent, 0x40, 1) & 0x08) {
  ata_print_cable(dev, "controller");
  mode = ATA_UDMA2;
 }

 return (mode);
}
