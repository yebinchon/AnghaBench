
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int setmode; TYPE_1__* chip; int reset; int getrev; int ch_detach; int ch_attach; int channels; int r_rid2; int r_type2; int r_res2; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cfg1; int cfg2; } ;


 scalar_t__ ATA_ROSB4_ISA ;
 int ENXIO ;
 int M_TEMP ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 scalar_t__ SWKS_100 ;
 scalar_t__ SWKS_33 ;
 scalar_t__ SWKS_MIO ;
 int SYS_RES_MEMORY ;
 int ata_generic_intr ;
 int ata_sata_getrev ;
 int ata_sata_setmode ;
 int ata_serverworks_ch_attach ;
 int ata_serverworks_ch_detach ;
 int ata_serverworks_sata_reset ;
 int ata_serverworks_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 int bus_alloc_resource_any (int ,int ,int *,int ) ;
 int device_get_children (int ,int **,int*) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int free (int *,int ) ;
 scalar_t__ pci_get_devid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_serverworks_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    if (ctlr->chip->cfg1 == SWKS_MIO) {
 ctlr->r_type2 = SYS_RES_MEMORY;
 ctlr->r_rid2 = PCIR_BAR(5);
 if (!(ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
          &ctlr->r_rid2, RF_ACTIVE)))
     return ENXIO;

 ctlr->channels = ctlr->chip->cfg2;
 ctlr->ch_attach = ata_serverworks_ch_attach;
 ctlr->ch_detach = ata_serverworks_ch_detach;
 ctlr->setmode = ata_sata_setmode;
 ctlr->getrev = ata_sata_getrev;
 ctlr->reset = ata_serverworks_sata_reset;
 return 0;
    }
    else if (ctlr->chip->cfg1 == SWKS_33) {
 device_t *children;
 int nchildren, i;


 if (!device_get_children(device_get_parent(dev), &children,&nchildren)){
     for (i = 0; i < nchildren; i++) {
  if (pci_get_devid(children[i]) == ATA_ROSB4_ISA) {
      pci_write_config(children[i], 0x64,
         (pci_read_config(children[i], 0x64, 4) &
          ~0x00002000) | 0x00004000, 4);
      break;
  }
     }
     free(children, M_TEMP);
 }
    }
    else {
 pci_write_config(dev, 0x5a, (pci_read_config(dev, 0x5a, 1) & ~0x40) |
     ((ctlr->chip->cfg1 == SWKS_100) ? 0x03 : 0x02), 1);
    }
    ctlr->setmode = ata_serverworks_setmode;
    return 0;
}
