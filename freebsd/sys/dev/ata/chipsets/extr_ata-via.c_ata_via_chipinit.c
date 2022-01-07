
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int channels; int setmode; TYPE_1__* chip; int getrev; int reset; int ch_detach; int ch_attach; int r_rid2; int r_type2; int r_res2; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg2; scalar_t__ max_dma; } ;


 scalar_t__ ATA_SA150 ;
 int DEV_BSIZE ;
 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int VIABAR ;
 int VIABUG ;
 int VIACLK ;
 int VIASATA ;
 int ata_generic_intr ;
 int ata_sata_getrev ;
 int ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 int ata_via_ch_attach ;
 int ata_via_ch_detach ;
 int ata_via_new_setmode ;
 int ata_via_old_setmode ;
 int ata_via_reset ;
 int ata_via_sata_ch_attach ;
 int ata_via_sata_getrev ;
 int ata_via_sata_reset ;
 int ata_via_sata_setmode ;
 int ata_via_southbridge_fixup (int ) ;
 int bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_via_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;


    if (ctlr->chip->cfg2 & VIASATA) {
 ctlr->ch_attach = ata_via_sata_ch_attach;
 ctlr->setmode = ata_via_sata_setmode;
 ctlr->getrev = ata_via_sata_getrev;
 ctlr->reset = ata_via_sata_reset;
 return 0;
    }

    if (ctlr->chip->max_dma >= ATA_SA150) {
 ctlr->r_type2 = SYS_RES_IOPORT;
 ctlr->r_rid2 = PCIR_BAR(5);
 if ((ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
         &ctlr->r_rid2, RF_ACTIVE))) {
     ctlr->ch_attach = ata_via_ch_attach;
     ctlr->ch_detach = ata_via_ch_detach;
     ctlr->reset = ata_via_reset;
 }
 if (ctlr->chip->cfg2 & VIABAR) {
     ctlr->channels = 3;
     ctlr->setmode = ata_via_new_setmode;
 } else
     ctlr->setmode = ata_sata_setmode;
 ctlr->getrev = ata_sata_getrev;
 return 0;
    }


    if (ctlr->chip->cfg2 & VIACLK)
 pci_write_config(dev, 0x50, 0x030b030b, 4);


    if (ctlr->chip->cfg2 & VIABUG)
 ata_via_southbridge_fixup(dev);


    pci_write_config(dev, 0x43,
       (pci_read_config(dev, 0x43, 1) & 0x90) | 0x2a, 1);


    pci_write_config(dev, 0x44, pci_read_config(dev, 0x44, 1) | 0x08, 1);


    pci_write_config(dev, 0x46,
       (pci_read_config(dev, 0x46, 1) & 0x0c) | 0xf0, 1);


    pci_write_config(dev, 0x60, DEV_BSIZE, 2);
    pci_write_config(dev, 0x68, DEV_BSIZE, 2);

    ctlr->setmode = ata_via_old_setmode;
    return 0;
}
