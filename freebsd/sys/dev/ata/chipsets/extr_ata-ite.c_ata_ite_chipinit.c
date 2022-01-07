
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int channels; int ch_attach; int * chipset_data; int setmode; TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ chipid; } ;


 scalar_t__ ATA_IT8213F ;
 int ENXIO ;
 int ata_generic_intr ;
 int ata_ite_8213_setmode ;
 int ata_ite_821x_setmode ;
 int ata_ite_ch_attach ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_ite_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    if (ctlr->chip->chipid == ATA_IT8213F) {

 ctlr->channels = 1;

 ctlr->setmode = ata_ite_8213_setmode;
    }
    else {

 pci_write_config(dev, 0x50, pci_read_config(dev, 0x50, 1) & ~0x83, 1);


 pci_write_config(dev, 0x54, 0x31, 1);
 pci_write_config(dev, 0x56, 0x31, 1);

 ctlr->setmode = ata_ite_821x_setmode;

 ctlr->chipset_data = ((void*)0);
    }
    ctlr->ch_attach = ata_ite_ch_attach;
    return (0);
}
