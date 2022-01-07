
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {scalar_t__ channels; } ;
typedef int device_t ;


 struct ata_pci_controller* device_get_softc (int ) ;

__attribute__((used)) static int
ata_marvell_dummy_chipinit(device_t dev)
{
 struct ata_pci_controller *ctlr = device_get_softc(dev);

        ctlr->channels = 0;
        return (0);
}
