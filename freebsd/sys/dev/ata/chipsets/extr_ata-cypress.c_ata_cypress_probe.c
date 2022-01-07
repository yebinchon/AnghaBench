
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int chipinit; } ;
typedef int device_t ;


 scalar_t__ ATA_CYPRESS_82C693 ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 scalar_t__ PCIS_STORAGE_IDE ;
 int ata_cypress_chipinit ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;
 int pci_get_function (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
ata_cypress_probe(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    if (pci_get_devid(dev) == ATA_CYPRESS_82C693 &&
 pci_get_function(dev) == 1 &&
 pci_get_subclass(dev) == PCIS_STORAGE_IDE) {
 device_set_desc(dev, "Cypress 82C693 ATA controller");
 ctlr->chipinit = ata_cypress_chipinit;
 return (BUS_PROBE_LOW_PRIORITY);
    }
    return ENXIO;
}
