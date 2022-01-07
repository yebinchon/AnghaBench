
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int setmode; } ;
typedef int device_t ;


 int ENXIO ;
 int ata_cypress_setmode ;
 int ata_generic_intr ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;

__attribute__((used)) static int
ata_cypress_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    ctlr->setmode = ata_cypress_setmode;
    return 0;
}
