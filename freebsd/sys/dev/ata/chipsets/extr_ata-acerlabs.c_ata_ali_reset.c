
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int chiprev; } ;


 scalar_t__ ATA_ALI_1533 ;
 int GRANDPARENT (int ) ;
 int M_TEMP ;
 int ata_generic_reset (int ) ;
 int device_get_children (int ,int **,int*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int free (int *,int ) ;
 scalar_t__ pci_get_devid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
ata_ali_reset(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    device_t *children;
    int nchildren, i;

    ata_generic_reset(dev);






    if (ctlr->chip->chiprev == 0xc3 || ctlr->chip->chiprev == 0xc2) {
 if (!device_get_children(GRANDPARENT(dev), &children, &nchildren)) {
     for (i = 0; i < nchildren; i++) {
  if (pci_get_devid(children[i]) == ATA_ALI_1533) {
      pci_write_config(children[i], 0x58,
         pci_read_config(children[i], 0x58, 1) &
         ~(0x04 << ch->unit), 1);
      pci_write_config(children[i], 0x58,
         pci_read_config(children[i], 0x58, 1) |
         (0x04 << ch->unit), 1);
      break;
  }
     }
     free(children, M_TEMP);
 }
    }
}
