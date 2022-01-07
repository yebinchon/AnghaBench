
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int max_dma; } ;


 int ATA_BMDEVSPEC_0 ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_UDMA2 ;
 scalar_t__ ata_dma_check_80pin ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;

__attribute__((used)) static int
ata_marvell_setmode(device_t dev, int target, int mode)
{
 struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
 struct ata_channel *ch = device_get_softc(dev);

 mode = min(mode, ctlr->chip->max_dma);

 if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
     ATA_IDX_INB(ch, ATA_BMDEVSPEC_0) & 0x01) {
  ata_print_cable(dev, "controller");
  mode = ATA_UDMA2;
 }

 return (mode);
}
