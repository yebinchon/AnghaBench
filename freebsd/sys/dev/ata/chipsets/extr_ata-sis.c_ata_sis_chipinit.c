
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int setmode; int getrev; int reset; int ch_detach; int ch_attach; int r_rid2; int r_type2; int r_res2; TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; } ;


 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;







 int SYS_RES_IOPORT ;
 int ata_generic_intr ;
 int ata_pci_ch_detach ;
 int ata_sata_getrev ;
 int ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 int ata_sis_ch_attach ;
 int ata_sis_reset ;
 int ata_sis_setmode ;
 int bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_sis_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    switch (ctlr->chip->cfg1) {
    case 130:
 break;
    case 129:
    case 133:
 pci_write_config(dev, 0x52, pci_read_config(dev, 0x52, 1) & ~0x04, 1);
 break;
    case 134:
    case 131:
 pci_write_config(dev, 0x49, pci_read_config(dev, 0x49, 1) & ~0x01, 1);
 break;
    case 132:
 pci_write_config(dev, 0x50, pci_read_config(dev, 0x50, 2) | 0x0008, 2);
 pci_write_config(dev, 0x52, pci_read_config(dev, 0x52, 2) | 0x0008, 2);
 break;
    case 128:
 ctlr->r_type2 = SYS_RES_IOPORT;
 ctlr->r_rid2 = PCIR_BAR(5);
 if ((ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
         &ctlr->r_rid2, RF_ACTIVE))) {
     ctlr->ch_attach = ata_sis_ch_attach;
     ctlr->ch_detach = ata_pci_ch_detach;
     ctlr->reset = ata_sis_reset;
 }
 ctlr->setmode = ata_sata_setmode;
 ctlr->getrev = ata_sata_getrev;
 return 0;
    default:
 return ENXIO;
    }
    ctlr->setmode = ata_sis_setmode;
    return 0;
}
