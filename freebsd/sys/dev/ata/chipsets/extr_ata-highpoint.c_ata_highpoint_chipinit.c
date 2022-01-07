
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int setmode; int ch_detach; int ch_attach; TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cfg2; scalar_t__ cfg1; } ;


 int ENXIO ;
 scalar_t__ HPT_372 ;
 scalar_t__ HPT_OLD ;
 int ata_generic_intr ;
 int ata_highpoint_ch_attach ;
 int ata_highpoint_setmode ;
 int ata_pci_ch_detach ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_highpoint_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    if (ctlr->chip->cfg2 == HPT_OLD) {

 pci_write_config(dev, 0x51, (pci_read_config(dev, 0x51, 1) & ~0x80), 1);
    }
    else {

 pci_write_config(dev, 0x51, (pci_read_config(dev, 0x51, 1) & ~0x03), 1);
 pci_write_config(dev, 0x55, (pci_read_config(dev, 0x55, 1) & ~0x03), 1);


 pci_write_config(dev, 0x5a, (pci_read_config(dev, 0x5a, 1) & ~0x10), 1);


 if (ctlr->chip->cfg1 < HPT_372)
     pci_write_config(dev, 0x5b, 0x22, 1);
 else
     pci_write_config(dev, 0x5b,
        (pci_read_config(dev, 0x5b, 1) & 0x01) | 0x20, 1);
    }
    ctlr->ch_attach = ata_highpoint_ch_attach;
    ctlr->ch_detach = ata_pci_ch_detach;
    ctlr->setmode = ata_highpoint_setmode;
    return 0;
}
