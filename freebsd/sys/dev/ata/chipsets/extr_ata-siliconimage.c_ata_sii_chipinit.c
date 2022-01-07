
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int channels; int setmode; int ch_detach; int ch_attach; int getrev; int reset; TYPE_1__* chip; int r_res2; int r_rid2; int r_type2; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; int cfg2; int max_dma; int text; int chipid; } ;


 int ATA_OUTL (int ,int,int) ;
 int ATA_SA150 ;
 int ATA_SII0680 ;
 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SII_4CH ;

 int SII_SETCLK ;
 int SYS_RES_MEMORY ;
 int ata_cmd_ch_attach ;
 int ata_cmd_setmode ;
 int ata_generic_intr ;
 int ata_pci_ch_detach ;
 int ata_sata_getrev ;
 int ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 int ata_sii_ch_attach ;
 int ata_sii_ch_detach ;
 int ata_sii_reset ;
 int ata_sii_setmode ;
 int bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

int
ata_sii_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    switch (ctlr->chip->cfg1) {
    case 128:
 ctlr->r_type2 = SYS_RES_MEMORY;
 ctlr->r_rid2 = PCIR_BAR(5);
 if (!(ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
          &ctlr->r_rid2, RF_ACTIVE))){
     if (ctlr->chip->chipid != ATA_SII0680 ||
       (pci_read_config(dev, 0x8a, 1) & 1))
  return ENXIO;
 }

 if (ctlr->chip->cfg2 & SII_SETCLK) {
     if ((pci_read_config(dev, 0x8a, 1) & 0x30) != 0x10)
  pci_write_config(dev, 0x8a,
     (pci_read_config(dev, 0x8a, 1) & 0xcf)|0x10,1);
     if ((pci_read_config(dev, 0x8a, 1) & 0x30) != 0x10)
  device_printf(dev, "%s could not set ATA133 clock\n",
         ctlr->chip->text);
 }


 if (ctlr->chip->cfg2 & SII_4CH) {
     ATA_OUTL(ctlr->r_res2, 0x0200, 0x00000002);
     ctlr->channels = 4;
 }


 pci_write_config(dev, 0x48,
    (pci_read_config(dev, 0x48, 4) & ~0x03c00000), 4);


 pci_write_config(dev, 0x8a, (pci_read_config(dev, 0x8a, 1) & 0x3f), 1);

 if (ctlr->r_res2) {
     ctlr->ch_attach = ata_sii_ch_attach;
     ctlr->ch_detach = ata_sii_ch_detach;
 }

 if (ctlr->chip->max_dma >= ATA_SA150) {
     ctlr->reset = ata_sii_reset;
     ctlr->setmode = ata_sata_setmode;
     ctlr->getrev = ata_sata_getrev;
 }
 else
     ctlr->setmode = ata_sii_setmode;
 break;

    default:
 if ((pci_read_config(dev, 0x51, 1) & 0x08) != 0x08) {
     device_printf(dev, "HW has secondary channel disabled\n");
     ctlr->channels = 1;
 }


 pci_write_config(dev, 0x71, 0x01, 1);

 ctlr->ch_attach = ata_cmd_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->setmode = ata_cmd_setmode;
 break;
    }
    return 0;
}
