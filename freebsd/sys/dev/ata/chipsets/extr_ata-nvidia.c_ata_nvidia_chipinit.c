
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int r_rid2; void* setmode; int getrev; int r_res2; TYPE_1__* chip; int reset; int ch_detach; int ch_attach; int r_type2; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; scalar_t__ max_dma; } ;


 int ATA_INL (int ,int) ;
 int ATA_OUTB (int ,int,int) ;
 int ATA_OUTL (int ,int,int) ;
 scalar_t__ ATA_SA150 ;
 int DELAY (int) ;
 int ENXIO ;
 int NV4 ;
 int NVAHCI ;
 int NVQ ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int ata_generic_intr ;
 int ata_nvidia_ch_attach ;
 int ata_nvidia_ch_attach_dumb ;
 int ata_nvidia_reset ;
 void* ata_nvidia_setmode ;
 int ata_pci_ch_detach ;
 int ata_sata_getrev ;
 void* ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_nvidia_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    if (ctlr->chip->cfg1 & NVAHCI) {
 ctlr->ch_attach = ata_nvidia_ch_attach_dumb;
 ctlr->setmode = ata_sata_setmode;
    } else if (ctlr->chip->max_dma >= ATA_SA150) {
 if (pci_read_config(dev, PCIR_BAR(5), 1) & 1)
     ctlr->r_type2 = SYS_RES_IOPORT;
 else
     ctlr->r_type2 = SYS_RES_MEMORY;
 ctlr->r_rid2 = PCIR_BAR(5);
 if ((ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
         &ctlr->r_rid2, RF_ACTIVE))) {
     int offset = ctlr->chip->cfg1 & NV4 ? 0x0440 : 0x0010;

     ctlr->ch_attach = ata_nvidia_ch_attach;
     ctlr->ch_detach = ata_pci_ch_detach;
     ctlr->reset = ata_nvidia_reset;


     pci_write_config(dev, 0x50, pci_read_config(dev, 0x50, 1) | 0x04,1);

     DELAY(10);
     if (ctlr->chip->cfg1 & NVQ) {

  ATA_OUTL(ctlr->r_res2, offset, 0x00ff00ff);


  ATA_OUTL(ctlr->r_res2, offset + 4, 0x000d000d);


  ATA_OUTL(ctlr->r_res2, 0x0400,
    ATA_INL(ctlr->r_res2, 0x0400) & 0xfffffff9);
     }
     else {

  ATA_OUTB(ctlr->r_res2, offset, 0xff);


  ATA_OUTB(ctlr->r_res2, offset + 1, 0xdd);
     }
 }
 ctlr->setmode = ata_sata_setmode;
 ctlr->getrev = ata_sata_getrev;
    }
    else {

 pci_write_config(dev, 0x51, pci_read_config(dev, 0x51, 1) & 0x0f, 1);
 ctlr->setmode = ata_nvidia_setmode;
    }
    return 0;
}
