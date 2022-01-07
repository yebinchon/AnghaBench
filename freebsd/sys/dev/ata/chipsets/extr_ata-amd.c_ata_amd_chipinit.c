
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int setmode; int ch_attach; TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; } ;


 int AMD_BUG ;
 int ENXIO ;
 int ata_amd_ch_attach ;
 int ata_amd_setmode ;
 int ata_generic_intr ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_amd_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;


    if (ctlr->chip->cfg1 & AMD_BUG)
 pci_write_config(dev, 0x41, pci_read_config(dev, 0x41, 1) & 0x0f, 1);
    else
 pci_write_config(dev, 0x41, pci_read_config(dev, 0x41, 1) | 0xf0, 1);

    ctlr->ch_attach = ata_amd_ch_attach;
    ctlr->setmode = ata_amd_setmode;
    return 0;
}
