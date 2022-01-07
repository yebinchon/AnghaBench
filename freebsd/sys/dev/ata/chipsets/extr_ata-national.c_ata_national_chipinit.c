
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int setmode; int ch_attach; } ;
typedef int device_t ;


 int ENXIO ;
 int ata_generic_intr ;
 int ata_national_ch_attach ;
 int ata_national_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;

__attribute__((used)) static int
ata_national_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    ctlr->ch_attach = ata_national_ch_attach;
    ctlr->setmode = ata_national_setmode;
    return 0;
}
