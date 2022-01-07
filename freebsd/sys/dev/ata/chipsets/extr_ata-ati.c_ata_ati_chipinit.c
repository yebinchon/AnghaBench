
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ata_pci_controller {int channels; int ichannels; int setmode; int ch_attach; void* chipset_data; TYPE_1__* chip; } ;
typedef int * device_t ;
struct TYPE_2__ {scalar_t__ cfg1; int chipid; } ;


 int ATA_ATI_ID ;


 scalar_t__ ATI_AHCI ;
 int ENXIO ;
 int ata_ati_dumb_ch_attach ;
 int ata_ati_ixp700_ch_attach ;
 int ata_ati_setmode ;
 int ata_generic_intr ;
 int ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int *,int ) ;
 int bootverbose ;
 struct ata_pci_controller* device_get_softc (int *) ;
 int device_printf (int *,char*,char*,char*,char*) ;
 int * pci_find_device (int ,int) ;
 int pci_read_config (int *,int,int) ;

__attribute__((used)) static int
ata_ati_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    device_t smbdev;
    uint8_t satacfg;

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    if (ctlr->chip->cfg1 == ATI_AHCI) {
 ctlr->ch_attach = ata_ati_dumb_ch_attach;
 ctlr->setmode = ata_sata_setmode;
 return (0);
    }
    switch (ctlr->chip->chipid) {
    case 129:

 ctlr->channels = 1;
 break;
    case 128:





 smbdev = pci_find_device(ATA_ATI_ID, 0x4385);
 if (smbdev != ((void*)0)) {
     satacfg = pci_read_config(smbdev, 0xad, 1);
     if (bootverbose)
  device_printf(dev, "SATA controller %s (%s%s channel)\n",
      (satacfg & 0x01) == 0 ? "disabled" : "enabled",
      (satacfg & 0x08) == 0 ? "" : "combined mode, ",
      (satacfg & 0x10) == 0 ? "primary" : "secondary");
     ctlr->chipset_data = (void *)(uintptr_t)satacfg;




     if ((satacfg & 0x09) == 0x01)
  ctlr->ichannels &= ~(1 << ((satacfg & 0x10) >> 4));
     else {
         ctlr->ch_attach = ata_ati_ixp700_ch_attach;
     }
 }
 break;
    }

    ctlr->setmode = ata_ati_setmode;
    return 0;
}
